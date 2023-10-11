import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:rafeeky/Core/Theme/colors.dart';
import 'package:rafeeky/Core/Theme/style_manager.dart';
import 'package:rafeeky/View/Widgets/home_page_card.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: Column(
        children: [
          const SizedBox(
            height: 15,
          ),
          SizedBox(
            width: Get.width,
            child: Image.asset(
              "assets/home/banner_home.png",
              width: double.infinity,
              fit: BoxFit.cover,
            ),
          ),
          const SizedBox(
            height: 15,
          ),
          Container(
            width: double.infinity,
            height: 35,
            decoration: BoxDecoration(
                color: Colors.transparent,
                border: Border.all(
                  color: ColorManager.forgroundColor,
                ),
                borderRadius: BorderRadius.circular(6.0)),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Image.asset(
                  "assets/home/search_icon.png",
                ),
                const SizedBox(
                  width: 4,
                ),
                const Text(
                  "عن ماذا تبحث ...",
                  style: StyleManager.whiteStyle,
                )
              ],
            ),
          ),
          const SizedBox(
            height: 5,
          ),
          GridView.count(
            scrollDirection: Axis.vertical,
            shrinkWrap: true,
            crossAxisCount: 2,
            childAspectRatio: 1.0,
            padding: const EdgeInsets.all(4.0),
            mainAxisSpacing: 8.0,
            crossAxisSpacing: 8.0,
            children: const [
              HomePageCardItem(
                title: "الواصلين الجدد",
                description:
                    "دليلك الكامل للفنرة الاولى من الوصول اللى المانيا",
                imgPath: "assets/home/test.png",
                color: ColorManager.sec1,
                isMarked: true,
                markColor: Colors.orange,
                tipText: "قريباً",
              ),
              HomePageCardItem(
                title: "موقع المخيمات",
                description:
                    "تعرف على مواقع المخيمات (الكامب) وتفاصيل المخيمات بالكامل!",
                imgPath: "assets/home/test.png",
                color: ColorManager.sec2,
                isMarked: false,
                // markColor: Colors.orange,
                // tipText: "قريباً",
              ),
              HomePageCardItem(
                title: "إجراءات اللجوء",
                description:
                    "الخطوات الأولية للبدء في إجراءات اللجوء والحصول على الإقامة",
                imgPath: "assets/home/test.png",
                color: ColorManager.sec3,
                isMarked: false,
                // markColor: Colors.orange,
                // tipText: "قريباً",
              ),
              HomePageCardItem(
                title: "لمّ الشمل",
                description:
                    "كيف تقوم بإنشاء طلب لم شمل للزوجة والأولاد، التفاصيل كاملة",
                imgPath: "assets/home/test.png",
                color: ColorManager.sec4,
                isMarked: false,
                // markColor: Colors.orange,
                // tipText: "قريباً",
              )
            ],
          )
        ],
      ),
    );
  }
}
