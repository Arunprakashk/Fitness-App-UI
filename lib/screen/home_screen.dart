import 'package:fitness_app/widgets/custom_cards.dart';
import 'package:fitness_app/widgets/percentage_indicator_widget.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) => DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: const Color(0xFF01488E),
            title: const Text("MY FITNESS APP"),
            centerTitle: true,
            elevation: 0,
            bottom: const TabBar(
                indicator: UnderlineTabIndicator(
                    borderSide: BorderSide(width: 2.0, color: Colors.white),
                    insets: EdgeInsets.symmetric(horizontal: 50)),
                tabs: [
                  Tab(
                    text: 'Today',
                  ),
                  Tab(
                    text: 'Week',
                  ),
                  Tab(
                    text: 'Month',
                  )
                ]),
          ),
          body: Column(
            children: [
              Stack(children: [
                ClipPath(
                  clipper: MyCustomClipper(),
                  child: SizedBox(
                      width: double.maxFinite,
                      height: 250,
                      child: Image.asset(
                        'assets/blueee.png',
                        fit: BoxFit.cover,
                      )),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 17, left: 82),
                  child: PercentageIndicatorWidget(),
                )
              ]),
              const SizedBox(
                height: 20,
              ),
              Column(children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    CustomCardWidget(imageurl: 'apple.png', name: 'Diet'),
                    Padding(padding: EdgeInsets.only(left: 13)),
                    CustomCardWidget(imageurl: 'heart.png', name: 'Heart'),
                  ],
                ),
                const SizedBox(
                  height: 9.0,
                ),
                Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      CustomCardWidget(imageurl: 'note.png', name: 'Plan'),
                      Padding(
                          padding: EdgeInsets.only(
                        left: 13,
                      )),
                      CustomCardWidget(imageurl: 'clock.png', name: 'Exercise'),
                    ]),
              ])
            ],
          ),
        ),
      );
}

class MyCustomClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    double width = size.width;
    double height = size.height;
    double offset = 130.0;
    Path path = Path();
    path.lineTo(0, height - offset);
    path.quadraticBezierTo(width / 2, height, width, height - offset);

    path.lineTo(width, 0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    throw UnimplementedError();
  }
}
