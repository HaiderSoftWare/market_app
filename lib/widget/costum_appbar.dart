import 'package:flutter/material.dart';

class CostumAppbar extends StatelessWidget {
  const CostumAppbar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 28, top: 24, right: 28, bottom: 59),
      child: Row(
        children: [
          Container(
            width: 46,
            height: 46,
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
              gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [
                  Color(0xff0AFF96),
                  Color(0xff00E0FF),
                ],
              ),
            ),
            child: Center(
              child: Stack(
                children: [
                  Container(
                    width: 40,
                    height: 40,
                    decoration: const BoxDecoration(
                      color: Color(0xff0F111E),
                      shape: BoxShape.circle,
                    ),
                  ),
                  Positioned(
                    left: 5,
                    top: 5,
                    child: Image.asset(
                      'asset/user.png',
                      width: 30,
                      height: 30,
                      fit: BoxFit.cover,
                    ),
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(
            width: 12,
          ),
          const Expanded(
            child: Text(
              'Account_1',
              style: TextStyle(color: Colors.white, fontSize: 18),
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
                      style: TextStyle(color: Colors.white, fontSize: 12),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
