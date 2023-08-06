import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:task/const/size.dart';
import 'package:task/view/status.dart';

class StatusBar extends StatelessWidget {
  StatusBar({
    super.key,
  });

  final List<String> statusTitle = [
    '#kaahani',
    '#winner',
    '#bikashbabu',
    '#gold',
    '#updates',
    '#quiz'
  ];

  final List<String> statusImage = [
    'assets/status_1.jpg',
    'assets/status_2.gif',
    'assets/status_3.jpg',
    'assets/status_4.png',
    'assets/status_5.png',
    'assets/status_6.jpg',
  ];

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return SizedBox(
      height: 115,
      child: InkWell(
        onTap: () {
          Get.to(const StatusImage());
        },
        child: ListView.separated(
          padding: EdgeInsets.only(left: 15, top: 13),
          shrinkWrap: true,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            return Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Container(
                  width: size.width * .2,
                  height: 70,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      fit: BoxFit.contain,
                      image: AssetImage(statusImage[index]),
                    ),
                    border: Border.all(color: Colors.blue, width: 2),
                    shape: BoxShape.circle,
                  ),
                ),
                kHeight10,
                Text(statusTitle[index]),
              ],
            );
          },
          separatorBuilder: (context, index) => kWidth8,
          itemCount: 6,
        ),
      ),
    );
  }
}
