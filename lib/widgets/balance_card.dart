import 'package:flutter/material.dart';

import 'custom_divider.dart';

class UserBalanceCard extends StatelessWidget {
  const UserBalanceCard({super.key});

  @override
  Widget build(BuildContext context) {
    final color = Theme.of(context).colorScheme;
    final textTheme = Theme.of(context).textTheme;

    return Container(
      width: double.infinity,
      height: 150,
      margin: const EdgeInsets.all(23),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: Theme.of(context).cardColor,
      ),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(
              top: 8.0,
              left: 3,
              bottom: 15,
            ),
            child: Padding(
              padding: const EdgeInsets.only(top: 12.0, right: 40, left: 20),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Your balance',
                        style: TextStyle(
                          fontSize: 15,
                          color: color.onSecondary,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 9),
                        child: Text(
                          '\$1,250.12',
                          style: textTheme.bodyLarge?.copyWith(
                            fontWeight: FontWeight.w600,
                            fontSize: 24,
                          ),
                        ),
                      ),
                    ],
                  ),
                  const Spacer(),
                  RotatedBox(
                    quarterTurns: -1,
                    child: SizedBox(
                      width: 55.0,
                      child: Divider(
                        color: Theme.of(context)
                            .colorScheme
                            .onSecondary
                            .withOpacity(0.5),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                      left: 20,
                    ),
                    child: Column(
                      children: [
                        Icon(
                          Icons.wallet,
                          size: 28,
                          color: color.primary,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 7.0),
                          child: Text(
                            'Top-up',
                            style: TextStyle(
                              color: color.onSecondary,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          const CustomDivider(indent: 20, endIndent: 20),
          const Spacer(),
          Padding(
            padding: const EdgeInsets.only(
              left: 20,
              right: 20,
              bottom: 011,
            ),
            child: Row(
              children: [
                Image.asset(
                  'assets/images/coin.png',
                  fit: BoxFit.fill,
                  height: 30,
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 5.0),
                  child: Text(
                    '1200',
                    style: textTheme.bodyMedium?.copyWith(
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
                Text(
                  'SV-Points',
                  style: TextStyle(
                    fontSize: 15,
                    color: color.onSecondary,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                const Spacer(),
                TextButton(
                  child: Text(
                    'Details',
                    style: TextStyle(
                      color: color.onPrimary,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  onPressed: () {},
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
