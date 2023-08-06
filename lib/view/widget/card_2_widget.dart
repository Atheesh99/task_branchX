import 'package:flutter/material.dart';
import 'package:task/const/colors.dart';
import 'package:task/const/size.dart';

class ApplyCard extends StatelessWidget {
  ApplyCard({
    super.key,
  });

  final TextStyle textStyle1 = const TextStyle(
      fontSize: 16,
      fontWeight: FontWeight.w700,
      color: kWhite,
      wordSpacing: 1,
      letterSpacing: 1);

  final TextStyle textStyle2 = const TextStyle(
      fontSize: 13,
      fontWeight: FontWeight.w400,
      color: kWhite,
      letterSpacing: 1);

  final TextStyle textStyle3 =
      const TextStyle(fontSize: 12, fontWeight: FontWeight.w400, color: kBlack);

  final List<String> text1 = [
    'Introducing\nbranchX Gold',
    'Refer your\nfriend',
    'Get your RAJA RANI\ncombo today!',
    'Suraksha with\nbranchX!',
  ];
  final List<String> text2 = [
    'Buy digital gold,\nJewelry and get gold coins.',
    'Earn Rupee 150/-for every\nsuccessful refer.',
    'Withdraw money from\nanywhere in india.',
    'with your cards, get 1 lakh\nfree insurance policy.'
  ];
  final List<String> text3 = [
    'register now',
    'refer & earn',
    'apply now',
    'activate now',
  ];

  final List<LinearGradient> gradients = [
    LinearGradient(
      colors: [Colors.indigo.shade900, Colors.blue.shade900],
      begin: Alignment.topLeft,
      end: Alignment.bottomRight,
    ),
    LinearGradient(
      colors: [Colors.deepPurple.shade500, Colors.purple.shade200],
      begin: Alignment.topLeft,
      end: Alignment.bottomRight,
    ),
    LinearGradient(
      colors: [Colors.indigo.shade900, Colors.blue.shade900],
      begin: Alignment.topLeft,
      end: Alignment.bottomRight,
    ),
    LinearGradient(
      colors: [Colors.deepPurple.shade500, Colors.purple.shade200],
      begin: Alignment.topLeft,
      end: Alignment.bottomRight,
    ),
  ];
  final List<String> image = [
    'assets/status_2.gif',
    'assets/card_1.1.png',
    'assets/card_1.2.png',
    'assets/card_1.3.png',
  ];
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 230,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 4,
        itemBuilder: (BuildContext context, int index) {
          return Container(
            margin:
                const EdgeInsets.only(left: 20, right: 18, top: 18, bottom: 18),
            width: 365,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              gradient: gradients[index],
            ),
            child: Padding(
              padding: const EdgeInsets.all(20),
              child: Column(
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Flexible(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              text1[index],
                              style: textStyle1,
                              maxLines: 2,
                            ),
                            kHeight8,
                            Text(
                              text2[index],
                              style: textStyle2,
                              maxLines: 2,
                            ),
                          ],
                        ),
                      ),
                      Image.asset(
                        image[index],
                        fit: BoxFit.fill,
                        height: 110,
                        width: 120,
                      )
                    ],
                  ),
                  kHeight8,
                  Container(
                    height: 35,
                    decoration: const BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                        color: kWhite),
                    child: Center(
                      child: Text(
                        text3[index].toUpperCase(),
                        style: textStyle3,
                      ),
                    ),
                  )
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
