import 'package:flutter/material.dart';
import 'package:hyperhire/etc/app_color.dart';
import 'package:hyperhire/etc/app_image.dart';

class HomeFooterSectionWidget extends StatelessWidget {
  const HomeFooterSectionWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 20, left: 16, right: 16, bottom: 24),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            "LOGO Inc.",
            style: TextStyle(
                fontWeight: FontWeight.w500,
                fontSize: 14,
                color: AppColor.demiGray),
          ),
          const SizedBox(
            height: 12,
          ),
          SizedBox(
            height: 16,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                _buildText("회사 소개 "),
                _buildDivider(),
                _buildText("인재 채용"),
                _buildDivider(),
                _buildText("기술 블로그"),
                _buildDivider(),
                _buildText("리뷰 저작권"),
              ],
            ),
          ),
          const SizedBox(
            height: 18,
          ),
          Row(
            children: [
              Image.asset(AppImage.homeIconArrowFooter),
              const SizedBox(
                width: 2,
              ),
              _buildText("review@logo.com"),
              const Spacer(),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(24.0),
                  border: Border.all(color: AppColor.demiGray, width: 1),
                ),
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 6.0, vertical: 2),
                  child: Row(
                    children: [
                      _buildText(
                        "KOR",
                        fontSize: 10,
                      ),
                      const SizedBox(
                        width: 24,
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
          const Divider(
            thickness: 1,
            height: 28,
          ),
          _buildText("@2022-2022 LOGO Lab, Inc. (주)아무개  서울시 강남구", fontSize: 10),
        ],
      ),
    );
  }

  Widget _buildText(
    String text, {
    double fontSize = 13,
  }) {
    return Text(
      text,
      style: TextStyle(
        fontWeight: FontWeight.w400,
        fontSize: fontSize,
        color: AppColor.demiGray,
      ),
    );
  }

  Widget _buildDivider() {
    return const VerticalDivider(
      thickness: 1,
    );
  }
}
