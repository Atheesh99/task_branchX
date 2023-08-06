import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:task/const/size.dart';
import 'package:task/const/test_image.dart';
import 'package:task/view/list_container_box.dart';

class SecondContainerBoxShadow extends StatelessWidget {
  const SecondContainerBoxShadow({super.key});

  final TextStyle textStyle = const TextStyle(fontSize: 13);

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return InkWell(
      onTap: () {
        Get.to(const ItemOfContainerBox());
      },
      child: GridView.count(
        padding: const EdgeInsets.only(right: 20, left: 20),
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        crossAxisCount: 4,
        crossAxisSpacing: 8,
        mainAxisSpacing: 18,
        childAspectRatio: size.width * 1 / size.height * 2,
        children: List.generate(8, (index) {
          return Column(
            children: [
              Container(
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
                    Image.asset(
                      iconsRedAndBlack[index],
                      width: 35,
                      height: 35,
                      fit: BoxFit.contain,
                    ),
                    kHeight5,
                  ],
                ),
              ),
              kHeight5,
              Text(
                iconName[index],
                style: textStyle,
              ),
            ],
          );
        }),
      ),
    );
  }
}
