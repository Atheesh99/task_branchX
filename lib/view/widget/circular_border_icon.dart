import 'package:flutter/material.dart';
import 'package:task/const/colors.dart';

class CircularBorderIcon extends StatelessWidget {
  const CircularBorderIcon(
      {super.key, required this.isShownRedCircle, required this.child});
  final bool isShownRedCircle;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 40,
      height: 40,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        border: Border.all(
          color: kBlack,
        ),
      ),
      child: Stack(
        alignment: Alignment.topRight,
        children: [
          Center(
            child: child,
          ),
          isShownRedCircle
              ? const Positioned(
                  top: 0,
                  right: 0,
                  child: CircleAvatar(
                    backgroundColor: kRed,
                    radius: 6.5,
                    child: Center(
                      child: CircleAvatar(
                        backgroundColor: kWhite,
                        radius: 2.5,
                      ),
                    ),
                  ),
                )
              : const SizedBox.shrink(),
        ],
      ),
    );
  }
}
