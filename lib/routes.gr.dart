// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

import 'package:auto_route/auto_route.dart' as _i1;
import 'package:flipper_dashboard/flipper_dashboard.dart' as _i3;
import 'package:flipper_login/login_view.dart' as _i2;

class AppRouter extends _i1.RootStackRouter {
  AppRouter();

  @override
  final Map<String, _i1.PageFactory> pagesMap = {
    LoginView.name: (entry) {
      return _i1.MaterialPageX(
          entry: entry,
          child: const _i2.LoginView(),
          maintainState: true,
          fullscreenDialog: false);
    },
    DashboardView.name: (entry) {
      return _i1.MaterialPageX(
          entry: entry,
          child: _i3.DashboardView(),
          maintainState: true,
          fullscreenDialog: false);
    }
  };

  @override
  List<_i1.RouteConfig> get routes => [
        _i1.RouteConfig(LoginView.name,
            path: '/', fullMatch: false, usesTabsRouter: false),
        _i1.RouteConfig(DashboardView.name,
            path: '/dashboard-view', fullMatch: false, usesTabsRouter: false)
      ];
}

class LoginView extends _i1.PageRouteInfo {
  const LoginView() : super(name, path: '/');

  static const String name = 'LoginView';
}

class DashboardView extends _i1.PageRouteInfo {
  const DashboardView() : super(name, path: '/dashboard-view');

  static const String name = 'DashboardView';
}
