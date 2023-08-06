import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';
import 'package:task/const/size.dart';
import 'package:task/const/test_image.dart';
import 'package:task/view/list_container_box.dart';

class ContainerInsideIconBoxShadow extends StatelessWidget {
  const ContainerInsideIconBoxShadow({
    Key? key,
    required this.totalIndex,
  }) : super(key: key);
  final int totalIndex;

  final TextStyle textStyle = const TextStyle(letterSpacing: -.2, fontSize: 12);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Get.to(const ItemOfContainerBox());
      },
      child: GridView.count(
        padding: const EdgeInsets.only(right: 20, left: 20),
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        crossAxisCount: 3,
        crossAxisSpacing: 20,
        mainAxisSpacing: 20,
        childAspectRatio: 12 / 11,
        children: List.generate(totalIndex, (index) {
          return Container(
            height: 90,
            width: 100,
            padding: const EdgeInsets.all(8),
            decoration: BoxDecoration(
              gradient: const LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  Color(0xFFECECEC),
                  Color(0xFFFFFFFF),
                ],
              ),
              borderRadius: BorderRadius.circular(8),
              border: Border.all(
                color: const Color(0xFFF7F7F7),
              ),
              boxShadow: const [
                BoxShadow(
                  spreadRadius: 0,
                  color: Color(0xFFD2D2D2),
                  blurRadius: 40,
                  offset: Offset(10, 10),
                ),
                BoxShadow(
                  spreadRadius: 0,
                  color: Color(0xFFFFFFFF),
                  blurRadius: 20,
                  offset: Offset(-10, -10),
                ),
              ],
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Lottie.asset(
                  lottieImage[index],
                  width: 45,
                  height: 45,
                  fit: BoxFit.cover,
                ),
                kHeight5,
                Text(
                  lottieName[index],
                  style: textStyle,
                ),
              ],
            ),
          );
        }),
      ),
    );
  }
}
