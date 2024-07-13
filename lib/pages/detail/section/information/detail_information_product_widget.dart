import 'package:flutter/cupertino.dart';

import '../../../../etc/app_color.dart';
import '../../../../etc/app_image.dart';

class DetailInformationProductWidget extends StatelessWidget {
  const DetailInformationProductWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 104,
      child: Row(
        children: [
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              border: Border.all(color: AppColor.gray),
            ),
            width: 104,
            height: 104,
            child: Center(
              child: Image.asset(
                AppImage.detailProduct,
                width: 98,
                height: 98,
              ),
            ),
          ),
          const SizedBox(
            width: 14,
          ),
          Expanded(
            child: Column(
              children: [
                const Row(
                  children: [
                    Expanded(
                      child: Text(
                        "AMD 라이젠 5 5600X 버미어\n정품 멀티팩",
                        style: TextStyle(
                            fontWeight: FontWeight.w700,
                            fontSize: 14,
                            color: AppColor.black),
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    _buildRating(
                      width: 21,
                      height: 21,
                    ),
                    const SizedBox(
                      width: 8,
                    ),
                    const Text(
                      "4.07",
                      style: TextStyle(
                        color: AppColor.black,
                        fontSize: 18,
                        fontWeight: FontWeight.w500,
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildRating({
    required double width,
    required double height,
  }) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.start,
      children: List.generate(
        5,
        (index) {
          Color color = AppColor.yellow;
          if (index == 4) {
            color = AppColor.gray;
          }
          return Image.asset(
            width: width,
            height: height,
            AppImage.iconStar,
            color: color,
            fit: BoxFit.fill,
          );
        },
      ),
    );
  }
}
