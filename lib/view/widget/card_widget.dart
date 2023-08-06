import 'package:flutter/material.dart';

class CardWidget extends StatelessWidget {
  CardWidget({
    super.key,
  });

  final List<String> cardImage = [
    'assets/card_1.jpg',
    'assets/card_2.jpg',
    'assets/card_3.jpg',
    'assets/card_4.jpg',
  ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 230,
      child: ListView.builder(
        shrinkWrap: true,
        itemCount: 4,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return Center(
            child: Padding(
              padding: const EdgeInsets.all(15),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(45),
                child: Image.asset(
                  cardImage[index],
                  height: 210,
                  width: 330,
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
