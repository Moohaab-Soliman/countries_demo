import 'package:flutter/material.dart';

class EmptyWidget extends StatelessWidget {
  final String image;
  final String text;
  const EmptyWidget({
    super.key,
    required this.text,
    required this.image,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          text,
          textAlign: TextAlign.center,
          style: const TextStyle(
            fontWeight: FontWeight.w400,
            fontFamily: 'SF',
            color: Colors.black,
            fontSize: 18,
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        Image.asset(
          image,
          scale: 10,
        ),
      ],
    );
  }
}
