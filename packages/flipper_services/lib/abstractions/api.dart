import 'package:flipper_models/flipper_login_response.dart';

abstract class Api {
  // Home screen futures api calls

  // ignore: always_specify_types
  Future? payroll();
  Future<LoginResponse> login();
}
