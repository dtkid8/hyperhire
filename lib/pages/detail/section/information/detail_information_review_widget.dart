import 'package:flutter/material.dart';
import 'package:hyperhire/etc/app_color.dart';
import 'package:hyperhire/etc/app_image.dart';

class DetailInformationReviewWidget extends StatelessWidget {
  final bool isLightning;
  final String text;
  final List<String> images;
  const DetailInformationReviewWidget({
    super.key,
    this.isLightning = true,
    required this.text,
    this.images = const [],
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(
          width: 7,
        ),
        isLightning
            ? Image.asset(
                AppImage.iconLightning,
                width: 20,
                height: 20,
                fit: BoxFit.fill,
              )
            : Image.asset(
                AppImage.iconLightning,
                color: AppColor.gray6,
                width: 20,
                height: 20,
                fit: BoxFit.fill,
              ),
        const SizedBox(
          width: 10,
        ),
        Expanded(
          child: Column(
            children: [
              Text(
                text,
                style: const TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 14,
                    color: AppColor.gray4),
              ),
              images.isNotEmpty
                  ? Column(
                      children: [
                        const SizedBox(
                          height: 18,
                        ),
                        Row(
                          children: images
                              .map((e) => Container(
                                margin: const EdgeInsets.only(right: 8.0),
                                    width: 72,
                                    height: 72,
                                    clipBehavior: Clip.antiAlias,
                                    decoration: BoxDecoration(
                                        color: Colors.red,
                                        borderRadius:
                                            BorderRadius.circular(15)),
                                    child: Image.asset(e, fit: BoxFit.cover),
                                  ))
                              .toList(),
                        ),
                      ],
                    )
                  : const SizedBox.shrink()
            ],
          ),
        ),
      ],
    );
  }
}
