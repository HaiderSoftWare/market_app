import 'package:flutter/material.dart';

class CostumCard extends StatelessWidget {
  final String? image;
  const CostumCard({
    this.image,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 180,
      height: 270,
      decoration: BoxDecoration(
        color: const Color(0xff2A3547),
        borderRadius: BorderRadius.circular(40),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(
            children: [
              Image.asset(
                image.toString(),
                fit: BoxFit.cover,
                width: 180,
              ),
              Positioned(
                right: 12,
                top: 10,
                child: Container(
                  height: 26,
                  width: 46,
                  decoration: BoxDecoration(
                    color: Colors.transparent.withOpacity(0.2),
                    borderRadius: BorderRadius.circular(30),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Icon(Icons.favorite_border_outlined),
                      SizedBox(width: 2),
                      Text('2'),
                    ],
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: 10),
          const Padding(
            padding: EdgeInsets.only(left: 10),
            child: Text(
              'Super Influencers',
              style: TextStyle(color: Colors.white, fontSize: 16),
            ),
          ),
          const SizedBox(height: 6),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Text(
                  '#1267',
                  style: TextStyle(color: Colors.white),
                ),
                SizedBox(width: 44),
                Icon(
                  Icons.radar,
                  color: Colors.white,
                ),
                Text(
                  '6.64',
                  style: TextStyle(color: Colors.white),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
