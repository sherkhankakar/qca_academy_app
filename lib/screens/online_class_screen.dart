import 'package:flutter/material.dart';
import 'package:qca_academy/constants/app_colors.dart';
import 'package:qca_academy/constants/sizes.dart';
import 'package:qca_academy/screens/mdcat_screen.dart';
import 'package:qca_academy/screens/tuition_classes_screen.dart';
import 'package:qca_academy/widgets/text/custom_text.dart';

class OnlineClassScreen extends StatefulWidget {
  const OnlineClassScreen({Key? key}) : super(key: key);

  @override
  State<OnlineClassScreen> createState() => _OnlineClassScreenState();
}

class _OnlineClassScreenState extends State<OnlineClassScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 230,
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
                  gap(height: 30),
                  const CustomText(
                    text: 'Online Class',
                    fontColor: AppColors.white,
                    fontSize: 28,
                    fontWeight: FontWeight.w600,
                  )
                ],
              ),
            ),
            gap(height: 40),
            tiles(
              'assets/images/11.png',
              'MDCAT',
              const MDCATScreen(),
              const Color.fromRGBO(51, 51, 51, 1),
            ),
            gap(height: 20),
            tiles(
              'assets/images/22.png',
              'Tuition Classes',
              const TuitionClassesScreen(),
              const Color.fromRGBO(133, 134, 136, 1),
            ),
          ],
        ),
      ),
    );
  }

  tiles(String bgImage, String button, Widget route, Color bgcolor) {
    return Container(
        height: 170,
        padding: const EdgeInsets.only(right: 15,left: 10),
        margin: const EdgeInsets.symmetric(horizontal: 15),
        width: double.maxFinite,
        decoration: BoxDecoration(
          color: bgcolor,
          borderRadius: BorderRadius.circular(20),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Image.asset(bgImage),
            SizedBox(
              height: 25,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context)=> route));
                },
                style: ElevatedButton.styleFrom(
                    backgroundColor: AppColors.white,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30))),
                child: CustomText(
                  text: button,
                  fontColor: AppColors.black,
                ),
              ),
            ),
          ],
        ));
  }
}
