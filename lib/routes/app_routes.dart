import 'package:finca_urbana_app/models/menu_option.dart';
import 'package:finca_urbana_app/routes/screens.dart';
import 'package:flutter/material.dart';

class AppRoutes {
  static const initialRoute = "/";
  static final menuOptions = <MenuOptions>[
    MenuOptions(route: 'home', name: 'Finca Urbana - README', screen: const HomeScreen() , icon: Icons.home),
    MenuOptions(route: 'computers', name: 'Computers', screen: const ComputerScreen() , icon: Icons.computer),
    MenuOptions(route: 'monitor', name: 'Monitor', screen: const MonitorScreen() , icon: Icons.monitor),
    MenuOptions(route: 'consumables', name: 'Consumables', screen: const ConsumableScreen() , icon: Icons.battery_charging_full),
    MenuOptions(route: 'phone', name: 'Phone', screen: const PhoneScreen() , icon: Icons.phone),
    MenuOptions(route: 'bastidor', name: 'Bastidor', screen: const BastidorScreen() , icon: Icons.radio_button_checked_sharp),
    MenuOptions(route: 'UPCs', name: 'UPCs', screen: const UpcScreen() , icon: Icons.square),
    MenuOptions(route: 'Global', name: 'Global', screen: const GlobalScreen() , icon: Icons.wifi_tethering_outlined),
    MenuOptions(route: 'Cct', name: 'CCT', screen: const CctScreen() , icon: Icons.camera_alt_outlined),
    MenuOptions(route: 'Alerts', name: 'Alerts', screen: const AlertScreen() , icon: Icons.campaign),

  ];

  // static Map<String, Widget Function(BuildContext)> routes = {
  //   'home': (_) => ListPage(),
  //   'computers': (_) => const ComputerScreen(),
  //   'monitor': (_) => const MonitorScreen(),
  //   'consumables': (_) => const ConsumableScreen(),
  //   'phone': (_) => const PhoneScreen(),
  //   'bastidor': (_) => const BastidorScreen(),
  //   'UPCs': (_) => const UpcScreen(),
  //   'Global': (_) => const GlobalScreen(),
  //   'CCT': (_) => const CctScreen(),
  //   'Alerts': (_) => const AlertScreen(),
  // };

  static Map<String, Widget Function(BuildContext)> getAppRoutes() {

    Map<String, Widget Function(BuildContext)> appRoutes = {};

    for(final option in menuOptions) {
      appRoutes.addAll({ option.route: (_) => option.screen });
    }

    return appRoutes;
  }

  static Route<dynamic> onGenerateRoute(RouteSettings settings) {
    return MaterialPageRoute(builder: (context) => const AlertScreen());
  }
}
