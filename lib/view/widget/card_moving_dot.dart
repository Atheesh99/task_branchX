import 'package:flutter/material.dart';
import 'package:task/const/colors.dart';
import 'package:task/const/size.dart';

class CardMovingDote extends StatelessWidget {
  const CardMovingDote({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          const CircleAvatar(
            radius: 5,
            backgroundColor: Color.fromARGB(255, 199, 65, 110),
          ),
          kWidth10,
          _movingDot(),
          kWidth10,
          _movingDot(),
          kWidth10,
          _movingDot(),
        ],
      ),
    );
  }

  CircleAvatar _movingDot() {
    return const CircleAvatar(
      radius: 5,
      backgroundColor: kRed,
      child: CircleAvatar(
        radius: 4,
      ),
    );
  }
}
