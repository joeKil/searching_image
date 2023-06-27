import 'package:flutter/material.dart';

import '../search/search.dart';

class RactancgleSeachBox extends StatelessWidget {
  final ValueChanged<String> onSearch;

  const RactancgleSeachBox({required this.onSearch});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 49,
      decoration: ShapeDecoration(
        color: Colors.white,
        shape: RoundedRectangleBorder(
          side: const BorderSide(width: 1, color: Color(0xFF4FB6B2)),
          borderRadius: BorderRadius.circular(10),
        ),
      ),
      child: Stack(
        alignment: Alignment.centerLeft,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Search(onSearch: onSearch),  // Pass the callback to the Search widget
          ),
        ],
      ),
    );
  }
}
