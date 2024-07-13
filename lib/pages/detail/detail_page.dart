import 'package:flutter/material.dart';
import 'package:hyperhire/etc/app_color.dart';
import 'package:hyperhire/etc/app_image.dart';
import 'package:hyperhire/pages/detail/section/information/detail_information_section_widget.dart';
import 'package:hyperhire/pages/detail/section/profile/detail_profile_section_widget.dart';

import '../../model/profile.dart';

class DetailPage extends StatefulWidget {
  final Profile profile;
  const DetailPage({super.key, required this.profile});

  @override
  State<DetailPage> createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.gray3,
      appBar: AppBar(
        leading: IconButton(
            onPressed: () => Navigator.pop(context),
            icon: Image.asset(AppImage.iconArrowBack)),
        title: const Column(
          children: [
            Text(
              "랭킹 1위",
              style: TextStyle(
                color: AppColor.demiGray,
                fontWeight: FontWeight.w400,
                fontSize: 10,
              ),
            ),
            Text(
              "베스트 리뷰어",
              style: TextStyle(
                  color: AppColor.black,
                  fontSize: 16,
                  fontWeight: FontWeight.w500),
            ),
          ],
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            DetailProfileSection(
              image: widget.profile.image,
              name: widget.profile.name,
              isSelected: widget.profile.isSelected,
            ),
            DetailInformationSectionWidget(
              profile: widget.profile,
            ),
            const SizedBox(
              height: 20,
            )
          ],
        ),
      ),
    );
  }
}
