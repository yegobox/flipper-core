import 'package:flipper_services/abstractions/api.dart';
import 'package:flipper_services/api/fake_api.dart';
import 'package:flipper_services/api/http_api.dart';
import 'package:injectable/injectable.dart';

enum ApiProvider {
  Fake,
  Rest,
}

@module
abstract class ThirdPartyServicesModule {
  @lazySingleton
  Api get apiService {
    // ignore: prefer_typing_uninitialized_variables
    var apiService;
    const ApiProvider choosenProvider =
        ApiProvider.Fake; // change this to change the proider
    switch (choosenProvider) {
      case ApiProvider.Fake:
        apiService = FakeApi();
        break;
      case ApiProvider.Rest:
        apiService = HttpApi();
        break;
      default:
        apiService = HttpApi();
    }
    return apiService;
  }
}
