import 'dart:async';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:step_progress_indicator/step_progress_indicator.dart';

const String safeAreaStatusKey = 'safeAreaStatusKey';
const String scaffoldStatusKey = 'scaffoldStatusKey';
const String stackItemKey = 'stackItemKey';
const String containerStatusKey = 'containerStatusKey';

class StatusImage extends StatefulWidget {
  const StatusImage({
    super.key,
  });

  @override
  State<StatusImage> createState() => _StatusImageState();
}

class _StatusImageState extends State<StatusImage> {
  int currentStep = 0;
  int totalSteps = 5;

  @override
  void initState() {
    super.initState();
    Timer.periodic(const Duration(seconds: 1), (timer) {
      setState(() {
        currentStep = (currentStep + 1) % totalSteps;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      key: const Key(safeAreaStatusKey),
      child: Scaffold(
        key: const Key(scaffoldStatusKey),

        body: Stack(
          key: const Key(stackItemKey),

          children: [
            Container(
              key: const Key(containerStatusKey),

              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("assets/status.jpg"),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Positioned(
              top: 0,
              left: 0,
              right: 0,
              child: Padding(
                padding: const EdgeInsets.all(15),
                child: StepProgressIndicator(
                  totalSteps: totalSteps,
                  currentStep: currentStep,
                  selectedColor: Colors.blue,
                  unselectedColor: Colors.grey,
                  direction: Axis.horizontal,
                  progressDirection: TextDirection.ltr,
                  fallbackLength: 100.0,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 35, left: 355),
              child: IconButton(
                onPressed: () {
                  Get.back();
                },
                icon: const Icon(
                  Icons.cancel_outlined,
                  size: 30,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
