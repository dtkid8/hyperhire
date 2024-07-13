import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:hyperhire/etc/app_color.dart';
import 'package:hyperhire/etc/app_image.dart';

class HomeProductWidget extends StatelessWidget {
  final String image;
  final String icon;
  final String title;
  final List<String> description;
  final String reviewCount;
  final String rating;
  final List<String> category;
  const HomeProductWidget({
    super.key,
    required this.image,
    required this.icon,
    required this.title,
    this.description = const [],
    required this.reviewCount,
    required this.rating,
    required this.category,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColor.white,
      margin: const EdgeInsets.only(bottom: 16),
      height: 106,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              border: Border.all(color: AppColor.gray),
            ),
            width: 104,
            height: 104,
            child: Stack(
              children: [
                Center(
                  child: Image.asset(
                    image,
                    width: 98,
                    height: 98,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 6, top: 6),
                  child: Image.asset(
                    icon,
                    width: 19,
                    height: 15,
                    fit: BoxFit.fill,
                  ),
                )
              ],
            ),
          ),
          const SizedBox(
            width: 8,
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Expanded(
                  child: Text(
                    title,
                    style: const TextStyle(
                      fontWeight: FontWeight.w700,
                      fontSize: 14,
                    ),
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
                Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children:
                        description.map((e) => _buildDescription(e)).toList(),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 6.0),
                  child: Row(
                    children: [
                      Image.asset(
                        AppImage.iconStar,
                        width: 12,
                        height: 12,
                      ),
                      const SizedBox(
                        width: 2,
                      ),
                      Text(
                        rating,
                        style: const TextStyle(
                            color: AppColor.yellow,
                            fontSize: 10,
                            fontWeight: FontWeight.w700),
                      ),
                      const SizedBox(
                        width: 2,
                      ),
                      Text(
                        "($reviewCount)",
                        style: const TextStyle(
                            color: AppColor.gray2,
                            fontSize: 10,
                            fontWeight: FontWeight.w700),
                      ),
                    ],
                  ),
                ),
                Wrap(
                  alignment: WrapAlignment.start,
                  children: category.map((e) => _buildCategory(e)).toList(),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildCategory(String category) {
    return Container(
      margin: const EdgeInsets.only(right: 4.0),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8), color: AppColor.gray3),
      child: Padding(
        padding: const EdgeInsets.all(6.0),
        child: Text(
          category,
          style: const TextStyle(
              color: AppColor.demiGray,
              fontSize: 11,
              fontWeight: FontWeight.w400),
        ),
      ),
    );
  }

  Widget _buildDescription(String description) {
    return Expanded(
      child: Text(
        "• $description",
        style: const TextStyle(
            fontSize: 12,
            fontWeight: FontWeight.w400,
            overflow: TextOverflow.ellipsis),
      ),
    );
  }
}
