import 'package:flutter/material.dart';

import 'costum_card.dart';

class CostumListCard extends StatelessWidget {
  const CostumListCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 20,
      child: Padding(
        padding: const EdgeInsets.only(left: 20, right: 20),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  CostumCard(image: 'asset/Rectangle 9.png'),
                  SizedBox(width: 23),
                  CostumCard(image: 'asset/Rectangle 9-2.png'),
                ],
              ),
              const SizedBox(height: 14),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  CostumCard(image: 'asset/Rectangle 9-3.png'),
                  SizedBox(width: 23),
                  CostumCard(image: 'asset/Rectangle 9-4.png'),
                ],
              ),
              const SizedBox(height: 14),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  CostumCard(image: 'asset/Rectangle 9-5.png'),
                  SizedBox(width: 23),
                  CostumCard(image: 'asset/Rectangle 9-6.png'),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
