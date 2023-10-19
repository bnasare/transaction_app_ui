import 'package:flutter/material.dart';
import 'package:transaction_app/widgets/insight_for_you_widget.dart';

import '../consts/insight_item.dart';
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
    var textTheme = Theme.of(context).textTheme;

    return Scaffold(
      backgroundColor: color.secondary,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
                color: color.secondary,
                child: Padding(
                    padding: const EdgeInsets.only(top: 70.0, bottom: 23),
                    child: Row(children: [
                      SearchBarWidget(color: color),
                      NotificationIcon(color: color),
                    ]))),
            Stack(
              children: [
                Container(
                  padding: const EdgeInsets.only(bottom: 20),
                  decoration: BoxDecoration(
                      color: Theme.of(context).scaffoldBackgroundColor,
                      borderRadius: const BorderRadius.only(
                          topLeft: Radius.circular(20),
                          topRight: Radius.circular(20))),
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
                                    PacketDiscountCardWidget(
                                      isActive: activeIndex == 0,
                                    ),
                                    NewDiscountCardWidget(
                                        isActive: activeIndex == 1)
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
                                        : color.onSecondary))
                          ]),
                      Padding(
                          padding: const EdgeInsets.only(
                              left: 23, right: 20, top: 15, bottom: 5),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text('Insight for you',
                                    style: textTheme.titleLarge?.copyWith(
                                        fontWeight: FontWeight.w600)),
                                TextButton(
                                    onPressed: () {},
                                    child: Text('View more',
                                        style: TextStyle(
                                            fontSize: 15,
                                            color:
                                                color.primary.withOpacity(0.5),
                                            fontWeight: FontWeight.w600)))
                              ])),
                      SizedBox(
                        height: 230,
                        child: ListView.builder(
                          shrinkWrap: true,
                          itemCount: insightItems.length,
                          scrollDirection: Axis.horizontal,
                          itemBuilder: (BuildContext context, int index) {
                            return Padding(
                                padding: EdgeInsets.only(
                                  left: index == 0 ? 23 : 15,
                                  right:
                                      index == insightItems.length - 1 ? 23 : 0,
                                ),
                                child: InsightForYouWidget(
                                    item: insightItems[index]));
                          },
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
      bottomNavigationBar: const CustomBottomNavigation(selectedIndex: 0),
    );
  }
}
