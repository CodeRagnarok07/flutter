import 'package:generic_bloc_provider/generic_bloc_provider.dart';
import '../repository.dart';
import '../FirebaseAuth.dart';

class BlocProviderUser extends Bloc {
  final _auth_from_repository = AuthRepository();

  // login with google

  Future signInWithGoogle() {
    return _auth_from_repository.signInWithGoogle();
  }

  @override
  void dispose() {}
}
