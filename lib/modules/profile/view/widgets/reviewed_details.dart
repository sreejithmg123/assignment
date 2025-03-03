import 'package:assignment/utils/color_palette.dart';
import 'package:assignment/utils/extensions.dart';
import 'package:assignment/utils/font_palette.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../generated/assets.dart' show Assets;

class ReviewedDetails extends StatelessWidget {
  const ReviewedDetails({super.key});

  @override
  Widget build(BuildContext context) {
    List<String> titles = [
      '“가격 저렴해요”',
      '“CPU온도 고온”',
      '“서멀작업 가능해요”',
      '“게임 잘 돌아가요”',
    ];

    List<String> reviewedImages = [
      Assets.imagesReviewdImage1,
      Assets.imagesReviewdImage2,
      Assets.imagesReviewdImage1,
    ];
    return Column(
      children: [
        8.verticalSpace,
        Divider(thickness: 1, color: ColorPalette.dividerColor),
        Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              height: 40.r,
              width: 40.r,
              child: Image.asset(Assets.imagesName1),
            ),
            12.horizontalSpace,
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Name01",
                    style: FontPalette.blackMedium.copyWith(
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  Row(
                    children: [
                      ...List.generate(5, (index) {
                        return Icon(
                          index < 4 ? Icons.star : Icons.star_border,
                          color: index < 4 ? Colors.amber : Colors.grey,
                          size: 18,
                        );
                      }),
                      2.horizontalSpace,
                      Text(
                        "2022.12.09",
                        style: FontPalette.blackRegular.copyWith(
                          color: HexColor('#868686'),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            IconButton(
              icon: const Icon(Icons.bookmark_border, color: Colors.grey),
              onPressed: () {},
            ),
          ],
        ),
        16.verticalSpace,
        SizedBox(
          height: 20,
          child: ListView.separated(
            scrollDirection: Axis.horizontal,
            itemBuilder:
                (context, index) => Text(
                  titles[index],
                  style: FontPalette.blackBold.copyWith(
                    color: HexColor('#A0A0A0'),
                  ),
                ),
            separatorBuilder: (context, index) => 20.horizontalSpace,
            itemCount: titles.length,
          ),
        ),
        18.verticalSpace,

        Padding(
          padding: EdgeInsets.symmetric(horizontal: 7.w),
          child: Column(
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SvgPicture.asset(Assets.iconsSplash),
                  10.horizontalSpace,
                  Flexible(
                    child: Text(
                      '멀티 작업도 잘 되고 꽤 괜찮습니다. 저희 회사 고객님들에게도 추천 가능한 제품인 듯 합니다.',
                      style: FontPalette.blackRegular.copyWith(
                        color: HexColor('#616161'),
                      ),
                    ),
                  ),
                ],
              ),
              18.verticalSpace,
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SvgPicture.asset(Assets.iconsSplash),
                  10.horizontalSpace,
                  Flexible(
                    child: Text(
                      '멀티 작업도 잘 되고 꽤 괜찮습니다. 저희 회사 고객님들에게도 추천 가능한 제품인 듯 합니다.',
                      style: FontPalette.blackRegular.copyWith(
                        color: HexColor('#616161'),
                      ),
                    ),
                  ),
                ],
              ),
              18.verticalSpace,
              SizedBox(
                height: context.sw(size: .18),
                child: ListView.separated(
                  scrollDirection: Axis.horizontal,
                  padding: EdgeInsets.only(left: 32.w),
                  itemBuilder:
                      (context, index) => Container(
                        width: context.sw(size: .19),
                        height: context.sw(size: .18),
                        alignment: Alignment.center,
                        child: Image.asset(reviewedImages[index]),
                      ),
                  separatorBuilder: (context, index) => 10.horizontalSpace,
                  itemCount: reviewedImages.length,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
