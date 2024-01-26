import 'package:bobo_cantik/presentation/splash_screen/splash_screen.dart';
import 'package:bobo_cantik/presentation/splash_screen/binding/splash_binding.dart';
import 'package:bobo_cantik/presentation/login_screen/login_screen.dart';
import 'package:bobo_cantik/presentation/login_screen/binding/login_binding.dart';
import 'package:bobo_cantik/presentation/beranda_screen/beranda_screen.dart';
import 'package:bobo_cantik/presentation/beranda_screen/binding/beranda_binding.dart';
import 'package:bobo_cantik/presentation/add_room_screen/add_room_screen.dart';
import 'package:bobo_cantik/presentation/add_room_screen/binding/add_room_binding.dart';
import 'package:bobo_cantik/presentation/select_room_screen/select_room_screen.dart';
import 'package:bobo_cantik/presentation/select_room_screen/binding/select_room_binding.dart';
import 'package:bobo_cantik/presentation/checkout_tab_container_screen/checkout_tab_container_screen.dart';
import 'package:bobo_cantik/presentation/checkout_tab_container_screen/binding/checkout_tab_container_binding.dart';
import 'package:bobo_cantik/presentation/app_navigation_screen/app_navigation_screen.dart';
import 'package:bobo_cantik/presentation/app_navigation_screen/binding/app_navigation_binding.dart';
import 'package:get/get.dart';

class AppRoutes {
  static const String splashScreen = '/splash_screen';

  static const String loginScreen = '/login_screen';

  static const String berandaScreen = '/beranda_screen';

  static const String addRoomScreen = '/add_room_screen';

  static const String selectRoomScreen = '/select_room_screen';

  static const String checkoutPage = '/checkout_page';

  static const String checkoutTabContainerScreen =
      '/checkout_tab_container_screen';

  static const String appNavigationScreen = '/app_navigation_screen';

  static const String initialRoute = '/initialRoute';

  static List<GetPage> pages = [
    GetPage(
      name: splashScreen,
      page: () => SplashScreen(),
      bindings: [
        SplashBinding(),
      ],
    ),
    GetPage(
      name: loginScreen,
      page: () => LoginScreen(),
      bindings: [
        LoginBinding(),
      ],
    ),
    GetPage(
      name: berandaScreen,
      page: () => BerandaScreen(),
      bindings: [
        BerandaBinding(),
      ],
    ),
    GetPage(
      name: addRoomScreen,
      page: () => AddRoomScreen(),
      bindings: [
        AddRoomBinding(),
      ],
    ),
    GetPage(
      name: selectRoomScreen,
      page: () => SelectRoomScreen(),
      bindings: [
        SelectRoomBinding(),
      ],
    ),
    GetPage(
      name: checkoutTabContainerScreen,
      page: () => CheckoutTabContainerScreen(),
      bindings: [
        CheckoutTabContainerBinding(),
      ],
    ),
    GetPage(
      name: appNavigationScreen,
      page: () => AppNavigationScreen(),
      bindings: [
        AppNavigationBinding(),
      ],
    ),
    GetPage(
      name: initialRoute,
      page: () => SplashScreen(),
      bindings: [
        SplashBinding(),
      ],
    )
  ];
}
