import 'package:flutter/material.dart';
import 'package:qca_academy/constants/app_colors.dart';
import 'package:qca_academy/constants/app_font.dart';
import 'package:qca_academy/constants/sizes.dart';
import 'package:qca_academy/screens/academy_result_screen.dart';
import 'package:qca_academy/screens/online_class_screen.dart';
import 'package:qca_academy/screens/profile_screen.dart';
import 'package:qca_academy/screens/quiz_screen.dart';
import 'package:qca_academy/widgets/text/custom_text.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      drawer: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width / 1.3,
        decoration: const BoxDecoration(
            borderRadius: BorderRadius.only(
                topRight: Radius.circular(10),
                bottomRight: Radius.circular(10)),
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
            gap(height: 40),
            Padding(
              padding: const EdgeInsets.only(left: 30),
              child: CircleAvatar(
                radius: 60,
                backgroundColor: AppColors.white,
                child: ClipRRect(
                    borderRadius: BorderRadius.circular(80),
                    child:
                        Image.asset('assets/images/profile.jpg', height: 115)),
              ),
            ),
            gap(height: 10),
            Padding(
              padding: const EdgeInsets.only(left: 30),
              child: Row(
                children: [
                  const SizedBox(
                    height: 60,
                    child: VerticalDivider(
                      color: AppColors.white,
                      thickness: 1,
                    ),
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const CustomText(
                        text: 'Sami Khan',
                        fontColor: AppColors.white,
                      ),
                      gap(height: 10),
                      const CustomText(
                        text: 'afaqkhan@gmail.com',
                        fontColor: AppColors.white,
                      ),
                    ],
                  )
                ],
              ),
            ),
            gap(height: 40),
            drawerTiles(
                const Icon(
                  Icons.category_rounded,
                  color: AppColors.white,
                ),
                'Categories'),
            gap(height: 5),
            const Divider(
              thickness: 1,
              color: AppColors.white,
            ),
            gap(height: 15),
            drawerTiles(
                const Icon(
                  Icons.bookmark,
                  color: AppColors.white,
                ),
                'Bookmarks'),
            gap(height: 5),
            const Divider(
              thickness: 1,
              color: AppColors.white,
            ),
            gap(height: 15),
            drawerTiles(
                const Icon(
                  Icons.favorite,
                  color: AppColors.white,
                ),
                'Favorites'),
            gap(height: 5),
            const Divider(
              thickness: 1,
              color: AppColors.white,
            ),
            gap(height: 15),
            drawerTiles(
                const Icon(
                  Icons.rate_review,
                  color: AppColors.white,
                ),
                'Rate App'),
            gap(height: 5),
            const Divider(
              thickness: 1,
              color: AppColors.white,
            ),
            gap(height: 15),
            drawerTiles(
                const Icon(
                  Icons.share,
                  color: AppColors.white,
                ),
                'Share'),
            gap(height: 5),
            const Divider(
              thickness: 1,
              color: AppColors.white,
            ),
            gap(height: 15),
            drawerTiles(
                const Icon(
                  Icons.privacy_tip,
                  color: AppColors.white,
                ),
                'Privacy Policy'),
            gap(height: 5),
            const Divider(
              thickness: 1,
              color: AppColors.white,
            ),
            gap(height: 15),
            Expanded(
                child: drawerTiles(
                    const Icon(
                      Icons.power_settings_new,
                      color: Colors.red,
                    ),
                    'Log out'))
          ],
        ),
      ),
      appBar: AppBar(
        toolbarHeight: kToolbarHeight + 3,
        elevation: 0,
        flexibleSpace: Container(
          decoration: const BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.centerLeft,
                  end: Alignment.centerRight,
                  colors: <Color>[
                Color.fromRGBO(51, 51, 51, 1),
                Color.fromRGBO(133, 134, 136, 1)
              ])),
        ),
        centerTitle: true,
        title: const CustomText(
          text: 'DASHBOARD',
          fontColor: AppColors.white,
        ),
        // leading: GestureDetector(
        //     onTap: () {  },
        //     child: Image.asset('assets/images/menu.png')),
        actions: [
          IconButton(onPressed: () {}, icon: const Icon(Icons.email_rounded))
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 185,
              width: double.maxFinite,
              decoration: const BoxDecoration(
                  gradient: LinearGradient(
                      begin: Alignment.centerLeft,
                      end: Alignment.centerRight,
                      colors: <Color>[
                        Color.fromRGBO(51, 51, 51, 1),
                        Color.fromRGBO(133, 134, 136, 1)
                      ]),
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(20),
                      bottomRight: Radius.circular(20))),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  children: [
                    const Align(
                        alignment: Alignment.bottomLeft,
                        child: CustomText(
                          text: 'Welcome To',
                          fontSize: FontSize.s18,
                          fontColor: AppColors.white,
                        )),
                    gap(height: 5),
                    const Align(
                        alignment: Alignment.bottomLeft,
                        child: CustomText(
                          text: 'QCA Academy',
                          fontSize: FontSize.s22,
                          fontColor: AppColors.white,
                          fontWeight: FontWeight.w600,
                        )),
                    gap(height: 10),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        const ProfileScreen()));
                          },
                          child: CircleAvatar(
                            radius: 60,
                            backgroundColor: AppColors.white,
                            child: ClipRRect(
                                borderRadius: BorderRadius.circular(80),
                                child: Image.asset('assets/images/profile.jpg',
                                    height: 115)),
                          ),
                        ),
                        const SizedBox(
                          height: 60,
                          child: VerticalDivider(
                            color: AppColors.white,
                            thickness: 1,
                          ),
                        ),
                        const CustomText(
                          text: 'Sami Khan',
                          fontColor: AppColors.white,
                        )
                      ],
                    )
                  ],
                ),
              ),
            ),
            gap(height: 20),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: containerTile(
                  'Quiz | Test',
                  '09 Courses',
                  const Color.fromRGBO(51, 51, 51, 1),
                  const QuizScreen(),
                  'assets/images/home.png'),
            ),
            gap(height: 15),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: containerTile(
                  'Online Classes',
                  '09 Courses',
                  const Color.fromRGBO(133, 134, 136, 1),
                  const OnlineClassScreen(),
                  'assets/images/home 2.png'),
            ),
            gap(height: 15),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: containerTile(
                  'Academy Result',
                  '09 Courses',
                  const Color.fromRGBO(51, 51, 51, 1),
                  const AcademyResultScreen(),
                  'assets/images/home 3.png'),
            )
          ],
        ),
      ),
    );
  }

  containerTile(
      String title, String subtitle, Color bgcolor, Widget route, String img) {
    return Container(
      height: 150,
      padding: const EdgeInsets.only(left: 20, right: 5),
      width: double.maxFinite,
      decoration: BoxDecoration(
          color: bgcolor,
          borderRadius: BorderRadius.circular(20),
          boxShadow: const [
            BoxShadow(color: Colors.black38, blurRadius: 4, spreadRadius: 2)
          ]),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              gap(height: 20),
              CustomText(
                text: title,
                fontSize: 22,
                fontColor: AppColors.white,
              ),
              gap(height: 5),
              CustomText(
                  text: subtitle, fontSize: 13, fontColor: AppColors.white),
              gap(height: 35),
              SizedBox(
                height: 30,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => route));
                  },
                  style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20)),
                      backgroundColor: AppColors.white),
                  child: const CustomText(
                    text: 'Start Journey',
                    fontSize: 13,
                    fontColor: AppColors.black,
                  ),
                ),
              )
            ],
          ),
          Transform.translate(
              offset: const Offset(0, 10),
              child: Image.asset(
                img,
                height: 130,
              ))
        ],
      ),
    );
  }

  drawerTiles(Icon icon, String title) {
    return Padding(
      padding: const EdgeInsets.only(left: 30),
      child: Row(
        children: [
          icon,
          gap(width: 30),
          CustomText(
            text: title,
            fontColor: AppColors.white,
            fontWeight: FontWeight.w500,
            fontSize: 18,
          )
        ],
      ),
    );
  }
}
