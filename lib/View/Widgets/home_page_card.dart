import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:rafeeky/Utils/colors.dart';
import 'package:rafeeky/Utils/style_manager.dart';

class HomePageCardItem extends StatelessWidget {
  const HomePageCardItem(
      {super.key,
      required this.title,
      required this.description,
      required this.imgPath,
      required this.color});
  final String title;
  final String description;
  final String imgPath;
  final Color color;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: ColorManager.cardBackground,
          borderRadius: BorderRadius.circular(13)),
      width: Get.width * 0.4,
      height: Get.height * 0.4,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Image.asset(
            imgPath,
            // fit: BoxFit.cover,
            // height: Get.height * 0.1,
          ),
          Text(
            title,
            style: StyleManager.headline,
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
          ),
          Text(
            description,
            style: StyleManager.whiteStyle,
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
          )
        ],
      ),
    );
  }
}
