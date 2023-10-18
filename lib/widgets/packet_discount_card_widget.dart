import 'package:flutter/material.dart';

class PacketDiscountCardWidget extends StatelessWidget {
  const PacketDiscountCardWidget({super.key});

  @override
  Widget build(BuildContext context) {
    var color = Theme.of(context).colorScheme;
    var textTheme = Theme.of(context).textTheme;

    return Card(
      margin: const EdgeInsets.only(right: 15, left: 23),
      elevation: 2,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20),
      ),
      child: Stack(
        children: [
          Container(
            width: MediaQuery.of(context).size.width * 0.8,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  color.onPrimary.withOpacity(0.05),
                  color.onPrimary.withOpacity(0.5),
                ],
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.only(left: 18.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Packet Discount Coupon',
                    style: textTheme.labelMedium?.copyWith(
                      color: color.primary.withOpacity(0.5),
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 2, bottom: 10.0),
                    child: Row(
                      children: [
                        Text(
                          'up\nto',
                          style: TextStyle(
                            fontSize: 13,
                            fontWeight: FontWeight.w500,
                            color: color.onPrimary,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 10.0, left: 1.5),
                          child: Text(
                            '15% OFF',
                            style: TextStyle(
                              height: 0,
                              fontSize: 32,
                              color: color.onTertiary,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 8,
                      vertical: 2,
                    ),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: color.primary.withOpacity(0.5),
                    ),
                    child: Text(
                      'SV-DAY0001',
                      style: TextStyle(
                        color: color.surface,
                        fontSize: 13,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            right: -45,
            top: 8,
            child:
                Image.asset('assets/images/cube.png', height: 140, width: 170),
          ),
        ],
      ),
    );
  }
}
