import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:rafeeky/Core/Constant/image_path.dart';
import 'package:rafeeky/Core/Theme/style_manager.dart';
import 'package:rafeeky/View/Screens/favorites_page.dart';
import 'package:rafeeky/View/Screens/home_page.dart';
import 'package:rafeeky/View/Screens/notifications_page.dart';
import 'package:rafeeky/View/Screens/profile_page.dart';
import 'package:rafeeky/View/Screens/settings_page.dart';
import '../../Core/Theme/colors.dart';

class NavBar extends StatefulWidget {
  const NavBar({super.key});

  @override
  _NavBarState createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {
  int _selectedIndex = 2;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'تطبيق رفيقي',
          style: StyleManager.headline,
        ),
        centerTitle: true,
        elevation: 0.0,
        actions: [
          Row(
            children: [
              Container(
                padding: const EdgeInsets.all(6.0),
                width: Get.width * 0.135,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(6),
                    border: Border.all(color: ColorManager.forgroundColor)),
                child: Image.asset("assets/home/search_icon.png"),
              ),
              const SizedBox(
                width: 5,
              ),
              Container(
                padding: const EdgeInsets.all(6.0),
                width: Get.width * 0.135,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(6),
                    border: Border.all(color: ColorManager.forgroundColor)),
                child: Image.asset("assets/home/notifications_icon.png"),
              ),
              const SizedBox(
                width: 5,
              )
            ],
          )
        ],
        leading: Padding(
          padding: const EdgeInsets.only(right: 6.0),
          child: Drawer(
            backgroundColor: ColorManager.backgroundColor,
            child: Container(
              padding: const EdgeInsets.all(6.0),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(6),
                  border: Border.all(color: ColorManager.forgroundColor)),
              child: Image.asset(
                "assets/home/menu_icon.png",
                // height: 22,
              ),
            ),
          ),
        ),
        leadingWidth: Get.width * 0.145,
      ),
      body: pages[_selectedIndex],
      bottomNavigationBar: ClipRRect(
        borderRadius: const BorderRadius.only(
          topRight: Radius.circular(30),
          topLeft: Radius.circular(30),
        ),
        child: BottomNavigationBar(
          backgroundColor: ColorManager.cardBackground,
          selectedItemColor: ColorManager.sec1,
          unselectedItemColor: ColorManager.forgroundColor,
          type: BottomNavigationBarType.fixed,
          items: const <BottomNavigationBarItem>[
            // BottomNavigationBarItem(
            //   icon: Icon(Ionicons.notifications),
            //   label: 'الاشعارات',
            // ),
            // BottomNavigationBarItem(
            //   icon: Icon(Ionicons.person_sharp),
            //   label: 'الملف الشخصي',
            // ),
            // BottomNavigationBarItem(
            //   icon: Icon(Icons.home_outlined),
            //   label: 'الرئيسية',
            // ),
            // BottomNavigationBarItem(
            //   icon: Icon(Ionicons.heart_outline),
            //   label: 'المفضلة',
            // ),
            // BottomNavigationBarItem(
            //   icon: Icon(Ionicons.settings),
            //   label: 'الاعدادات',
            // ),
            BottomNavigationBarItem(
              icon: NavBarItemIcon(imgPath: notificationUnactive),
              label: 'الاشعارات',
              activeIcon: NavBarItemIcon(imgPath: notificationActive),
            ),
            BottomNavigationBarItem(
              icon: NavBarItemIcon(imgPath: profileUnactive),
              label: 'الملف الشخصي',
              activeIcon: NavBarItemIcon(imgPath: profileActive),
            ),
            BottomNavigationBarItem(
              icon: NavBarItemIcon(imgPath: homeUnactive),
              label: 'الرئيسية',
              activeIcon: NavBarItemIcon(imgPath: homeActive),
            ),
            BottomNavigationBarItem(
              icon: NavBarItemIcon(imgPath: favoritesUnactive),
              label: 'المفضلة',
              activeIcon: NavBarItemIcon(imgPath: favoritesActive),
            ),
            BottomNavigationBarItem(
              icon: NavBarItemIcon(imgPath: settingsUnactive),
              label: 'الاعدادات',
              activeIcon: NavBarItemIcon(imgPath: settingsActive),
            ),
          ],
          currentIndex: _selectedIndex,
          onTap: _onItemTapped,
        ),
      ),
    );
  }
}

class NavBarItemIcon extends StatelessWidget {
  const NavBarItemIcon({
    super.key,
    required this.imgPath,
  });
  final String imgPath;
  @override
  Widget build(BuildContext context) {
    return Image.asset(
      imgPath,
      width: 25,
      height: 25,
    );
  }
}

var pages = <Widget>[
  const NotificationsPage(),
  const ProfilePage(),
  const HomePage(),
  const FavoritesPage(),
  const SettingsPage(),
];
