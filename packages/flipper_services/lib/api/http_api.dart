// import 'package:flipper/services/abstractions/api.dart';

import 'package:flipper_models/flipper_login_response.dart';
import 'package:flipper_services/abstractions/api.dart';
import 'package:http/http.dart' as http;
import 'package:injectable/injectable.dart';

import 'package:firebase_auth/firebase_auth.dart';

class ExtendedClient extends http.BaseClient {
  final http.Client _inner;

  // ignore: sort_constructors_first
  ExtendedClient(this._inner);

  @override
  Future<http.StreamedResponse> send(http.BaseRequest request) {
    const String customValue = '';
    // you may want to pickup the value from tshared preferences, like:
    // customValue = await LocalStorage.getStringItem('token');
    request.headers['custom-header-here'] = customValue;
    return _inner.send(request);
  }
}

@lazySingleton
class HttpApi implements Api {
  static const String endPoint = 'https://jsonplaceholder.typicode.com';
  final FirebaseAuth _auth = FirebaseAuth.instance;
  ExtendedClient client = ExtendedClient(http.Client());

  @override
  // ignore: always_specify_types
  Future? payroll() {
    return null;
  }

  @override
  Future<LoginResponse> httpLogin(String number) {
    // TODO: implement login
    throw UnimplementedError();
  }

  @override
  Future<void> firebaseAuth(String number) async {
    try {
      await _auth.verifyPhoneNumber(
          phoneNumber: number,
          codeSent: (String verificationId, int? resendToken) {
            // otpCode = verificationId;
            // TODO: update the login service with otp to be shared in viewmodels+
          },
          timeout: const Duration(seconds: 60),
          verificationCompleted: (AuthCredential phoneAuthCredential) {
            print(phoneAuthCredential.toString() + 'lets make this work');
          },
          verificationFailed: (FirebaseAuthException exceptio) {
            print('${exceptio.message} + something is wrong');
          },
          codeAutoRetrievalTimeout: (String verificationId) {});
    } catch (e) {
      handleError(e);
    }
  }

  handleError(error) async {
    print(error);
    // errorMessage = error.toString();

    switch (error.code) {
      case 'ERROR_INVALID_VERIFICATION_CODE':
        // FocusScope.of(context).requestFocus(FocusNode());
        // errorMessage = 'Invalid Code';
        break;
      default:
        // errorMessage = error.message;
        break;
    }
  }
}
