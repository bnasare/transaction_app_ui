import 'package:flutter/material.dart';

class AppleSocialAuthButton extends StatelessWidget {
  final VoidCallback onPressed;

  const AppleSocialAuthButton({
    super.key,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    var color = Theme.of(context).colorScheme;

    return GestureDetector(
      onTap: onPressed,
      child: Container(
        margin: const EdgeInsets.only(left: 20),
        padding: const EdgeInsets.symmetric(horizontal: 30),
        height: 50,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30),
          border: Border.all(
            color: color.onSecondary.withOpacity(0.3),
          ),
        ),
        child: const Row(
          children: [
            Image(
                image: AssetImage('assets/images/apple_logo.png'),
                height: 40,
                width: 40),
            SizedBox(width: 3),
            Text(
              'Apple',
              style: TextStyle(
                fontWeight: FontWeight.w600,
                fontSize: 17,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
