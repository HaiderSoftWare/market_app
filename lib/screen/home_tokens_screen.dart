import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../widget/costum_appbar.dart';
import '../widget/costum_circle_center.dart';
import '../widget/costum_list_market.dart';
import 'category_screen.dart';

class HomeTokensScreen extends StatelessWidget {
  const HomeTokensScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: const Color(0xff0F111E),
        body: SafeArea(
          child: Column(
            children: [
              const CostumAppbar(),
              const Text(
                'Current Wallet Balance',
                style: TextStyle(color: Colors.white, fontSize: 18),
              ),
              const SizedBox(height: 9),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    '\$ 5,323.00',
                    style: TextStyle(color: Colors.white, fontSize: 40),
                  ),
                  const SizedBox(width: 9),
                  Image.asset(
                    'asset/triangle.png',
                    color: Colors.grey,
                    width: 10,
                  ),
                ],
              ),
              const SizedBox(height: 8),
              Container(
                width: 170,
                height: 22,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                  color: const Color(0xff2F2F34),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      'BTC : 0,00335',
                      style: TextStyle(color: Colors.white, fontSize: 12),
                    ),
                    const SizedBox(width: 7),
                    Image.asset(
                      'asset/triangle.png',
                      width: 10,
                    ),
                    const SizedBox(width: 4),
                    const Text(
                      '+6.54%',
                      style: TextStyle(color: Color(0xff00FFA3), fontSize: 12),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 35),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  costum_Circle(
                    text: 'Send',
                    image: 'asset/coin.png',
                    color: Color(0xff2A3547),
                  ),
                  SizedBox(width: 32),
                  costum_Circle(
                    text: 'Buy',
                    image: 'asset/plus-button.png',
                    color: Color(0xff0061FF),
                  ),
                  SizedBox(width: 32),
                  costum_Circle(
                    text: 'Receive',
                    image: 'asset/coin.png',
                    color: Color(0xff2A3547),
                  ),
                ],
              ),
              const SizedBox(height: 59),
              InkWell(
                onTap: () {
                  Get.to(const CategoryScreen());
                },
                child: Container(
                  width: 332,
                  height: 50,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                    color: const Color(0xff2F2F34),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 2, top: 4, bottom: 4),
                    child: Row(
                      children: [
                        Container(
                          width: 166,
                          height: 40,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(50),
                            color: const Color(0xff3B3F58),
                          ),
                          child: const Center(
                            child: Text(
                              'Tokens',
                              style:
                                  TextStyle(fontSize: 16, color: Colors.white),
                            ),
                          ),
                        ),
                        const SizedBox(
                          width: 60,
                        ),
                        const Text(
                          'NFTs',
                          style: TextStyle(fontSize: 16, color: Colors.grey),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 40),
              const CostumListmarket(
                title: 'BTC',
                subtitle: 'Bitcoin',
                imageAvatar: 'asset/bitcoin.png',
                imagecenter: 'asset/Line 1.png',
                price: '\$36,590.00',
                number: '+6.21%',
              ),
              const Padding(
                padding:
                    EdgeInsets.only(left: 20, right: 21, top: 17, bottom: 17),
                child: Divider(
                  height: 4,
                  color: Color(0xff212436),
                ),
              ),
              const CostumListmarket(
                title: 'ETH',
                subtitle: 'Ethereum',
                imageAvatar: 'asset/eth2.png',
                imagecenter: 'asset/Line 2.png',
                price: '\$2,590.00',
                number: '+5.21%',
              ),
              const Padding(
                padding:
                    EdgeInsets.only(left: 20, right: 21, top: 17, bottom: 17),
                child: Divider(
                  height: 4,
                  color: Color(0xff212436),
                ),
              ),
              const CostumListmarket(
                title: 'SOL',
                subtitle: 'Solona',
                imageAvatar: 'asset/sol.png',
                imagecenter: 'asset/Line 3.png',
                price: '\$390.00',
                number: '+2.21%',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
