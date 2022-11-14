import 'package:flutter/material.dart';

class SizeBox extends StatelessWidget {
  const SizeBox({super.key, required this.data});
  final String data;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 60,
      height: 60,
      decoration: const BoxDecoration(
        color: Color(0xFFF5F6FA),
      ),
      child: Center(
        child: Text(
          data,
          style: const TextStyle(
            fontSize: 17,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
    );
  }
}
