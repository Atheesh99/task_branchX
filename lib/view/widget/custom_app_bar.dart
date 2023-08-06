import 'package:flutter/material.dart';
import 'package:task/const/colors.dart';
import 'package:task/const/size.dart';
import 'package:task/view/widget/circular_border_icon.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: kWhite,
      height: 65,
      child: Padding(
        padding: const EdgeInsets.only(top: 10, left: 18),
        child: Row(
          children: [
            // kWidth10,
            CircularBorderIcon(
              isShownRedCircle: false,
              child: _menuIcon(),
            ),
            kWidth15,
            Padding(
              padding: const EdgeInsets.only(bottom: 5),
              child: Image.asset(
                'assets/branchX_logo.jpg',
                width: 90,
              ),
            ),
            const Spacer(),
            const CircularBorderIcon(
              isShownRedCircle: true,
              child: Icon(
                Icons.notifications,
                size: 30,
              ),
            ),
            kWidth15,
            const CircularBorderIcon(
              isShownRedCircle: false,
              child: CircleAvatar(
                radius: 16,
                backgroundColor: Color.fromARGB(255, 199, 65, 110),
                child: Icon(
                  Icons.power_settings_new_rounded,
                  color: Colors.white,
                ),
              ),
            ),
            kWidth15,
          ],
        ),
      ),
    );
  }

  Container _menuIcon() {
    return Container(
      padding: const EdgeInsets.all(8),
      child: Column(
        children: [
          Expanded(
            child: Align(
              alignment: Alignment.centerLeft,
              child: Container(
                width: 40,
                height: 4,
                decoration: BoxDecoration(
                  color: Colors.black,
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
            ),
          ),
          Expanded(
            child: Align(
              alignment: Alignment.centerLeft,
              child: Container(
                width: 40,
                height: 4,
                decoration: BoxDecoration(
                  color: Colors.black,
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
