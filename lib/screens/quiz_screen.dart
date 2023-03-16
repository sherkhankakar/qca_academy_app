import 'package:flutter/material.dart';
import 'package:qca_academy/constants/app_colors.dart';
import 'package:qca_academy/constants/sizes.dart';
import 'package:qca_academy/screens/mdcat_screen.dart';
import 'package:qca_academy/screens/tuition_classes_screen.dart';
import 'package:qca_academy/widgets/text/custom_text.dart';

class QuizScreen extends StatefulWidget {
  const QuizScreen({Key? key}) : super(key: key);

  @override
  State<QuizScreen> createState() => _QuizScreenState();
}

class _QuizScreenState extends State<QuizScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      body: Column(
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
                  text: 'Quiz | Test',
                  fontColor: AppColors.white,
                  fontSize: 28,
                  fontWeight: FontWeight.w600,
                )
              ],
            ),
          ),
          gap(height: 30),
          tiles(
              'assets/images/11.png',
              'MDCAT News',
              const Color.fromRGBO(51, 51, 51, 1),
              const MDCATScreen()),
          gap(height: 20),
          tiles(
              'assets/images/etea.png',
              'ETEA Model Test',
              const Color.fromRGBO(133, 134, 136, 1),
               const TuitionClassesScreen()),
        ],
      ),
    );
  }

  tiles(String img, String button, Color bgcolor, Widget route) {
    return Container(
        height: 170,
        padding: const EdgeInsets.only(right: 10, left: 5),
        margin: const EdgeInsets.symmetric(horizontal: 20),
        width: double.maxFinite,
        decoration: BoxDecoration(
            color: bgcolor,
            borderRadius: BorderRadius.circular(10),
            boxShadow: const [
              BoxShadow(color: Colors.black38, blurRadius: 4, spreadRadius: 2)
            ]),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Image.asset(
              img,
            ),
            SizedBox(
              height: 25,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(builder: (context)=> route));
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
