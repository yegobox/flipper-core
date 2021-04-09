import 'package:auto_route/annotations.dart';
// import 'package:flipper_chat/screens/welcome/welcome_screen.dart';
import 'package:flipper_login/login_view.dart';
import 'package:flipper_dashboard/flipper_dashboard.dart';

// im
@MaterialAutoRouter(
  replaceInRouteName: 'Page,Route',
  routes: <AutoRoute>[
    AutoRoute(page: LoginView, initial: true),
    // AutoRoute(page: WelcomeScreen, initial: true),
    AutoRoute(page: DashboardView),
  ],
)
class $AppRouter {}

// ./flutterw packages pub run build_runner build --delete-conflicting-outputs
// flutter packages pub run build_runner build --delete-conflicting-outputs
//  firebase deploy --only hosting
// ./flutterw build web
