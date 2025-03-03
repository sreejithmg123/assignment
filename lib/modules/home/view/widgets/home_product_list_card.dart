import 'package:assignment/generated/assets.dart';
import 'package:assignment/modules/home/model/home_model.dart';
import 'package:assignment/utils/color_palette.dart';
import 'package:assignment/utils/constants.dart';
import 'package:assignment/utils/extensions.dart';
import 'package:assignment/utils/font_palette.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomeProductListCard extends StatelessWidget {
  HomeProductListCard({super.key});
  final List<ProductModel> productModelList = [
    ProductModel(
      image: Assets.imagesStand,
      productTitle: 'LG전자 스탠바이미 27ART10AKPL (스탠',
      subTitle:
          '• 화면을 이동할 수 있고 전환도 편리하다는 점이 제일 마음에 들었어요. 배송도 빠르고 친절하게 받을 수 있어서 좋았습니다.',
      ratingCount: '4.89',
      rating: '(216)',
    ),
    ProductModel(
      image: Assets.imagesTv,
      productTitle: 'LG전자  울트라HD 75UP8300KNA (스탠드)',
      subTitle: '• 화면 잘 나오고... 리모컨 기능 좋습니다.',
      ratingCount: '4.36',
      rating: '(136)',
    ),
    ProductModel(
      image: Assets.imagesSmartTv,
      productTitle: '라익미 스마트 DS4001L NETRANGE (스탠드)GX30K WIN10 (SSD 256GB)',
      subTitle: '• 반응속도 및 화질이나 여러면에서도 부족함을  느끼기에는 커녕 이정도에 이 정도 성능이면차고 넘칠만 합니다',
      ratingCount: '3.98',
      rating: '(98)',
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.w),
      child: Column(
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "제일 핫한 리뷰를 만나보세요",
                    style: FontPalette.blackRegular.copyWith(
                      fontSize: 12.0,
                      color: HexColor('#616161'),
                    ),
                  ),
                  4.horizontalSpace,
                  Row(
                    children: [
                      Text(
                        "리뷰 랭킹⭐${Constants.topThree}",
                        style: FontPalette.blackBold.copyWith(fontSize: 18.0),
                      ),
                    ],
                  ),
                ],
              ),
              const Spacer(),
              SvgPicture.asset(Assets.iconsRightArrow),
            ],
          ),
          15.verticalSpace,
          ListView.separated(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemBuilder:
                (context, index) => ProductListCard(
                  productTitle: productModelList[index].productTitle,
                  image: productModelList[index].image,
                  rating: productModelList[index].rating,
                  ratingCount: productModelList[index].ratingCount,
                  subTitle: productModelList[index].subTitle,
                  index: index,
                ),
            separatorBuilder: (context, index) => 16.verticalSpace,
            itemCount: productModelList.length,
          ),
        ],
      ),
    ).convertToSliver();
  }
}

class ProductListCard extends StatelessWidget {
  const ProductListCard({
    super.key,
    required this.image,
    required this.productTitle,
    required this.rating,
    required this.ratingCount,
    required this.subTitle,
    required this.index,
  });
  final String image;
  final String productTitle;
  final String subTitle;
  final String rating;
  final String ratingCount;
  final int index;
  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Stack(
          children: [
            Container(
              height: context.sw(size: .32),
              width: context.sw(size: .32),
              alignment: Alignment.center,
              decoration: BoxDecoration(
                border: Border.all(color: ColorPalette.borderColor, width: 1.w),
                borderRadius: BorderRadius.circular(4.r),
              ),
              child: Padding(
                padding: EdgeInsets.all(12.w),
                child: Image.asset(image),
              ),
            ),
            Positioned(
              top: 6.0,
              left: 6.w,
              child: SvgPicture.asset(
                index + 1 == 1
                    ? Assets.iconsFirstPosition
                    : index + 1 == 2
                    ? Assets.iconsSecondPosition
                    : Assets.iconsThirdPosition,
              ),
            ),
          ],
        ),
        10.horizontalSpace,

        // Product Details
        Flexible(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                productTitle,
                maxLines: 1,
                style: FontPalette.blackBold,
                overflow: TextOverflow.ellipsis,
              ),
              4.verticalSpace,
              Text(
                subTitle,
                maxLines: 1,
                style: FontPalette.blackRegular.copyWith(fontSize: 12.0),
                overflow: TextOverflow.ellipsis,
              ),
              Text(
                subTitle,
                maxLines: 1,
                style: FontPalette.blackRegular.copyWith(fontSize: 12.0),
                overflow: TextOverflow.ellipsis,
              ),
              4.verticalSpace,
              Row(
                children: [
                  const Icon(Icons.star, color: Colors.amber, size: 14),
                  3.horizontalSpace,
                  Text(
                    rating,
                    style: FontPalette.blackBold.copyWith(
                      color: HexColor('#FFD233'),
                      fontSize: 12.0,
                    ),
                  ),
                  2.horizontalSpace,
                  Text(
                    ratingCount,
                    style: FontPalette.blackBold.copyWith(
                      color: HexColor('#C4C4C4'),
                      fontSize: 10.0,
                    ),
                  ),
                ],
              ),
              6.verticalSpace,
              Row(
                children: [
                  _buildTag("LG전자"),
                  const SizedBox(width: 4),
                  _buildTag("편리성"),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }

  Widget _buildTag(String text) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 6.w, vertical: 5.0),
      decoration: BoxDecoration(
        color: HexColor('#F0F0F0'),
        borderRadius: BorderRadius.circular(6.r),
      ),
      child: Text(
        text,
        style: FontPalette.blackRegular.copyWith(
          fontSize: 11.0,
          color: HexColor('#868686'),
        ),
      ),
    );
  }
}
