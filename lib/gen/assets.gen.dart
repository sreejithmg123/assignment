/// GENERATED CODE - DO NOT MODIFY BY HAND
/// *****************************************************
///  FlutterGen
/// *****************************************************

// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: directives_ordering,unnecessary_import,implicit_dynamic_list_literal,deprecated_member_use

import 'package:flutter/widgets.dart';

class $AssetsFontsGen {
  const $AssetsFontsGen();

  /// File path: assets/fonts/NotoSansKR-Black.ttf
  String get notoSansKRBlack => 'assets/fonts/NotoSansKR-Black.ttf';

  /// File path: assets/fonts/NotoSansKR-Bold.ttf
  String get notoSansKRBold => 'assets/fonts/NotoSansKR-Bold.ttf';

  /// File path: assets/fonts/NotoSansKR-ExtraBold.ttf
  String get notoSansKRExtraBold => 'assets/fonts/NotoSansKR-ExtraBold.ttf';

  /// File path: assets/fonts/NotoSansKR-ExtraLight.ttf
  String get notoSansKRExtraLight => 'assets/fonts/NotoSansKR-ExtraLight.ttf';

  /// File path: assets/fonts/NotoSansKR-Light.ttf
  String get notoSansKRLight => 'assets/fonts/NotoSansKR-Light.ttf';

  /// File path: assets/fonts/NotoSansKR-Medium.ttf
  String get notoSansKRMedium => 'assets/fonts/NotoSansKR-Medium.ttf';

  /// File path: assets/fonts/NotoSansKR-Regular.ttf
  String get notoSansKRRegular => 'assets/fonts/NotoSansKR-Regular.ttf';

  /// File path: assets/fonts/NotoSansKR-SemiBold.ttf
  String get notoSansKRSemiBold => 'assets/fonts/NotoSansKR-SemiBold.ttf';

  /// File path: assets/fonts/NotoSansKR-Thin.ttf
  String get notoSansKRThin => 'assets/fonts/NotoSansKR-Thin.ttf';

  /// List of all assets
  List<String> get values => [
    notoSansKRBlack,
    notoSansKRBold,
    notoSansKRExtraBold,
    notoSansKRExtraLight,
    notoSansKRLight,
    notoSansKRMedium,
    notoSansKRRegular,
    notoSansKRSemiBold,
    notoSansKRThin,
  ];
}

class $AssetsIconsGen {
  const $AssetsIconsGen();

  /// File path: assets/icons/home.svg
  String get home => 'assets/icons/home.svg';

  /// File path: assets/icons/search.svg
  String get search => 'assets/icons/search.svg';

  /// List of all assets
  List<String> get values => [home, search];
}

class $AssetsImagesGen {
  const $AssetsImagesGen();

  /// File path: assets/images/home_image1.png
  AssetGenImage get homeImage1Png =>
      const AssetGenImage('assets/images/home_image1.png');

  /// File path: assets/images/home_image1.svg
  String get homeImage1Svg => 'assets/images/home_image1.svg';

  /// File path: assets/images/home_image2.png
  AssetGenImage get homeImage2Png =>
      const AssetGenImage('assets/images/home_image2.png');

  /// File path: assets/images/home_image2.svg
  String get homeImage2Svg => 'assets/images/home_image2.svg';

  /// File path: assets/images/home_image3.png
  AssetGenImage get homeImage3Png =>
      const AssetGenImage('assets/images/home_image3.png');

  /// File path: assets/images/home_image3.svg
  String get homeImage3Svg => 'assets/images/home_image3.svg';

  /// List of all assets
  List<dynamic> get values => [
    homeImage1Png,
    homeImage1Svg,
    homeImage2Png,
    homeImage2Svg,
    homeImage3Png,
    homeImage3Svg,
  ];
}

class Assets {
  const Assets._();

  static const $AssetsFontsGen fonts = $AssetsFontsGen();
  static const $AssetsIconsGen icons = $AssetsIconsGen();
  static const $AssetsImagesGen images = $AssetsImagesGen();
}

class AssetGenImage {
  const AssetGenImage(this._assetName, {this.size, this.flavors = const {}});

  final String _assetName;

  final Size? size;
  final Set<String> flavors;

  Image image({
    Key? key,
    AssetBundle? bundle,
    ImageFrameBuilder? frameBuilder,
    ImageErrorWidgetBuilder? errorBuilder,
    String? semanticLabel,
    bool excludeFromSemantics = false,
    double? scale,
    double? width,
    double? height,
    Color? color,
    Animation<double>? opacity,
    BlendMode? colorBlendMode,
    BoxFit? fit,
    AlignmentGeometry alignment = Alignment.center,
    ImageRepeat repeat = ImageRepeat.noRepeat,
    Rect? centerSlice,
    bool matchTextDirection = false,
    bool gaplessPlayback = true,
    bool isAntiAlias = false,
    String? package,
    FilterQuality filterQuality = FilterQuality.medium,
    int? cacheWidth,
    int? cacheHeight,
  }) {
    return Image.asset(
      _assetName,
      key: key,
      bundle: bundle,
      frameBuilder: frameBuilder,
      errorBuilder: errorBuilder,
      semanticLabel: semanticLabel,
      excludeFromSemantics: excludeFromSemantics,
      scale: scale,
      width: width,
      height: height,
      color: color,
      opacity: opacity,
      colorBlendMode: colorBlendMode,
      fit: fit,
      alignment: alignment,
      repeat: repeat,
      centerSlice: centerSlice,
      matchTextDirection: matchTextDirection,
      gaplessPlayback: gaplessPlayback,
      isAntiAlias: isAntiAlias,
      package: package,
      filterQuality: filterQuality,
      cacheWidth: cacheWidth,
      cacheHeight: cacheHeight,
    );
  }

  ImageProvider provider({AssetBundle? bundle, String? package}) {
    return AssetImage(_assetName, bundle: bundle, package: package);
  }

  String get path => _assetName;

  String get keyName => _assetName;
}
