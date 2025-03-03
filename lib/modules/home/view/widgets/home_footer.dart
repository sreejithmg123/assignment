import 'package:assignment/generated/assets.dart';
import 'package:assignment/utils/color_palette.dart';
import 'package:assignment/utils/extensions.dart';
import 'package:assignment/utils/font_palette.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomeFooter extends StatelessWidget {
  const HomeFooter({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.grey.shade100,
        borderRadius: BorderRadius.circular(8),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Company Name
          Text(
            "LOGO Inc.",
            style: FontPalette.blackBold.copyWith(color: HexColor('#868686')),
          ),
          12.verticalSpace,
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              _buildNavItem("회사 소개"),
              _buildDivider(),
              _buildNavItem("인재 채용"),
              _buildDivider(),
              _buildNavItem("기술 블로그"),
              _buildDivider(),
              _buildNavItem("리뷰 저작권"),
            ],
          ),
          18.verticalSpace,
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Baseline(
                    baseline: 13,
                    baselineType: TextBaseline.alphabetic,
                    child: SvgPicture.asset(Assets.iconsMailLogo),
                  ),
                  2.horizontalSpace,
                  Baseline(
                    baseline: 12,
                    baselineType: TextBaseline.alphabetic,
                    child: Text(
                      "review@logo.com",
                      style: FontPalette.blackRegular.copyWith(
                        fontSize: 13.0,
                        color: HexColor('#868686'),
                      ),
                    ),
                  ),
                ],
              ),
              _buildLanguageDropdown(),
            ],
          ),
          14.verticalSpace,
          Divider(color: Colors.grey.shade300, thickness: 1),
          14.verticalSpace,
          Text(
            "@2022-2022 LOGO Lab, Inc. (주)아무개 서울시 강남구",
            style: FontPalette.blackRegular.copyWith(
              color: HexColor('#868686'),
              fontSize: 10,
            ),
          ),
          24.verticalSpace,
        ],
      ),
    ).convertToSliver();
  }

  Widget _buildNavItem(String text) {
    return Text(
      text,
      style: FontPalette.blackRegular.copyWith(
        fontSize: 13.0,
        color: HexColor('#868686'),
      ),
    );
  }

  Widget _buildDivider() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8),
      child: Text("|", style: TextStyle(color: Colors.grey.shade400)),
    );
  }

  Widget _buildLanguageDropdown() {
    return Container(
      height: 17.0,
      width: 63.w,
      padding: EdgeInsets.symmetric(horizontal: 7.w),
      decoration: BoxDecoration(
        border: Border.all(color: ColorPalette.borderColor),
        borderRadius: BorderRadius.circular(50.r),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Baseline(
            baseline: 9,
            baselineType: TextBaseline.alphabetic,
            child: Text(
              "KOR",
              style: FontPalette.blackRegular.copyWith(
                color: HexColor('#868686'),
                fontSize: 10,
              ),
            ),
          ),
          Baseline(
            baseline: 12,
            baselineType: TextBaseline.alphabetic,
            child: Icon(
              Icons.arrow_drop_down,
              size: 12,
              color: HexColor('#868686'),
            ),
          ),
        ],
      ),
    );
  }
}
