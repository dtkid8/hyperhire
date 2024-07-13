import 'package:flutter/material.dart';
import 'package:hyperhire/etc/app_color.dart';
import 'package:hyperhire/pages/detail/detail_page.dart';
import 'package:hyperhire/pages/home/section/profile/home_profile_card_widget.dart';
import '../../../../model/profile.dart';

class HomeProfileSectionWidget extends StatelessWidget {
  final List<Profile> profiles;
  const HomeProfileSectionWidget({super.key, required this.profiles});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.sizeOf(context).width,
      color: AppColor.white,
      child: Padding(
        padding: const EdgeInsets.only(
          left: 16.0,
          right: 16.0,
          bottom: 28.0,
          top: 18.0,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "골드 계급 사용자들이예요",
              style: TextStyle(
                color: AppColor.gray4,
                fontSize: 14,
                fontWeight: FontWeight.w400,
              ),
            ),
            const Text(
              "베스트 리뷰어 🏆 Top10",
              style: TextStyle(
                  color: AppColor.black,
                  fontSize: 18.0,
                  fontWeight: FontWeight.w500),
            ),
            const SizedBox(
              height: 14,
            ),
            SizedBox(
              height: 108,
              child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: profiles
                      .map(
                        (e) => GestureDetector(
                          onTap: () => Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => DetailPage(
                                      profile: e,
                                    )),
                          ),
                          child: HomeProfileCardWidget(
                            image: e.image,
                            name: e.name,
                            isSelected: e.isSelected,
                          ),
                        ),
                      )
                      .toList()),
            )
          ],
        ),
      ),
    );
  }
}
