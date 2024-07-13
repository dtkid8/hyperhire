import 'package:flutter/material.dart';

import '../../../../etc/app_color.dart';
import '../../../../etc/app_image.dart';

class HomeProfileCardWidget extends StatelessWidget {
  final String image;
  final String name;
  final bool isSelected;
  const HomeProfileCardWidget({
    super.key,
    required this.image,
    required this.name,
    this.isSelected = false,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 72,
      height: 106,
      child: Stack(
        children: [
          isSelected ? Image.asset(
            AppImage.homeGoldCrown,
          ) : const SizedBox.shrink(),
          Padding(
            padding: const EdgeInsets.only(top: 14),
            child: Container(
              width: 62,
              decoration: BoxDecoration(
                color: isSelected ? AppColor.yellow : AppColor.white,
                shape: BoxShape.circle,
              ),
              child: Padding(
                padding: const EdgeInsets.all(4.0),
                child: ClipOval(
                  child: Image.asset(
                    image,
                    fit: BoxFit.cover,
                    width: 54,
                    height: 54,
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 8.0),
            child: Align(
              alignment: Alignment.bottomCenter,
              child: Text(
                name,
                style: const TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                  color: AppColor.gray4,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
