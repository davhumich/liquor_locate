import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:liquor_locate/MapView/map_view.dart';
import 'package:liquor_locate/ProfileView/profile_view.dart';
import 'package:persistent_bottom_nav_bar/persistent_tab_view.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Liquor Locate',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: const Color.fromARGB(255, 58, 102, 183)),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Liquor Locate'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final PersistentTabController _controller =
      PersistentTabController(initialIndex: 0);

  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return PersistentTabView(
                  context,
                  hideNavigationBarWhenKeyboardShows: true,
                  controller: _controller,
                  screens: [
                    MapView(),
                    ListView(),
                    ProfileView(),
                  ],
                  items: _navBarsItems(),
                  navBarStyle: NavBarStyle.style1,
                  decoration: NavBarDecoration(
                    border: const Border(
                      top: BorderSide(width: 0.3),
                    ),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        spreadRadius: 4,
                        blurRadius: 6,
                        offset:
                            const Offset(0, 3), // changes position of shadow
                      ),
                    ],
                  ),
                );
  }
}

List<PersistentBottomNavBarItem> _navBarsItems() {
  return [
    PersistentBottomNavBarItem(
      icon: const Icon(CupertinoIcons.map),
      title: ("Map"),
      activeColorPrimary: const Color(0xFF7D6756),
      inactiveColorPrimary: CupertinoColors.systemGrey,
      textStyle: GoogleFonts.ebGaramond(fontSize: 13),
    ),
    PersistentBottomNavBarItem(
      icon: const Icon(CupertinoIcons.list_bullet),
      title: ("List"),
      activeColorPrimary: const Color(0xFF7D6756),
      inactiveColorPrimary: CupertinoColors.systemGrey,
      textStyle: GoogleFonts.ebGaramond(fontSize: 13),
    ),
    PersistentBottomNavBarItem(
      icon: const Icon(CupertinoIcons.profile_circled),
      title: ("Profile"),
      activeColorPrimary: const Color(0xFF7D6756),
      inactiveColorPrimary: CupertinoColors.systemGrey,
      textStyle: GoogleFonts.ebGaramond(fontSize: 13),
    ),
  ];
}
