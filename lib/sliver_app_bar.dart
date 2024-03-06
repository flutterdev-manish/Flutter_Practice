import 'package:flutter/material.dart';

class LargeAppBar extends StatefulWidget {
  const LargeAppBar({super.key});

  @override
  State<LargeAppBar> createState() => _LargeAppBarState();
}

class _LargeAppBarState extends State<LargeAppBar> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurple.shade200,
      body: const CustomScrollView(
      slivers: [
        SliverAppBar(
          pinned: true,
          leading: Icon(Icons.menu),
          title: Text("S L I V E R_A P P_B A R"),
          expandedHeight: 200,
        ),
      ],
    ),
    );
  }
}
