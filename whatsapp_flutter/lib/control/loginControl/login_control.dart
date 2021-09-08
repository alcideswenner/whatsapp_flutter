import 'package:firebase_auth/firebase_auth.dart';

class LoginControl {
  FirebaseAuth? _auth;

  LoginControl(this._auth);

  Future<String?> logar({String? email, String? senha}) async {
    try {
      _auth!.signInWithEmailAndPassword(email: email!, password: senha!);
      return "Logado!";
    } on FirebaseAuthException catch (e) {
      return e.message;
    }
  }

  User? getUser() {
    try {
      return _auth!.currentUser;
    } on FirebaseAuthException {
      return null;
    }
  }
}
