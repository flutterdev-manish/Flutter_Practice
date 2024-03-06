import 'package:flutter/material.dart';
import 'package:hidden_drawer_menu/hidden_drawer_menu.dart';
import 'package:practice_flutter/container.dart';

class HiddenDrawer extends StatefulWidget {
  const HiddenDrawer({super.key});

  @override
  State<HiddenDrawer> createState() => _HiddenDrawerState();
}

class _HiddenDrawerState extends State<HiddenDrawer> {
  List<ScreenHiddenDrawer> _screens = [];
  @override
  void initState() {
    super.initState();
    _screens = [
      ScreenHiddenDrawer(
          ItemHiddenMenu(
              name: "Profile",
              baseStyle: const TextStyle(),
              selectedStyle:
                  const TextStyle(color: Colors.white, fontSize: 18)),
          const ContainerScreen())
    ];
  }

  @override
  Widget build(BuildContext context) {
    return HiddenDrawerMenu(
      backgroundColorMenu: Colors.deepPurple.shade300,
      screens: _screens,
      initPositionSelected: 0,
    );
  }
}
