import 'package:flutter/material.dart';

class costum_Circle extends StatelessWidget {
  final String? text;
  final String? image;
  final Color? color;
  const costum_Circle({
    this.text,
    this.image,
    this.color,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 76,
          height: 76,
          decoration: BoxDecoration(
            color: color,
            shape: BoxShape.circle,
          ),
          child: Center(
            child: (Image.asset(
              image.toString(),
              width: 36,
              color: Colors.white,
            )),
          ),
        ),
        const SizedBox(height: 8),
        Text(
          text.toString(),
          style: const TextStyle(color: Colors.white),
        ),
      ],
    );
  }
}
