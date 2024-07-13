import 'package:flutter/material.dart';
import 'package:hyperhire/etc/app_color.dart';
import 'package:hyperhire/etc/app_image.dart';
import 'package:hyperhire/pages/home/home_text.dart';

class HomeSearchSectionWidget extends StatefulWidget {
  const HomeSearchSectionWidget({super.key});

  @override
  State<HomeSearchSectionWidget> createState() =>
      _HomeSearchSectionWidgetState();
}

class _HomeSearchSectionWidgetState extends State<HomeSearchSectionWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColor.white,
      child: Padding(
        padding: const EdgeInsets.symmetric(
          vertical: 32,
          horizontal: 16,
        ),
        child: Container(
          height: 44,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            gradient: const LinearGradient(
              colors: [
                AppColor.greenGradient,
                AppColor.blueGradient,
              ],
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.all(2.0),
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                color: Colors.white,
              ),
              child: TextField(
                decoration: InputDecoration(
                  hintText: HomeText.searchHint,
                  hintStyle: const TextStyle(
                    color: AppColor.demiGray,
                    fontSize: 12,
                  ),
                  contentPadding: const EdgeInsets.only(
                    left: 12,
                    top: 6,
                  ),
                  border: InputBorder.none,
                  suffixIcon: Image.asset(AppImage.homeSearchIcon),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
