import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:qca_academy/constants/sizes.dart';
import 'package:qca_academy/screens/home_screen.dart';
import 'package:qca_academy/screens/login_screen.dart';
import 'package:qca_academy/widgets/text/custom_text.dart';

import '../constants/app_colors.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: false,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              decoration: const BoxDecoration(
                  image: DecorationImage(
                image: AssetImage('assets/images/bg.png'),
                fit: BoxFit.fill,
              )),
              height: 550,
              width: double.maxFinite,
              child: Column(
                children: [
                  gap(height: 45),
                  Image.asset('assets/images/logo.png'),
                  gap(height: 40),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: textfield(const Icon(Icons.person), 'Name'),
                  ),
                  gap(height: 20),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: textfield(const Icon(Icons.email_rounded), 'Email'),
                  ),
                  gap(height: 20),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: textfield(const Icon(Icons.lock), 'Password'),
                  ),
                  gap(height: 20),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child:
                        textfield(const Icon(Icons.lock), 'Confirm Password'),
                  ),
                  gap(height: 30),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: elevatedButton(
                      'Sign Up',
                      const Color.fromRGBO(3, 169, 244, 1),
                      double.maxFinite,
                      route: MaterialPageRoute(
                          builder: (context) => const HomeScreen()),
                    ),
                  ),
                ],
              ),
            ),
            gap(height: 20),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8),
              child: Row(
                children: [
                  gap(width: 10),
                  const Expanded(
                    child: Divider(
                      color: Colors.black,
                      thickness: 1,
                    ),
                  ),
                  gap(width: 20),
                  const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: CustomText(
                      text: 'or connect with',
                    ),
                  ),
                  gap(width: 20),
                  const Expanded(
                    child: Divider(
                      color: Colors.black,
                      thickness: 1,
                    ),
                  ),
                  gap(width: 10),
                ],
              ),
            ),
            gap(height: 40),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                elevatedButton('Facebook', const Color.fromRGBO(59, 89, 152, 1),
                    MediaQuery.of(context).size.width / 2.5,
                    icon: const Icon(FontAwesomeIcons.facebook)),
                elevatedButton('Twitter', const Color.fromRGBO(3, 169, 244, 1),
                    MediaQuery.of(context).size.width / 2.5,
                    icon: const Icon(FontAwesomeIcons.twitter)),
              ],
            ),
            gap(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const CustomText(
                  text: 'Already have account?',
                ),
                TextButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const LoginScreen()));
                    },
                    child: const CustomText(
                      text: 'Log In',
                      fontColor: AppColors.blue,
                    ))
              ],
            )
          ],
        ),
      ),
    );
  }

  SizedBox textfield(Icon preIcon, String labelName) {
    return SizedBox(
      height: 45,
      child: TextFormField(
        decoration: InputDecoration(
            labelText: labelName,
            labelStyle: const TextStyle(color: Colors.black38),
            prefixIcon: preIcon,
            fillColor: Colors.white,
            border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(30.0),
                borderSide: BorderSide.none),
            floatingLabelBehavior: FloatingLabelBehavior.never,
            filled: true,
            focusColor: Colors.red,
            iconColor: Colors.red),
      ),
    );
  }

  elevatedButton(String name, Color color, double size,
      {Icon? icon, Route? route}) {
    return SizedBox(
      width: size,
      child: ElevatedButton(
        onPressed: () {
          if (route != null) {
            Navigator.of(context).push(route);
          }
        },
        style: ElevatedButton.styleFrom(
            backgroundColor: color,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(40))),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            if (icon != null) icon,
            CustomText(
              text: name,
              fontColor: AppColors.white,
            ),
          ],
        ),
      ),
    );
  }
}
