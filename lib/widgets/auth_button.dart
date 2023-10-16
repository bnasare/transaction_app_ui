import 'package:flutter/material.dart';

class AuthButton extends StatelessWidget {
  final VoidCallback onPressed;
  final String text;

  const AuthButton({super.key, required this.text, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    var color = Theme.of(context).colorScheme;

    return Padding(
      padding: const EdgeInsets.only(left: 20, right: 20, top: 10, bottom: 30),
      child: FilledButton(
        onPressed: onPressed,
        style: ButtonStyle(
          fixedSize: MaterialStateProperty.all(
            Size(MediaQuery.of(context).size.width, 50),
          ),
        ),
        child: Text(
          text,
          style: TextStyle(
              color: color.surface, fontSize: 18, fontWeight: FontWeight.w600),
        ),
      ),
    );
  }
}
