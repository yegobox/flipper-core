import 'package:flipper/locator.dart';
import 'package:flipper_services/abstractions/api.dart';

final Api _apiService = locator<Api>();

abstract class ProxyService {
  static Api get api => _apiService;
}
