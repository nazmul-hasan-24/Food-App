

import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';

class Atuhentication{ 
//    static Future<FirebaseApp> initializeFirebase() async {
//     FirebaseApp firebaseApp = await Firebase.initializeApp();

//     // TODO: Add auto login logic

//     return firebaseApp;
//   }
// static Future<User?> signInWithGoogle() async{ 
//     FirebaseAuth firebaseAuth = FirebaseAuth.instance;
//   User? user;

//   GoogleSignIn googleSignIn = GoogleSignIn();
//   GoogleSignInAccount? googleSignInAccount = await googleSignIn.signIn();

//   if(googleSignInAccount != null){
//     GoogleSignInAuthentication googleSignInAuthentication = await googleSignInAccount.authentication;
//     final AuthCredential credential =  GoogleAuthProvider.credential( 
//       idToken: googleSignInAuthentication.accessToken,
//       accessToken: googleSignInAuthentication.accessToken,
      
//     );

//     try{

//    final UserCredential userCredential =
//             await firebaseAuth.signInWithCredential(credential);
//             user = userCredential.user;
//     }on FirebaseAuthException catch(e){
//       if(e.code == 'account-exists-with-different-credential'){
//   print(e.toString());

//      } else if(e.code == 'invalid-credential'){
// print(e.toString());         
//      }
      
//     }
//   }
// return user;
// }

 static Future<FirebaseApp> initializeFirebase() async {
    FirebaseApp firebaseApp = await Firebase.initializeApp();

    // TODO: Add auto login logic

    return firebaseApp;
  }

    static Future<User?> signInWithGoogle() async {
    FirebaseAuth auth = FirebaseAuth.instance;
    User? user;

    final GoogleSignIn googleSignIn = GoogleSignIn();

    final GoogleSignInAccount? googleSignInAccount =
        await googleSignIn.signIn();

    if (googleSignInAccount != null) {
      final GoogleSignInAuthentication googleSignInAuthentication =
          await googleSignInAccount.authentication;

      final AuthCredential credential = GoogleAuthProvider.credential(
        accessToken: googleSignInAuthentication.accessToken,
        idToken: googleSignInAuthentication.idToken,
      );

      try {
        final UserCredential userCredential =
            await auth.signInWithCredential(credential);

        user = userCredential.user;
      } on FirebaseAuthException catch (e) {
        if (e.code == 'account-exists-with-different-credential') {
          // handle the error here
        }
        else if (e.code == 'invalid-credential') {
          // handle the error here
        }
      } catch (e) {
        // handle the error here
      }
    }

    return user;
  }

static Future<void> signOut({required BuildContext context}) async{

  GoogleSignIn googleSignIn = GoogleSignIn();

  try{
  await  googleSignIn.signOut();
   await FirebaseAuth.instance.signOut();
   
  }catch(e){
    print(e.toString());
  }
  
}
}