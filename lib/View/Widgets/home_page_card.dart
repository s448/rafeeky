import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:rafeeky/Core/Theme/colors.dart';
import 'package:rafeeky/Core/Theme/style_manager.dart';

class HomePageCardItem extends StatelessWidget {
  const HomePageCardItem({
    super.key,
    required this.title,
    required this.description,
    required this.imgPath,
    required this.color,
    required this.isMarked,
    this.tipText,
    this.markColor,
    required this.subColor,
  });
  final String title;
  final bool isMarked;
  final String? tipText;
  final Color? markColor;
  final String description;
  final String imgPath;
  final Color color;
  final Color subColor;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: ColorManager.cardBackground,
          borderRadius: BorderRadius.circular(13)),
      width: Get.width * 0.4,
      height: Get.height * 0.5,
      child: Stack(
        children: [
          isMarked
              ? Positioned(
                  left: 0,
                  top: 0,
                  child: Container(
                    width: 45,
                    height: 16,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                        color: markColor,
                        borderRadius: const BorderRadius.only(
                            topLeft: Radius.circular(13),
                            bottomRight: Radius.circular(13))),
                    child: Text(
                      tipText!,
                      textAlign: TextAlign.center,
                      style: const TextStyle(
                        fontSize: 8,
                        color: Colors.white,
                        fontFamily: StyleManager.font,
                        fontWeight: FontWeight.w100,
                      ),
                    ),
                  ),
                )
              : const SizedBox(),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 6.0, vertical: 4.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SvgPicture.asset(
                  imgPath,
                  fit: BoxFit.cover,
                  height: Get.height * 0.1,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      title,
                      style: TextStyle(
                          color: color,
                          fontFamily: StyleManager.font,
                          fontSize: 14),
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                    ),
                    Text(
                      description,
                      style: TextStyle(
                        color: subColor,
                        fontFamily: StyleManager.font,
                        fontSize: 9.5,
                        fontWeight: FontWeight.w100,
                      ),
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                    )
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
