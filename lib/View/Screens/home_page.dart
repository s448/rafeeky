import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:rafeeky/Core/Constant/image_path.dart';
import 'package:rafeeky/Core/Theme/colors.dart';
import 'package:rafeeky/Core/Theme/style_manager.dart';
import 'package:rafeeky/View/Widgets/carousel.dart';
import 'package:rafeeky/View/Widgets/home_page_card.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(
            height: 15,
          ),
          //carousel banners
          SizedBox(width: Get.width, child: const RafeekiCarousel()),
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
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const SizedBox(
                  width: 5,
                ),
                Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: Image.asset(
                    searchBarIc,
                  ),
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
            height: 12,
          ),
          const Text(
            "اللجوء والقادمين الجدد",
            style: StyleManager.headline,
          ),
          const SizedBox(
            height: 6,
          ),
          GridView.count(
            scrollDirection: Axis.vertical,
            shrinkWrap: true,
            crossAxisCount: 2,
            physics: const NeverScrollableScrollPhysics(),
            childAspectRatio: 1.0,
            padding: const EdgeInsets.all(4.0),
            mainAxisSpacing: 8.0,
            crossAxisSpacing: 8.0,
            children: const [
              HomePageCardItem(
                title: "الواصلين الجدد",
                description:
                    "دليلك الكامل للفنرة الاولى من الوصول اللى المانيا",
                imgPath: illustration1,
                color: ColorManager.sec1,
                isMarked: true,
                markColor: Colors.orange,
                tipText: "قريباً",
                subColor: ColorManager.subSec1,
              ),
              HomePageCardItem(
                title: "موقع المخيمات",
                description:
                    "تعرف على مواقع المخيمات (الكامب) وتفاصيل المخيمات بالكامل!",
                imgPath: illustration2,
                color: ColorManager.sec2,
                isMarked: false,
                subColor: ColorManager.subSec2,
                // markColor: Colors.orange,
                // tipText: "قريباً",
              ),
              HomePageCardItem(
                title: "إجراءات اللجوء",
                description:
                    "الخطوات الأولية للبدء في إجراءات اللجوء والحصول على الإقامة",
                imgPath: illustration3,
                color: ColorManager.sec3,
                isMarked: false,
                subColor: ColorManager.subSec3,
                // markColor: Colors.orange,
                // tipText: "قريباً",
              ),
              HomePageCardItem(
                title: "لمّ الشمل",
                description:
                    "كيف تقوم بإنشاء طلب لم شمل للزوجة والأولاد، التفاصيل كاملة",
                imgPath: illustration4,
                color: ColorManager.sec4,
                isMarked: false,
                subColor: ColorManager.subSec4,
                // markColor: Colors.orange,
                // tipText: "قريباً",
              ),
              HomePageCardItem(
                title: "خدمات الترجمة",
                description:
                    "يمكنك الإستفادة من خدمات المترجمين الموثقين لدينا",
                imgPath: illustration5,
                color: ColorManager.sec5,
                isMarked: false,
                subColor: ColorManager.subSec5,
                // markColor: Colors.orange,
                // tipText: "قريباً",
              ),
              HomePageCardItem(
                title: "خدمات قانونية ومحامين",
                description:
                    "ثُلّة من المحامين المخضرمين الذين تم إختيارهم من قبل",
                imgPath: illustration6,
                color: ColorManager.sec6,
                isMarked: true,
                subColor: ColorManager.subSec6,
                markColor: Colors.redAccent,
                tipText: "جديد",
              ),
            ],
          ),
          const SizedBox(
            height: 12,
          ),
          const Text(
            "كُل ما يخصُّ العرب",
            style: StyleManager.headline,
          ),
          const SizedBox(
            height: 6,
          ),
          GridView.count(
            scrollDirection: Axis.vertical,
            shrinkWrap: true,
            crossAxisCount: 2,
            physics: const NeverScrollableScrollPhysics(),
            childAspectRatio: 1.0,
            padding: const EdgeInsets.all(4.0),
            mainAxisSpacing: 8.0,
            crossAxisSpacing: 8.0,
            children: const [
              HomePageCardItem(
                title: "الأطباء العرب",
                description:
                    "العديد من الأطباء العرب والمتخصصين يمكنك الوصول لهم الآن",
                imgPath: illustration7,
                color: ColorManager.sec7,
                isMarked: false,
                // markColor: Colors.orange,
                // tipText: "قريباً",
                subColor: ColorManager.subSec7,
              ),
              HomePageCardItem(
                title: "المتاجر العربيَة",
                description:
                    "كل ما يخص المتاجر العربية المتواجدة في جميع الولايات",
                imgPath: illustration8,
                color: ColorManager.sec8,
                isMarked: false,
                subColor: ColorManager.subSec8,
                // markColor: Colors.orange,
                // tipText: "قريباً",
              ),
            ],
          ),
          const SizedBox(
            height: 12,
          ),
          const Text(
            "خدمات مُنَوْعة",
            style: StyleManager.headline,
          ),
          const SizedBox(
            height: 6,
          ),
          GridView.count(
            scrollDirection: Axis.vertical,
            shrinkWrap: true,
            crossAxisCount: 2,
            physics: const NeverScrollableScrollPhysics(),
            childAspectRatio: 1.0,
            padding: const EdgeInsets.all(4.0),
            mainAxisSpacing: 8.0,
            crossAxisSpacing: 8.0,
            children: const [
              HomePageCardItem(
                title: "أماكن الخدمات",
                description:
                    "الجوب سنتر، الأوسلندر، البامف، المراكز الحكومية التي تهمك",
                imgPath: illustration9,
                color: ColorManager.sec9,
                isMarked: false,
                // markColor: Colors.orange,
                // tipText: "قريباً",
                subColor: ColorManager.subSec9,
              ),
              HomePageCardItem(
                title: "نصائح لك",
                description:
                    "العديد من النصائح التي تهمك لتسهيل حياتك في المانيا",
                imgPath: illustration10,
                color: ColorManager.sec5,
                isMarked: false,
                subColor: ColorManager.subSec5,
                // markColor: Colors.orange,
                // tipText: "قريباً",
              ),
            ],
          ),
        ],
      ),
    );
  }
}
