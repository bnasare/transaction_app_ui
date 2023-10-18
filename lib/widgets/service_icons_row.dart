import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ServiceIconsRow extends StatelessWidget {
  const ServiceIconsRow({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        ServiceOptionButton(
          iconData: Icons.local_shipping_outlined,
          title: 'SV-Truck',
          onPressed: () {},
        ),
        ServiceOptionButton(
          iconData: CupertinoIcons.airplane,
          title: 'SV-Air',
          onPressed: () {},
        ),
        ServiceOptionButton(
          iconData: Icons.directions_boat_filled_outlined,
          title: 'SV-Sea',
          onPressed: () {},
        ),
        ServiceOptionButton(
          iconData: Icons.headphones_outlined,
          title: 'SV-Help',
          onPressed: () {},
        ),
      ],
    );
  }
}

class ServiceOptionButton extends StatelessWidget {
  final IconData iconData;
  final String title;
  final VoidCallback onPressed;

  const ServiceOptionButton({
    super.key,
    required this.iconData,
    required this.title,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    final color = Theme.of(context).colorScheme;
    final textTheme = Theme.of(context).textTheme;

    return Padding(
      padding: const EdgeInsets.only(left: 23, right: 23, top: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            children: [
              Container(
                height: 50,
                width: 50,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [
                      color.onPrimary.withOpacity(0.05),
                      color.onPrimary.withOpacity(0.5),
                    ],
                  ),
                ),
                child: Center(
                  child: IconButton(
                    onPressed: onPressed,
                    icon: Icon(iconData),
                    color: color.onPrimary,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 15.0),
                child: Text(
                  title,
                  style: textTheme.titleMedium,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
