import 'package:flutter/material.dart';
import 'package:hyperhire/pages/detail/section/information/detail_information_header_widget.dart';
import 'package:hyperhire/pages/detail/section/information/detail_information_product_widget.dart';
import 'package:hyperhire/pages/detail/section/information/detail_information_review_widget.dart';

import '../../../../etc/app_color.dart';
import '../../../../etc/app_image.dart';
import '../../../../model/profile.dart';

class DetailInformationSectionWidget extends StatelessWidget {
  final Profile profile;
  const DetailInformationSectionWidget({super.key, required this.profile});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 14),
      child: Container(
        width: MediaQuery.sizeOf(context).width,
        color: AppColor.white,
        child: Column(
          children: [
            const DetailInformationHeaderWidget(),
            const Divider(
              thickness: 1,
            ),
            const SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 16.0,
              ),
              child: Column(
                children: [
                  const DetailInformationProductWidget(),
                  const SizedBox(
                    height: 8,
                  ),
                  const Divider(
                    thickness: 1,
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  Row(
                    children: [
                      ClipOval(
                        child: Image.asset(
                          profile.image,
                          fit: BoxFit.cover,
                          width: 34,
                          height: 34,
                        ),
                      ),
                      const SizedBox(
                        width: 6,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            profile.name,
                            style: const TextStyle(
                              fontWeight: FontWeight.w500,
                              fontSize: 14,
                              color: AppColor.black,
                            ),
                          ),
                          const SizedBox(
                            height: 2,
                          ),
                          Row(
                            children: [
                              _buildRating(width: 10, height: 10),
                              const SizedBox(
                                width: 2,
                              ),
                              const Text(
                                "2022.12.09",
                                style: TextStyle(
                                  fontWeight: FontWeight.w400,
                                  fontSize: 10,
                                  color: AppColor.demiGray,
                                ),
                              )
                            ],
                          ),
                        ],
                      ),
                      const Spacer(),
                      Image.asset(
                        AppImage.iconSave,
                        fit: BoxFit.fill,
                        width: 14,
                        height: 22,
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 26,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      _buildTextTag("“가격 저렴해요”"),
                      _buildTextTag("“CPU온도 고온”"),
                      _buildTextTag("“서멀작업 가능해요”"),
                      _buildTextTag("“게임 잘 돌아가요”"),
                    ],
                  ),
                  const SizedBox(
                    height: 18,
                  ),
                  const DetailInformationReviewWidget(
                    isLightning: true,
                    text:
                        "멀티 작업도 잘 되고 꽤 괜찮습니다. 저희 회사 고객님들에게도 추천 가능한 제품인 듯 합니다.",
                  ),
                  const SizedBox(
                    height: 18,
                  ),
                  const DetailInformationReviewWidget(
                    isLightning: false,
                    text: "3600에서 바꾸니 체감이 살짝 되네요. 버라이어티한 느낌 까지는 아닙니다.",
                    images: [
                      AppImage.detailProductReview1,
                      AppImage.detailProductReview2,
                      AppImage.detailProductReview3
                    ],
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  const Divider(
                    thickness: 1,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 10.0),
                    child: Row(
                      children: [
                        Image.asset(
                          AppImage.iconMessage,
                          width: 12,
                          height: 12,
                          fit: BoxFit.cover,
                        ),
                        const SizedBox(
                          width: 2,
                        ),
                        const Text(
                          "댓글 달기..",
                          style: TextStyle(
                            color: AppColor.gray4,
                            fontWeight: FontWeight.w400,
                            fontSize: 10,
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildTextTag(String text) {
    return Text(
      text,
      style: const TextStyle(
        fontSize: 10,
        fontWeight: FontWeight.w700,
        color: AppColor.gray5,
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
