import 'package:flutter/material.dart';
import 'package:hyperhire/etc/app_color.dart';
import 'package:hyperhire/pages/home/section/footer/home_footer_section_widget.dart';
import 'package:hyperhire/pages/home/section/product/home_product_section_widget.dart';
import 'package:hyperhire/pages/home/section/search/home_search_section_widget.dart';
import 'package:hyperhire/pages/home/home_text.dart';

import '../../etc/app_image.dart';
import '../../model/profile.dart';
import 'section/carousel/home_carousel_section_widget.dart';
import 'section/profile/home_profile_section_widget.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final List<Profile> _profiles = [
    Profile(
      image: AppImage.homeImageProfile1,
      name: "Name01",
      isSelected: true,
    ),
    Profile(image: AppImage.homeImageProfile2, name: "Name02"),
    Profile(image: AppImage.homeImageProfile3, name: "Name03"),
    Profile(image: AppImage.homeImageProfile4, name: "Name04"),
    Profile(image: AppImage.homeImageProfile5, name: "Name05"),
    Profile(image: AppImage.homeImageProfile6, name: "Name06"),
    Profile(image: AppImage.homeImageProfile7, name: "Name07"),
    Profile(image: AppImage.homeImageProfile8, name: "Name08"),
    Profile(image: AppImage.homeImageProfile9, name: "Name09"),
    Profile(image: AppImage.homeImageProfile10, name: "Name10"),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Container(
          decoration: BoxDecoration(
              color: AppColor.white,
              border: Border.all(color: AppColor.gray),
              borderRadius: const BorderRadius.only(
                  topRight: Radius.circular(12), topLeft: Radius.circular(12)),
              boxShadow: const [
                BoxShadow(color: AppColor.black, blurRadius: 0.2)
              ]),
          child: ClipRRect(
            borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(12.0),
              topRight: Radius.circular(12.0),
            ),
            child: BottomNavigationBar(
              backgroundColor: AppColor.white,
              selectedItemColor: AppColor.black,
              showUnselectedLabels: true,
              unselectedItemColor: AppColor.gray7,
              items: <BottomNavigationBarItem>[
                BottomNavigationBarItem(
                  icon: Image.asset(AppImage.iconHomeMenu),
                  label: "홈",
                ),
                BottomNavigationBarItem(
                  icon: Image.asset(AppImage.iconSearchMenu),
                  label: "카테고리",
                ),
                BottomNavigationBarItem(
                  icon: Image.asset(AppImage.iconGroupMenu),
                  label: "커뮤니티",
                ),
                BottomNavigationBarItem(
                  icon: Image.asset(AppImage.iconProfileMenu),
                  label: "마이페이지",
                ),
              ],
            ),
          )),
      backgroundColor: AppColor.gray3,
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text(
          HomeText.title,
          style: TextStyle(
            color: AppColor.blue,
            fontSize: 24,
            fontWeight: FontWeight.w500,
            fontFamily: "Roboto",
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            const HomeSearchSectionWidget(),
            const HomeCarouselSectionWidget(),
            const HomeProductSectionWidget(),
            const SizedBox(
              height: 14,
            ),
            HomeProfileSectionWidget(
              profiles: _profiles,
            ),
            const HomeFooterSectionWidget(),
          ],
        ),
      ),
    );
  }
}
