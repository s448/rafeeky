import 'package:banner_carousel/banner_carousel.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:rafeeky/Core/Constant/image_path.dart';
import 'package:rafeeky/Core/Theme/colors.dart';

class RafeekiCarousel extends StatelessWidget {
  const RafeekiCarousel({super.key});

  @override
  Widget build(BuildContext context) {
    return BannerCarousel.fullScreen(
      banners: listBanners,
      customizedIndicators: const IndicatorModel.animation(
          width: 5, height: 5, spaceBetween: 2, widthAnimation: 15),
      activeColor: Colors.white,
      disableColor: ColorManager.forgroundColor,
      indicatorBottom: false,
    );
  }
}

List<BannerModel> listBanners = [
  BannerModel(imagePath: bannerIc, id: '1', boxFit: BoxFit.fill),
  BannerModel(imagePath: bannerIc, id: '2', boxFit: BoxFit.fill),
  BannerModel(imagePath: bannerIc, id: '3', boxFit: BoxFit.fill),
];
