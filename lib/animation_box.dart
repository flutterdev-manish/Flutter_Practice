import 'package:flutter/material.dart';

class AnimationBox extends StatefulWidget {
  const AnimationBox({super.key});

  @override
  State<AnimationBox> createState() => _AnimationBoxState();
}

class _AnimationBoxState extends State<AnimationBox> {
  bool isChanged = true;

  double boxHeight = 200;
  double boxWidth = 200;
  var color = Colors.deepPurple;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurple.shade200,
      appBar: AppBar(
        title: const Text(
          'Tap Box For Animation',
        ),
      ),
      body: Center(
        child: GestureDetector(
          onTap: () {
            setState(() {
              isChanged = !isChanged;
            });
          },
          child: AnimatedContainer(
            duration: const Duration(seconds: 2),
            curve: Curves.fastOutSlowIn,
            height: isChanged == true ? 100 : 200,
            width: isChanged == true ? 100 : 200,
            decoration: BoxDecoration(
              color: isChanged == true
                  ? Colors.deepPurple
                  : Colors.deepPurple.shade300,
              borderRadius: BorderRadius.circular(50),
            ),
          ),
        ),
      ),
    );
  }
}
