import 'package:flutter/material.dart';
import 'package:qca_academy/screens/login_screen.dart';
import 'package:qca_academy/screens/online_class_screen.dart';
import 'package:qca_academy/screens/profile_screen.dart';

import '../screens/home_screen.dart';

class OurRoutes {
  static const String initialRoute = "/";
  static const String home = "/home";
  static const String login = "/login";
  static const String profile = "/profile";
  static const String online = "/online";
}

tabRoutes(navKey, Widget initialRoute) => {
  OurRoutes.initialRoute: (context) => initialRoute,
  OurRoutes.home: (context) => const HomeScreen(),
  OurRoutes.login: (context) => const LoginScreen(),
  OurRoutes.profile: (context) => const ProfileScreen(),
  OurRoutes.online: (context) => const OnlineClassScreen(),

};
