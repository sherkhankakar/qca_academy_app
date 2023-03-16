import 'package:flutter/material.dart';
import 'package:qca_academy/constants/app_colors.dart';
import 'package:qca_academy/constants/sizes.dart';
import 'package:qca_academy/screens/demo_screen.dart';
import 'package:qca_academy/widgets/text/custom_text.dart';

class DemoScreen extends StatefulWidget {
  const DemoScreen({Key? key}) : super(key: key);

  @override
  State<DemoScreen> createState() => _DemoScreenState();
}

class _DemoScreenState extends State<DemoScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 220,
              padding: const EdgeInsets.symmetric(horizontal: 10),
              width: double.maxFinite,
              decoration: const BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage('assets/images/appbar.png'),
                      fit: BoxFit.fill)),
              child: Column(
                children: [
                  gap(height: 30),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Image.asset('assets/images/menu.png'),
                      const CustomText(
                        text: 'Select Category',
                        fontColor: AppColors.white,
                        fontWeight: FontWeight.w300,
                      ),
                      IconButton(
                          onPressed: () {},
                          icon: const Icon(
                            Icons.email_rounded,
                            color: AppColors.white,
                          ))
                    ],
                  ),
                  gap(height: 40),
                  const CustomText(
                    text: 'Demo',
                    fontColor: AppColors.white,
                    fontSize: 28,
                    fontWeight: FontWeight.w600,
                  )
                ],
              ),
            ),
            gap(height: 20),
            tiles(
                'assets/images/1st.png',
                '1st Year',
                const Color.fromRGBO(51, 51, 51, 1),
                MaterialPageRoute(builder: (context) => const DemoScreen())),
            gap(height: 15),
            tiles(
                'assets/images/2nd.png',
                '2nd Year',
                const  Color.fromRGBO(133, 134, 136, 1),
                MaterialPageRoute(builder: (context) => const DemoScreen())),
            gap(height: 15),
            tiles(
                'assets/images/english.png',
                'English',
                const Color.fromRGBO(51, 51, 51, 1),
                MaterialPageRoute(builder: (context) => const DemoScreen())),
          ],
        ),
      ),
    );
  }

  tiles(String bgImage, String button, Color bgColor, Route route) {
    return Container(
        height: 170,
        margin: const EdgeInsets.symmetric(horizontal: 20),
        padding: const EdgeInsets.only(right: 15, left: 10),
        width: double.maxFinite,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: bgColor,
            boxShadow: const [
              BoxShadow(color: Colors.black38, blurRadius: 4, spreadRadius: 2)
            ]),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Image.asset(
              bgImage,
              height: 90,
            ),
            SizedBox(
              height: 20,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(context, route);
                },
                style: ElevatedButton.styleFrom(
                    backgroundColor: AppColors.white,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30))),
                child: CustomText(
                  text: button,
                  fontSize: 14,
                  fontColor: AppColors.black,
                ),
              ),
            ),
          ],
        ));
  }
}
