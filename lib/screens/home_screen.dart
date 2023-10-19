import 'package:flutter/material.dart';

import '../widgets/balance_card.dart';
import '../widgets/bottom_appbar.dart';
import '../widgets/new_discount_card_widget.dart';
import '../widgets/notification_icon.dart';
import '../widgets/packet_discount_card_widget.dart';
import '../widgets/search_bar.dart';
import '../widgets/service_icons_row.dart';

class HomeScreen extends StatefulWidget {
  static const routeName = '/home';

  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int activeIndex = 0;

  @override
  Widget build(BuildContext context) {
    var color = Theme.of(context).colorScheme;

    return Scaffold(
      body: Stack(
        children: [
          Column(children: [
            Container(
                color: color.secondary,
                child: Padding(
                    padding: const EdgeInsets.only(top: 70.0, bottom: 40),
                    child: Row(children: [
                      SearchBarWidget(color: color),
                      NotificationIcon(color: color)
                    ])))
          ]),
          Positioned(
            top: 140,
            left: 0,
            right: 0,
            child: Container(
              height: MediaQuery.of(context).size.height,
              decoration: BoxDecoration(
                  color: Theme.of(context).scaffoldBackgroundColor,
                  borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(20),
                      topRight: Radius.circular(20))),
              child: SingleChildScrollView(
                physics: const BouncingScrollPhysics(),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const UserBalanceCard(),
                    const ServiceIconsRow(),
                    SizedBox(
                        height: 140,
                        child: NotificationListener<ScrollNotification>(
                            onNotification: (notification) {
                              if (notification is ScrollUpdateNotification) {
                                final cardWidth =
                                    MediaQuery.of(context).size.width;
                                final newIndex =
                                    (notification.metrics.pixels / cardWidth)
                                        .round();
                                setState(() {
                                  activeIndex = newIndex;
                                });
                              }
                              return true;
                            },
                            child: ListView(
                                physics: const PageScrollPhysics(),
                                scrollDirection: Axis.horizontal,
                                children: [
                                  GestureDetector(
                                      onTap: () {
                                        setState(() {
                                          activeIndex = 0;
                                        });
                                      },
                                      child: PacketDiscountCardWidget(
                                          isActive: activeIndex == 0)),
                                  GestureDetector(
                                      onTap: () {
                                        setState(() {
                                          activeIndex = 1;
                                        });
                                      },
                                      child: NewDiscountCardWidget(
                                        isActive: activeIndex == 1,
                                      ))
                                ]))),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                            width: 16,
                            height: 8,
                            margin: const EdgeInsets.only(top: 13),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: activeIndex == 0
                                    ? color.primary
                                    : color.onSecondary)),
                        Container(
                          width: 16,
                          height: 8,
                          margin: const EdgeInsets.only(top: 13, left: 7),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: activeIndex == 1
                                  ? color.primary
                                  : color.onSecondary),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
      bottomNavigationBar: const CustomBottomNavigation(selectedIndex: 0),
    );
  }
}
