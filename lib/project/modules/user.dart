// ignore_for_file: public_member_api_docs, sort_constructors_first
// import 'dart:developer';

// import 'package:firebase_auth/firebase_auth.dart';

// import '../login.dart';

// class MyUser {
//   String? firstName;
//   String? lastName;
//   String email;
//   String password;
//   MyUser({
//     this.firstName,
//     this.lastName,
//     required this.email,
//     required this.password,
//   });

//   Future<void> login() async {
//     try {
//       await golbelAuth.signInWithEmailAndPassword(
//         email: this.email,
//         password: this.password,
//       );
//     } on FirebaseAuthException catch (e) {
//       log('Failed with error code: ${e.code}');
//       log(e.message.toString());
//       rethrow; // rethrow the exception to handle it in the calling method
//     }
//   }
// }
