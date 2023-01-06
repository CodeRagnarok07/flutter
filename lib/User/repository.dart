import 'package:firebase_auth/firebase_auth.dart';
import 'FirebaseAuth.dart';

// este archivo contienen los diferentes metodos para autentificiar
// para pbtener estos metodos de forma mas ordenanda

class AuthRepository {
  final _auth_repository = FirebaseAuthAPI();

  Future<UserCredential> signInWithGoogle() {
    return _auth_repository.signInWithGoogle();
  }
}
