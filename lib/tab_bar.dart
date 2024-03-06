import 'package:flutter/material.dart';

class TabBarMenu extends StatefulWidget {
  const TabBarMenu({super.key});

  @override
  State<TabBarMenu> createState() => _TabBarMenuState();
}

class _TabBarMenuState extends State<TabBarMenu> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.deepPurple,
            title: const Center(
              child: Text(
                "A P P  B A R",
                style: TextStyle(color: Colors.white),
              ),
            ),
          ),
          body: Column(
            children: [
              const TabBar(tabs: [
                Tab(
                  icon: Icon(
                    Icons.home,
                    color: Colors.deepPurple,
                  ),
                ),
                Tab(
                  icon: Icon(
                    Icons.person,
                    color: Colors.deepPurple,
                  ),
                ),
                Tab(
                  icon: Icon(
                    Icons.settings,
                    color: Colors.deepPurple,
                  ),
                ),
              ]),
              Expanded(
                child: TabBarView(children: [
                  Container(
                    color: Colors.deepPurple[300],
                    child: const Center(
                      child: Text("TAB1",
                      style: TextStyle(color: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                  Container(
                    color: Colors.deepPurple[300],
                    child: const Center(
                      child: Text("TAB2",
                      style: TextStyle(color: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                  Container(
                    color: Colors.deepPurple[300],
                    child: const Center(
                      child: Text("TAB3",
                      style: TextStyle(color: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                ]),
              ),
            ],
          )),
    );
  }
}
