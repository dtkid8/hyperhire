import 'package:flutter/cupertino.dart';

import '../../../../etc/app_color.dart';
import '../../../../etc/app_image.dart';

class DetailInformationHeaderWidget extends StatelessWidget {
  const DetailInformationHeaderWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 14, left: 16, right: 16),
      child: Column(
        children: [
          Row(
            children: [
              const Text(
                "작성한 리뷰",
                style: TextStyle(
                  color: AppColor.black,
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                ),
              ),
              const SizedBox(
                width: 4,
              ),
              const Text(
                "총 35개",
                style: TextStyle(
                  color: AppColor.gray4,
                  fontSize: 12,
                  fontWeight: FontWeight.w500,
                ),
              ),
              const Spacer(),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(24.0),
                  border: Border.all(color: AppColor.demiGray, width: 1),
                ),
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 7.0, vertical: 3),
                  child: Row(
                    children: [
                      const Text(
                        "최신순",
                        style: TextStyle(
                            fontWeight: FontWeight.w400,
                            fontSize: 12,
                            color: AppColor.demiGray),
                      ),
                      const SizedBox(
                        width: 16,
                      ),
                      Image.asset(
                        AppImage.homeIconArrowDropdownFooter,
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 10,
          ),
        ],
      ),
    );
  }
}
