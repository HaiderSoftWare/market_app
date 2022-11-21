import 'package:flutter/material.dart';
import 'package:market/data/categoryList.dart';

import '../widget/costum_list_card.dart';

class CategoryScreen extends StatelessWidget {
  const CategoryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff0F111E),
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 28, top: 24, right: 28),
              child: Row(
                children: [
                  const Expanded(
                    child: Center(
                      child: Text(
                        'Market',
                        style: TextStyle(color: Colors.white, fontSize: 24),
                      ),
                    ),
                  ),
                  Stack(
                    clipBehavior: Clip.none,
                    children: [
                      const SizedBox(
                        width: 20,
                        height: 30,
                        child: Icon(
                          Icons.notification_add,
                          color: Colors.white,
                          size: 30,
                        ),
                      ),
                      Positioned(
                        left: 11,
                        bottom: 10,
                        child: Container(
                          width: 21,
                          height: 24,
                          decoration: const BoxDecoration(
                            color: Colors.red,
                            shape: BoxShape.circle,
                          ),
                          child: const Center(
                            child: Text(
                              '5',
                              style:
                                  TextStyle(color: Colors.white, fontSize: 12),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(height: 35),
            Expanded(
              flex: 1,
              child: Padding(
                padding: const EdgeInsets.only(left: 20),
                child: ListView.separated(
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      return Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Stack(
                            children: [
                              Container(
                                width: 98,
                                height: 32,
                                decoration: BoxDecoration(
                                  color: const Color(0xff2F2F34),
                                  borderRadius: BorderRadius.circular(50),
                                  gradient: LinearGradient(
                                    begin: Alignment.topCenter,
                                    end: Alignment.bottomCenter,
                                    colors: [
                                      index == 0
                                          ? const Color(0xff0AFF96)
                                          : const Color(0xff2F2F34),
                                      index == 0
                                          ? const Color(0xff00E0FF)
                                          : const Color(0xff2F2F34),
                                    ],
                                  ),
                                ),
                              ),
                              Positioned(
                                left: 5,
                                top: 3,
                                child: Container(
                                  width: 88,
                                  height: 26,
                                  decoration: BoxDecoration(
                                    color: const Color(0xff2F2F34),
                                    borderRadius: BorderRadius.circular(12),
                                  ),
                                  child: Center(
                                    child: Text(
                                      categoryList[index].toString(),
                                      style: const TextStyle(
                                          color: Colors.white, fontSize: 14),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      );
                    },
                    separatorBuilder: (context, index) {
                      return const SizedBox(width: 10);
                    },
                    itemCount: 6),
              ),
            ),
            const SizedBox(height: 35),
            const CostumListCard(),
          ],
        ),
      ),
    );
  }
}
