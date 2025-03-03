import 'package:assignment/modules/home/view/widgets/home_footer.dart';
import 'package:assignment/modules/home/view/widgets/home_image_slider.dart';
import 'package:assignment/modules/home/view/widgets/home_name_slider.dart';
import 'package:assignment/modules/home/view/widgets/home_product_list_card.dart';
import 'package:assignment/modules/home/view/widgets/home_search_field.dart';
import 'package:assignment/utils/color_palette.dart';
import 'package:assignment/utils/constants.dart';
import 'package:assignment/utils/extensions.dart';
import 'package:assignment/utils/font_palette.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.w),
          child: Text(
            Constants.logo,
            style: FontPalette.blackBold.copyWith(
              fontSize: 24,
              fontWeight: FontWeight.w600,
              color: HexColor('#5D5FEF'),
            ),
          ),
        ),
        bottom: PreferredSize(
          preferredSize: Size.fromHeight(2.0), // Thickness of underline
          child: Container(
            color: HexColor('#D7D7D7'), // Underline color
            height: 1.0, // Underline height
          ),
        ),
      ),
      body: CustomScrollView(
        physics: const ClampingScrollPhysics(),
        slivers: [
          24.verticalSpace.convertToSliver(),
          const HomeSearchField(),
          26.verticalSpace.convertToSliver(),
          const HomeImageSlider(),
          28.verticalSpace.convertToSliver(),
          HomeProductListCard(),
          28.verticalSpace.convertToSliver(),
          Container(
            color: ColorPalette.borderColor,
            height: 14.0,
          ).convertToSliver(),
          28.verticalSpace.convertToSliver(),
          const HomeNameSlider(),
          32.verticalSpace.convertToSliver(),
          const HomeFooter(),
        ],
      ),
    );
  }
}
