import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:qca_academy/constants/sizes.dart';
import 'package:qca_academy/widgets/text/custom_text.dart';
import '../constants/app_colors.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            SizedBox(
                // color: Colors.black,
                height: 270,
                child: Stack(
                  children: [
                    ClipPath(
                      clipper: CustomClipperPath(),
                      child: Container(
                        height: 220.0,
                        decoration: const BoxDecoration(
                          gradient: LinearGradient(
                              begin: Alignment.centerLeft,
                              end: Alignment.centerRight,
                              colors: <Color>[
                                Color.fromRGBO(133, 134, 136, 1),
                                Color.fromRGBO(51, 51, 51, 1),
                              ]),
                        ),
                      ),
                    ),
                    Align(
                      alignment: Alignment.bottomCenter,
                      child: CircleAvatar(
                        radius: 60,
                        backgroundColor: AppColors.white,
                        child: ClipRRect(
                            borderRadius: BorderRadius.circular(80),
                            child: Image.asset('assets/images/profile.jpg',
                                height: 115)),
                      ),
                    )
                  ],
                )),
            gap(height: 30),
            rowTiles(
                const Icon(
                  Icons.person,
                  color: AppColors.black60,
                  size: 28,
                ),
                'Sami Khan'),
            const Divider(
              color: AppColors.black90,
            ),
            gap(height: 10),
            rowTiles(
                const Icon(
                  Icons.calendar_month,
                  color: AppColors.black60,
                  size: 28,
                ),
                'Birthday'),
            gap(height: 5),
            const Divider(
              color: AppColors.black90,
            ),
            gap(height: 10),
            rowTiles(
                const Icon(
                  Icons.phone,
                  color: AppColors.black60,
                  size: 28,
                ),
                '0308-9322769'),
            gap(height: 5),
            const Divider(
              color: AppColors.black90,
            ),
            gap(height: 10),
            rowTiles(
                const Icon(
                  FontAwesomeIcons.instagram,
                  color: AppColors.black60,
                  size: 28,
                ),
                'Instagram account'),
            gap(height: 5),
            const Divider(
              color: AppColors.black90,
            ),
            gap(height: 10),
            rowTiles(
                const Icon(
                  Icons.email,
                  color: AppColors.black60,
                  size: 28,
                ),
                'info@aplusdesign.com'),
            gap(height: 5),
            const Divider(
              color: AppColors.black90,
            ),
            gap(height: 10),
            rowTiles(
                const Icon(
                  Icons.lock,
                  color: AppColors.black60,
                  size: 28,
                ),
                'Password'),
            gap(height: 5),
            const Divider(
              color: AppColors.black90,
            ),
            gap(height: 40),
            SizedBox(
              width: MediaQuery.of(context).size.width / 2,
              child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30)),
                      backgroundColor: const Color.fromRGBO(3, 169, 244, 1)),
                  child: const CustomText(
                    text: 'Edit Profile',
                    fontColor: AppColors.white,
                  )),
            )
          ],
        ),
      ),
    );
  }

  rowTiles(Icon icon, String title) {
    return Padding(
      padding: const EdgeInsets.only(left: 30),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          icon,
          gap(width: 40),
          CustomText(
            text: title,
            fontColor: AppColors.black60,
            fontSize: 18,
          ),
        ],
      ),
    );
  }
}

class CustomClipperPath extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path();
    path.lineTo(0.0, size.height - 100.0);
    path.quadraticBezierTo(
        size.width / 4, size.height, size.width / 2, size.height);
    path.quadraticBezierTo(size.width - (size.width / 4), size.height,
        size.width, size.height - 100.0);
    path.lineTo(size.width, 0.0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}
