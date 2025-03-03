import 'package:assignment/generated/assets.dart';
import 'package:assignment/utils/color_palette.dart';
import 'package:assignment/utils/extensions.dart';
import 'package:assignment/utils/font_palette.dart';
import 'package:assignment/utils/route_generator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomeNameSlider extends StatelessWidget {
  const HomeNameSlider({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.w),
          child: Text(
            '골드 계급 사용자들이예요',
            style: FontPalette.blackRegular.copyWith(
              color: HexColor('#616161'),
              fontSize: 12.0,
            ),
          ),
        ),
        4.verticalSpace,
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.w),
          child: Text(
            '베스트 리뷰어 🏆 Top10',
            style: FontPalette.blackMedium.copyWith(fontSize: 18.0),
          ),
        ),
        14.verticalSpace,
        SizedBox(
          height: context.sw(size: .28),
          child: ListView.separated(
            scrollDirection: Axis.horizontal,
            padding: EdgeInsets.symmetric(horizontal: 16.w),
            shrinkWrap: true,
            itemBuilder: (context, index) => SliderCard(index: index),
            separatorBuilder: (context, index) => 18.horizontalSpace,
            itemCount: 10,
          ),
        ),
      ],
    ).convertToSliver();
  }
}

class SliderCard extends StatelessWidget {
  const SliderCard({super.key, required this.index});
  final int index;
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        InkWell(
          onTap:
              () => Navigator.pushNamed(
                context,
                RouteGenerator.routeProfileScreen,
              ),
          child: SizedBox(
            height: context.sw(size: .28),
            width: context.sw(size: .2),
            child: Column(
              children: [
                Container(
                  height: context.sw(size: .18),
                  width: context.sw(size: .18),
                  margin: EdgeInsets.only(top: 10.0),
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border:
                        index == 0
                            ? Border.all(color: HexColor('#FFD233'), width: 4.w)
                            : null,
                  ),
                  child: Image.asset(Assets.imagesName1),
                ),
                5.verticalSpace,
                Text(
                  'Name ${index + 1}',
                  style: TextStyle(color: HexColor('#616161')),
                ),
              ],
            ),
          ),
        ).removeSplash(),
        if (index == 0)
          Positioned(
            top: 0,
            left: 0,
            child: SvgPicture.asset(Assets.iconsFirstPosition),
          ),
      ],
    );
  }
}
