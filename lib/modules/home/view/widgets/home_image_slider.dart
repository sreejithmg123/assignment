import 'package:assignment/generated/assets.dart';
import 'package:assignment/utils/color_palette.dart';
import 'package:assignment/utils/extensions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class HomeImageSlider extends StatefulWidget {
  const HomeImageSlider({super.key});

  @override
  State<HomeImageSlider> createState() => _HomeImageSliderState();
}

class _HomeImageSliderState extends State<HomeImageSlider> {
  late final PageController controller;
  int page = 0;
  late int nextPage;

  List<String> images = [
    Assets.imagesHomeImage1,
    Assets.imagesHomeImage2,
    Assets.imagesHomeImage3,
  ];

  void _animateSlider() {
    Future.delayed(const Duration(milliseconds: 300)).then((_) {
      if (controller.hasClients && mounted) {
        nextPage = page + 1;
        Future.delayed(const Duration(seconds: 3)).then((value) {
          if (controller.hasClients && mounted) {
            controller
                .animateToPage(
                  nextPage,
                  duration: const Duration(milliseconds: 300),
                  curve: Curves.linear,
                )
                .then((_) => _animateSlider());
          }
        });
      }
    });
  }

  @override
  void initState() {
    controller = PageController();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      _listenController();
      _animateSlider();
    });
    super.initState();
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  void _listenController() {
    controller.addListener(() {
      page = controller.page!.round();
      nextPage = page + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Column(
        children: [
          Container(
            height: context.sw(size: 0.57),
            width: double.maxFinite,
            alignment: Alignment.center,
            child: Stack(
              children: [
                PageView.builder(
                  controller: controller,
                  itemBuilder: (context, index) {
                    int currentIndex = index % images.length;
                    return Image.asset(
                      images[currentIndex],
                      fit: BoxFit.cover, // Adjust this as needed
                    );
                  },
                ).animatedSwitch(duration: 500, curvesIn: Curves.easeIn),
                Align(
                  alignment: Alignment.bottomCenter,
                  child: Padding(
                    padding: EdgeInsets.only(bottom: 10.h),
                    child: SmoothPageIndicator(
                      controller: controller,
                      count: (images.length),
                      effect: CustomizableEffect(
                        activeDotDecoration: DotDecoration(
                          width: 9.w,
                          height: 4.0,
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(20),
                        ),
                        dotDecoration: DotDecoration(
                          width: 4.r,
                          height: 4.r,
                          color: HexColor('#FFFFFF80').withAlpha(70),
                          borderRadius: BorderRadius.circular(20.r),
                        ),
                        activeColorOverride: (index) => Colors.white,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
