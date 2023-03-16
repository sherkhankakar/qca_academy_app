import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:qca_academy/constants/sizes.dart';
import 'package:qca_academy/screens/home_screen.dart';
import 'package:qca_academy/screens/sign_up_screen.dart';
import 'package:qca_academy/widgets/text/custom_text.dart';

import '../constants/app_colors.dart';
import 'opt_screen.dart';

class ForgotPassword extends StatefulWidget {
  const ForgotPassword({Key? key}) : super(key: key);

  @override
  State<ForgotPassword> createState() => _ForgotPasswordState();
}

class _ForgotPasswordState extends State<ForgotPassword> {
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
                  gap(height: 30),
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20),
                    child: Align(
                        alignment: Alignment.topLeft,
                        child: CustomText(
                          text: 'Forgot Password',
                          fontSize: 18,
                          fontColor: AppColors.white,
                        )),
                  ),
                  gap(height: 10),
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20),
                    child: Align(
                        alignment: Alignment.topLeft,
                        child: CustomText(
                          text: 'Enter your email to get the password',
                          fontSize: 12,
                          fontColor: AppColors.white,
                        )),
                  ),
                  gap(height: 30),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: textfield(const Icon(Icons.email_rounded), 'Email'),
                  ),
                  gap(height: 40),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: elevatedButton(
                      'Send Code',
                      const Color.fromRGBO(3, 169, 244, 1),
                      double.maxFinite,
                      route: MaterialPageRoute(
                          builder: (context) => const OtpScreen()),
                    ),
                  ),
                  gap(height: 30),
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
                  text: 'Don\'t have account?',
                ),
                TextButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const SignUpScreen()));
                    },
                    child: const CustomText(
                      text: 'Sign Up',
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
