import 'package:assignment/utils/color_palette.dart' show HexColor;
import 'package:assignment/utils/extensions.dart';
import 'package:assignment/utils/font_palette.dart' show FontPalette;
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../generated/assets.dart' show Assets;

class ProfileWidget extends StatelessWidget {
  const ProfileWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Center(
          child: Container(
            height: context.sw(size: .34),
            width: context.sw(size: .34),
            decoration: BoxDecoration(shape: BoxShape.circle),
            child: Image.asset(Assets.imagesName1),
          ),
        ),
        12.verticalSpace,
        Text(
          'Name 01',
          style: FontPalette.blackBold.copyWith(
            fontWeight: FontWeight.w600,
            fontSize: 20,
          ),
        ),
        5.verticalSpace,
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SvgPicture.asset(Assets.iconsCrown),
            3.horizontalSpace,
            Text(
              '노랑',
              style: FontPalette.blackMedium.copyWith(
                color: HexColor('#FFD233'),
              ),
            ),
          ],
        ),
        18.verticalSpace,
        Container(
          height: 36.0,
          margin: EdgeInsets.symmetric(horizontal: 46.w),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(6.r),
            color: HexColor('#F0F0F0'),
          ),
          alignment: Alignment.center,
          child: FittedBox(
            child: Text(
              '조립컴 업체를 운영하며 리뷰를 작성합니다.',
              style: FontPalette.blackRegular.copyWith(
                color: HexColor('#868686'),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
