import 'package:flutter/material.dart';
import 'package:task/const/colors.dart';
import 'package:task/const/size.dart';
import 'package:task/view/widget/card_2_widget.dart';
import 'package:task/view/widget/card_moving_dot.dart';
import 'package:task/view/widget/card_widget.dart';
import 'package:task/view/widget/container_box_shadow.dart';
import 'package:task/view/widget/custom_app_bar.dart';
import 'package:task/view/widget/second_container_box_shadow.dart';
import 'package:task/view/widget/status_bar.dart';

const String listViewKey = 'listViewKey';
const String safeAreaKey = 'safeAreaKey';
const String scaffoldKey = 'scaffoldKey';
const String containerKey = 'containerKey';
const String _horizontalListLabel = 'horizontalList';
const String _horizontalScrollListProduct = 'horizontalScrollListProduct';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  final TextStyle textStyle1 = const TextStyle(
      fontWeight: FontWeight.w400, fontSize: 15, letterSpacing: -.3);

  final TextStyle textStyle2 = const TextStyle(
      fontWeight: FontWeight.w700, fontSize: 17, letterSpacing: 1);

  @override
  Widget build(BuildContext context) {
    // final Size size = MediaQuery.of(context).size;
    return SafeArea(
      key: const Key(safeAreaKey),
      child: Scaffold(
        key: const Key(scaffoldKey),
        appBar: const PreferredSize(
          preferredSize: Size.fromHeight(65.0),
          child: CustomAppBar(),
        ),
        body: Container(
          key: const Key(containerKey),
          //backgroundColor: kBackGround,
          color: kBackGround,
          child: ListView(
            key: const Key(listViewKey),
            shrinkWrap: true,
            children: [
              StatusBar(),
              kHeight10,
              CardWidget(),
              _circularAvatharCardMoving(),
              kHeight20,
              const ContainerInsideIconBoxShadow(totalIndex: 9),
              kHeight10,
              ApplyCard(),
              const CardMovingDote(),
              kHeight15,
              Padding(
                padding: const EdgeInsets.only(left: 20),
                child: Text(
                  'Bay Your Bills',
                  style: textStyle2,
                ),
              ),
              kHeight15,
              const SecondContainerBoxShadow(),
              const SizedBox(
                width: double.infinity,
                height: 130,
              )
            ],
          ),
        ),
        floatingActionButton: _buildFloatingActionButton(),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        bottomNavigationBar: _buildBottomNavigationBar(),
      ),
    );
  }

  Center _circularAvatharCardMoving() {
    return const Center(
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          CircleAvatar(
            radius: 5,
            backgroundColor: Color.fromARGB(255, 199, 65, 110),
          ),
          kWidth10,
          CircleAvatar(
            radius: 5,
            backgroundColor: kRed,
            child: CircleAvatar(
              radius: 4,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildFloatingActionButton() {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Padding(
          padding: const EdgeInsets.only(
            right: 15,
          ),
          child: Align(
            alignment: Alignment.bottomRight,
            child: Transform.scale(
              scale: 1.1,
              child: FloatingActionButton(
                foregroundColor: Colors.white.withOpacity(.5),
                elevation: 0,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(28),
                  side: BorderSide(
                    color: Colors.white.withOpacity(.5),
                  ),
                ),
                onPressed: () {},
                child: Image.asset(
                  'assets/call.png',
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
        ),
        kHeight10,
        Padding(
          padding: const EdgeInsets.only(bottom: 30),
          child: Transform.scale(
            scale: 1.4,
            child: FloatingActionButton(
              backgroundColor: kRed,
              elevation: 0,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30),
              ),
              onPressed: () {},
              child: Image.asset(
                'assets/lamp.png',
                width: 35,
                height: 30,
                fit: BoxFit.contain,
              ),
            ),
          ),
        ),
        Text('XENIE', style: textStyle1),
      ],
    );
  }

  Widget _buildBottomNavigationBar() {
    return BottomAppBar(
      color: kWhite,
      height: 100,
      child: Padding(
        padding: const EdgeInsets.only(left: 15, right: 15),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Column(
              children: [
                IconButton(
                  icon: const Icon(
                    Icons.featured_play_list_rounded,
                    color: kRed,
                    size: 32,
                  ),
                  onPressed: () {},
                ),
                Text(
                  'My CARDS',
                  style: textStyle1,
                ),
              ],
            ),
            Column(
              children: [
                IconButton(
                  icon: const Icon(
                    Icons.person,
                    color: kRed,
                    size: 32,
                  ),
                  onPressed: () {},
                ),
                Text('MY PROFILE', style: textStyle1),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
