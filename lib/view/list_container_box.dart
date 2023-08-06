import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:task/const/colors.dart';
import 'package:task/view/widget/container_box_shadow.dart';

const String paddingItemKey = 'paddingViewKey';
const String safeAreaItemKey = 'safeAreaItemKey';
const String scaffoldItemKey = 'scaffoldItemKey';
const String containerItemKey = 'containerItemKey';
const String rowItemKey = 'rowItemKey';
const String imageItemKey = 'imageItemKey';
const String alignItemKey = 'alignItemKey';

class ItemOfContainerBox extends StatelessWidget {
  const ItemOfContainerBox({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      key: const Key(safeAreaItemKey),
      child: Scaffold(
        key: const Key(scaffoldItemKey),
        appBar: PreferredSize(
          preferredSize: const Size.fromHeight(65.0),
          child: Container(
            key: const Key(containerItemKey),
            color: kWhite,
            height: 65,
            child: Padding(
              key: const Key(paddingItemKey),
              padding: const EdgeInsets.only(
                  left: 20, right: 20, top: 15, bottom: 10),
              child: Row(
                key: const Key(rowItemKey),
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Image.asset(
                    key: const Key(imageItemKey),
                    'assets/branchX_logo.jpg',
                    width: 80,
                  ),
                  Align(
                    key: const Key(alignItemKey),
                    alignment: Alignment.centerRight,
                    child: IconButton(
                      onPressed: () {
                        Get.back();
                      },
                      icon: const Icon(
                        Icons.cancel_outlined,
                        size: 32,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
        body: Container(
          // backgroundColor: kBackGround,
          color: kBackGround,
          child: const Padding(
            padding: EdgeInsets.only(top: 20),
            child: ContainerInsideIconBoxShadow(totalIndex: 13),
          ),
        ),
      ),
    );
  }
}
