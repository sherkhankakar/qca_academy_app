import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:qca_academy/screens/login_screen.dart';

void main() => runApp(
      DevicePreview(
        enabled: false,
        builder: (context) => const MyApp(),
      ),
    );

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        useInheritedMediaQuery: false,
        locale: DevicePreview.locale(context),
        builder: DevicePreview.appBuilder,
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: const LoginScreen());
  }
}
