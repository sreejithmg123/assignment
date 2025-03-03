import 'package:assignment/modules/profile/view/widgets/profile_widget.dart';
import 'package:assignment/modules/profile/view/widgets/reviewed_details.dart';
import 'package:assignment/modules/profile/view/widgets/reviewed_product_card.dart';
import 'package:assignment/utils/color_palette.dart';
import 'package:assignment/utils/font_palette.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../generated/assets.dart' show Assets;

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0, // Removes shadow
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () => Navigator.pop(context),
        ),
        centerTitle: true,
        title: Column(
          children: [
            Text(
              "랭킹 1위",
              style: FontPalette.blackRegular.copyWith(
                color: HexColor('#868686'),
                fontSize: 10,
              ),
            ),
            2.verticalSpace,
            Text(
              "베스트 리뷰어",
              style: FontPalette.blackMedium.copyWith(
                fontSize: 16,
                fontWeight: FontWeight.w600,
              ),
            ),
          ],
        ),
        bottom: PreferredSize(
          preferredSize: Size.fromHeight(2.0), // Thickness of underline
          child: Container(
            color: HexColor('#D7D7D7'), // Underline color
            height: 1.0, // Underline height
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            24.verticalSpace,
            ProfileWidget(),
            28.verticalSpace,
            Divider(thickness: 14.0, color: ColorPalette.dividerColor),
            13.verticalSpace,
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.w),
              child: Row(
                children: [
                  Text(
                    '작성한 리뷰',
                    style: FontPalette.blackMedium.copyWith(fontSize: 16.0),
                  ),
                  4.horizontalSpace,
                  Text(
                    '총 35개',
                    style: FontPalette.blackRegular.copyWith(
                      fontSize: 12.0,
                      color: HexColor('#616161'),
                    ),
                  ),
                  const Spacer(),
                  _buildLanguageDropdown(),
                ],
              ),
            ),
            10.verticalSpace,
            Divider(color: ColorPalette.dividerColor, thickness: 1),
            20.verticalSpace,
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.w),
              child: Column(
                children: [
                  const ReviewedProductCard(),
                  const ReviewedDetails(),
                ],
              ),
            ),
            15.verticalSpace,
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.w),
              child: Divider(color: ColorPalette.dividerColor, thickness: 1.0),
            ),
            11.verticalSpace,
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.w),
              child: Row(
                children: [
                  SvgPicture.asset(Assets.iconsChat),
                  2.horizontalSpace,
                  Text(
                    '댓글 달기..',
                    style: FontPalette.blackRegular.copyWith(
                      fontSize: 10,
                      color: HexColor('#616161'),
                    ),
                  ),
                ],
              ),
            ),
            20.verticalSpace,
          ],
        ),
      ),
    );
  }

  Widget _buildLanguageDropdown() {
    return Container(
      height: 23.0,
      width: 69.w,
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
              "최신순",
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
