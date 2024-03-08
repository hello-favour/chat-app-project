import 'package:firebase_auth/firebase_auth.dart';

class AuthMethod {
  final FirebaseAuth _auth = FirebaseAuth.instance;

  getCurrentUser() async{
    return await _auth.currentUser;
  }
}
