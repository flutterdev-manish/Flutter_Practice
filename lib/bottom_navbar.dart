import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({super.key});

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Container(
        color: Colors.deepPurple,
        child: const Padding(
          padding: EdgeInsets.symmetric(vertical:6.0,
          horizontal: 6.0),
          child: GNav(
            gap: 6,
            padding: EdgeInsets.all(16),
            backgroundColor: Colors.deepPurple,
            color: Colors.grey,
            activeColor: Colors.white,
            tabBackgroundColor: Colors.black38 ,
            tabBorderRadius: 20,
            tabs: [
            GButton(icon: Icons.home,
            text: "Home",),
            GButton(icon: Icons.favorite_outline_outlined,
            text: "Favorites",),
            GButton(icon: Icons.search,
            text: "Search",),
            GButton(icon: Icons.settings,
            text: "Settings",)
          ],
            
          ),
        ),
      ),
      backgroundColor: Colors.deepPurple[300],
      appBar: AppBar(
        title: const Center(child: Text("BOTTOM NAV BAR")),
        
      ),
      
    );
  }
}
