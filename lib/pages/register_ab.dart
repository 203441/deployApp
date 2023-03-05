import 'package:flutter/material.dart';

class NvBar extends StatelessWidget {
  final String title;

  const NvBar({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return AppBar(
     backgroundColor: const Color(0xFF47197C),
      leading: IconButton(
        icon: const Icon(Icons.arrow_back),
        color: const Color(0xFFD83A6F),
        onPressed: () => Navigator.pop(context),
      ),
      actions: [
        IconButton(
          icon: const Icon(Icons.menu),
          color: const Color(0xFFD83A6F),
          onPressed: () {},
        ),
      ],
      title: Text(
        title,
        style: const TextStyle(
          color: Color(0xFFD83A6F),
          fontSize: 20,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
