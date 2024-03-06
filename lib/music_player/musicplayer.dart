import 'package:flutter/material.dart';

class NeuBox extends StatelessWidget {
  final child;
  const NeuBox({Key? key, required this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(8),
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.secondary,
        borderRadius: BorderRadius.circular(50),
        boxShadow: [
          BoxShadow(
            color: Theme.of(context).colorScheme.secondary,
            blurRadius: 15,
            spreadRadius: -10,
            offset: const Offset(5, 5),
          ),

          // lighter shadow on the top left
          BoxShadow(
            color: Theme.of(context).colorScheme.secondary,
            blurRadius: 15,
            spreadRadius: -10,
            offset: Offset(-5, -5),
          ),
        ],
      ),
      child: Center(child: child),
    );
  }
}
class Thumbnail extends StatelessWidget {
  final child;
  const Thumbnail({Key? key, required this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(8),
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.secondary,
        borderRadius: BorderRadius.circular(12),
        boxShadow: [
          BoxShadow(
            color: Theme.of(context).colorScheme.secondary,
            blurRadius: 15,
            spreadRadius: -10,
            offset: const Offset(5, 5),
          ),
          // lighter shadow on the top left
          BoxShadow(
            color: Theme.of(context).colorScheme.secondary,
            blurRadius: 15,
            spreadRadius: -10,
            offset: Offset(-5, -5),
          ),
        ],
      ),
      child: Center(child: child),
    );
  }
}

