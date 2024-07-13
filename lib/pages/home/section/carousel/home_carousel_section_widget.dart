import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:hyperhire/etc/app_color.dart';
import 'package:hyperhire/etc/app_image.dart';

class HomeCarouselSectionWidget extends StatefulWidget {
  const HomeCarouselSectionWidget({super.key});

  @override
  State<HomeCarouselSectionWidget> createState() =>
      _HomeCarouselSectionWidgetState();
}

class _HomeCarouselSectionWidgetState extends State<HomeCarouselSectionWidget> {
  final PageController _pageController =
      PageController(initialPage: 0, viewportFraction: 1);
  int _activePage = 0;
  final List<String> _images = [
    AppImage.homeCarouselImage1,
    AppImage.homeCarouselImage2,
    AppImage.homeCarouselImage3,
    AppImage.homeCarouselImage4,
  ];

  @override
  void initState() {
    super.initState();
    Timer.periodic(const Duration(seconds: 1), (timer) {
      if (_activePage < _images.length - 1) {
        setState(() {
          _activePage = _activePage + 1;
        });
      } else {
        setState(() {
          _activePage = 0;
        });
      }
      _pageController.animateToPage(_activePage,
          duration: const Duration(milliseconds: 500), curve: Curves.easeInOut);
    });
  }

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.sizeOf(context).width;
    return SizedBox(
      width: width,
      height: 220,
      child: Stack(
        children: [
          PageView.builder(
            itemCount: _images.length,
            pageSnapping: true,
            controller: _pageController,
            onPageChanged: (page) {
              setState(() {
                _activePage = page;
              });
            },
            itemBuilder: (context, pagePosition) {
              return SizedBox(
                width: width,
                child: Image.asset(
                  _images[pagePosition],
                  fit: BoxFit.fitWidth,
                ),
              );
            },
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Padding(
              padding: EdgeInsets.only(left: width / 2.5, bottom: 12),
              child: _buildIndicator(),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildIndicator() {
    int counter = -1;
    return Row(
      children: _images.map(
        (e) {
          counter++;
          return _activePage == counter
              ? Container(
                  margin: const EdgeInsets.only(right: 8.0),
                  width: 16,
                  height: 8,
                  decoration: BoxDecoration(
                    color: AppColor.white,
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                )
              : Container(
                  margin: const EdgeInsets.only(right: 8.0),
                  width: 8,
                  height: 8,
                  decoration: BoxDecoration(
                    color: AppColor.white.withOpacity(0.5),
                    shape: BoxShape.circle,
                  ),
                );
        },
      ).toList(),
    );
  }
}
