import 'package:flutter/material.dart';
import 'package:flutter_iconly/flutter_iconly.dart';
import 'package:transaction_app/widgets/balance_card.dart';
import 'package:transaction_app/widgets/new_discount_card_widget.dart';
import 'package:transaction_app/widgets/packet_discount_card_widget.dart';
import 'package:transaction_app/widgets/service_icons_row.dart';

import '../widgets/bottom_appbar.dart';

class HomeScreen extends StatelessWidget {
  static const routeName = '/home';
  const HomeScreen({Key? key}) : super(key: key);
  final int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    var color = Theme.of(context).colorScheme;
    var textTheme = Theme.of(context).textTheme;

    return Scaffold(
      body: Stack(
        children: [
          Column(
            children: [
              Container(
                color: color.secondary,
                child: Padding(
                  padding: const EdgeInsets.only(top: 70.0, bottom: 40),
                  child: Row(
                    children: [
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.only(left: 25, right: 0),
                          child: TextField(
                            decoration: InputDecoration(
                              filled: true,
                              fillColor: color.tertiary.withOpacity(0.2),
                              hintText: 'Track your package',
                              hintStyle: TextStyle(
                                  color: color.onPrimary, fontSize: 17),
                              prefixIcon: Padding(
                                padding: const EdgeInsets.only(
                                    left: 18.0, right: 10, bottom: 4),
                                child: Icon(IconlyLight.search,
                                    color: color.onPrimary),
                              ),
                              suffixIcon: IconButton(
                                onPressed: () {},
                                icon: Icon(IconlyLight.scan,
                                    color: color.onPrimary),
                              ),
                              border: OutlineInputBorder(
                                borderSide: BorderSide.none,
                                borderRadius: BorderRadius.circular(30),
                              ),
                              contentPadding:
                                  const EdgeInsets.symmetric(vertical: 0),
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 12, right: 25),
                        child: InkWell(
                          onTap: () {},
                          child: CircleAvatar(
                            radius: 24,
                            backgroundColor: color.tertiary.withOpacity(0.2),
                            child: Badge(
                              alignment: Alignment.topRight,
                              backgroundColor: Colors.transparent,
                              label: Material(
                                color: color.surface,
                                shape: const CircleBorder(),
                                child: const Padding(
                                  padding: EdgeInsets.all(1.0),
                                  child: Icon(Icons.circle,
                                      color: Colors.red, size: 9),
                                ),
                              ),
                              child: Icon(
                                IconlyLight.notification,
                                size: 26,
                                color: color.surface,
                              ),
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
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
                    topRight: Radius.circular(20),
                  ),
                ),
                child: SingleChildScrollView(
                  physics: const BouncingScrollPhysics(),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const UserBalanceCard(),
                      const ServiceIconsRow(),
                      SizedBox(
                        height: 140,
                        child: ListView(
                          shrinkWrap: true,
                          scrollDirection: Axis.horizontal,
                          physics: const PageScrollPhysics(),
                          children: const [
                            PacketDiscountCardWidget(),
                            NewDiscountCardWidget(),
                          ],
                        ),
                      ),
                    ],
                  ),
                )),
          )
        ],
      ),
      bottomNavigationBar: const CustomBottomAppBar(selectedIndex: 0),
    );
  }
}
