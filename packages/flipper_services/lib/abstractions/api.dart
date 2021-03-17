import 'package:flipper_models/flipper_login_response.dart';

abstract class Api {
  Future<LoginResponse> webDesktopLogin({String number});
  Future<void> firebaseAuth(String number);
}
