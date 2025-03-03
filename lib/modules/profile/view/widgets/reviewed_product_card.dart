import 'package:assignment/utils/color_palette.dart';
import 'package:assignment/utils/extensions.dart';
import 'package:assignment/utils/font_palette.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../generated/assets.dart' show Assets;

class ReviewedProductCard extends StatelessWidget {
  const ReviewedProductCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Column(
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  height: context.sw(size: .28),
                  width: context.sw(size: .28),
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(6.r),
                    border: Border.all(color: HexColor('#CECECE')),
                  ),
                  child: Image.asset(Assets.imagesRyzen),
                ),
                12.horizontalSpace,
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("AMD 라이젠 5 5600X 버미어", style: FontPalette.blackBold),
                      4.verticalSpace,
                      Text("정품 멀티팩", style: FontPalette.blackMedium),
                      const SizedBox(height: 8),
                      Row(
                        children: [
                          ...List.generate(5, (index) {
                            return Icon(
                              index < 4 ? Icons.star : Icons.star_border,
                              color: index < 4 ? Colors.amber : Colors.grey,
                              size: 20,
                            );
                          }),
                          const SizedBox(width: 6),
                          const Text(
                            "4.07",
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ],
    );
  }
}
