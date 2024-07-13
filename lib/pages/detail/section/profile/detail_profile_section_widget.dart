import 'package:flutter/material.dart';
import 'package:hyperhire/etc/app_color.dart';
import 'package:hyperhire/etc/app_image.dart';

class DetailProfileSection extends StatelessWidget {
  final String image;
  final String name;
  final bool isSelected;
  const DetailProfileSection({
    super.key,
    required this.image,
    required this.name,
    this.isSelected = false,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.sizeOf(context).width,
      color: AppColor.white,
      child: Padding(
        padding: const EdgeInsets.only(top: 24),
        child: Column(
          children: [
            ClipOval(
              child: Image.asset(
                image,
                fit: BoxFit.cover,
                width: 120,
                height: 120,
              ),
            ),
            const SizedBox(
              height: 12,
            ),
            Text(
              name,
              style: const TextStyle(
                fontWeight: FontWeight.w500,
                fontSize: 20,
              ),
            ),
            isSelected
                ? Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(
                        AppImage.iconGoldCrownProfile,
                        width: 19,
                        height: 15,
                      ),
                      const SizedBox(
                        width: 3,
                      ),
                      const Text(
                        "노랑",
                        style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 14,
                            color: AppColor.yellow),
                      )
                    ],
                  )
                : const SizedBox(
                    height: 15,
                  ),
            const SizedBox(
              height: 18,
            ),
            Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  color: AppColor.gray3),
              child: const Padding(
                padding: EdgeInsets.symmetric(vertical: 8.0,horizontal: 12.0),
                child: Text(
                  "조립컴 업체를 운영하며 리뷰를 작성합니다.",
                  style: TextStyle(
                      color: AppColor.demiGray,
                      fontSize: 14,
                      fontWeight: FontWeight.w400),
                ),
              ),
            ),
            const SizedBox(
              height: 28,
            ),
          ],
        ),
      ),
    );
  }
}
