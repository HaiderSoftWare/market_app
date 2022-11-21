import 'package:flutter/material.dart';

class CostumListmarket extends StatelessWidget {
  final String? imageAvatar;

  final String? title;

  final String? subtitle;

  final String? imagecenter;

  final String? price;

  final String? number;

  const CostumListmarket(
      {super.key,
      this.imageAvatar,
      this.title,
      this.subtitle,
      this.imagecenter,
      this.price,
      this.number});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 22),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          CircleAvatar(
            radius: 30,
            backgroundImage: AssetImage(imageAvatar.toString()),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 13),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  '$title',
                  style: const TextStyle(fontSize: 16, color: Colors.white),
                ),
                Text(
                  '$subtitle',
                  style: const TextStyle(fontSize: 14, color: Colors.grey),
                ),
              ],
            ),
          ),
          const SizedBox(width: 36),
          Expanded(
            child: Image.asset(
              '$imagecenter',
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20, right: 22),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text(
                  '$price',
                  style: const TextStyle(fontSize: 16, color: Colors.white),
                ),
                Text(
                  '$number',
                  style:
                      const TextStyle(fontSize: 16, color: Color(0xff0AFF96)),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
