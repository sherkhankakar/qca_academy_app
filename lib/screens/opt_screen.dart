import 'package:flutter/material.dart';
import 'package:pinput/pinput.dart';
import 'package:qca_academy/constants/app_colors.dart';
import 'package:qca_academy/constants/sizes.dart';
import 'package:qca_academy/widgets/text/custom_text.dart';

class OtpScreen extends StatefulWidget {
  const OtpScreen({Key? key}) : super(key: key);

  @override
  State<OtpScreen> createState() => _OtpScreenState();
}

class _OtpScreenState extends State<OtpScreen> {
  final controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final defaultPinTheme = PinTheme(
      width: 60,
      height: 60,
      textStyle: const TextStyle(
          fontSize: 20,
          color: Color.fromRGBO(30, 60, 87, 1),
          fontWeight: FontWeight.bold),
      decoration: BoxDecoration(
        border: Border.all(color: AppColors.black.withOpacity(0.2), width: 2),
        borderRadius: BorderRadius.circular(5),
      ),
    );

    final focusedPinTheme = defaultPinTheme.copyDecorationWith(
      border: Border.all(color: AppColors.black, width: 2),
      borderRadius: BorderRadius.circular(4),
    );

    final submittedPinTheme = defaultPinTheme.copyWith(
      decoration: defaultPinTheme.decoration?.copyWith(
        color: Colors.transparent,
      ),
    );

    return Scaffold(
      backgroundColor: AppColors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 250,
              width: MediaQuery.of(context).size.width,
              decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(8),
                      bottomRight: Radius.circular(8)),
                  gradient: LinearGradient(
                      begin: Alignment.centerLeft,
                      end: Alignment.centerRight,
                      colors: <Color>[
                        Color.fromRGBO(51, 51, 51, 1),
                        Color.fromRGBO(133, 134, 136, 1)
                      ])),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  gap(height: 30),
                  IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.keyboard_backspace_outlined,
                        size: 40,
                        color: AppColors.white,
                      )),
                  gap(height: 30),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Icon(
                        Icons.check_circle,
                        color: AppColors.yellow,
                        size: 30,
                      ),
                      gap(width: 20),
                      const CustomText(
                        text: 'Verification Code',
                        fontSize: 24,
                        fontColor: AppColors.white,
                        fontWeight: FontWeight.w600,
                      )
                    ],
                  ),
                  gap(height: 40),
                  const Center(
                      child: CustomText(
                          text:
                              'Enter your verification code that we send\nyou through your e-mail or phone number',
                          fontSize: 14,
                          fontColor: AppColors.white))
                ],
              ),
            ),
            gap(height: 120),
            Pinput(
              separator: const SizedBox(
                width: 20,
              ),
              controller: controller,
              defaultPinTheme: defaultPinTheme,
              focusedPinTheme: focusedPinTheme,
              submittedPinTheme: submittedPinTheme,
              pinputAutovalidateMode: PinputAutovalidateMode.onSubmit,
              showCursor: true,
              onCompleted: (pin) => print(pin),
            ),
            gap(height: 220),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Icon(
                  Icons.timelapse_rounded,
                  color: AppColors.grey,
                  size: 30,
                ),
                gap(width: 15),
                const CustomText(
                  text: '05:00',
                  fontColor: AppColors.grey,
                )
              ],
            ),
            gap(height: 40),
            SizedBox(
              width: MediaQuery.of(context).size.width / 1.2,
              child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30)),
                      backgroundColor: const Color.fromRGBO(22, 122, 216, 1)),
                  child: const CustomText(
                    text: 'Submit',
                    fontColor: AppColors.white,
                    fontWeight: FontWeight.w600,
                    fontSize: 20,
                  )),
            )
          ],
        ),
      ),
    );
  }
}
