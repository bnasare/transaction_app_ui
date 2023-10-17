import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:transaction_app/screens/home_screen.dart';
import 'package:transaction_app/widgets/apple_social_auth_button.dart';
import 'package:transaction_app/widgets/auth_button.dart';
import 'package:transaction_app/widgets/google_social_auth_button.dart';

class LoginScreen extends StatelessWidget {
  static const routeName = '/login';
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var color = Theme.of(context).colorScheme;
    var textTheme = Theme.of(context).textTheme;
    return Scaffold(
      resizeToAvoidBottomInset: true,
      appBar: AppBar(
          toolbarHeight: 70,
          leading: BackButton(onPressed: () {}, color: color.onTertiary),
          backgroundColor: Theme.of(context).scaffoldBackgroundColor,
          elevation: 0),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Center(
              child: Padding(
                  padding: const EdgeInsets.only(top: 0.0, bottom: 20),
                  child: CircleAvatar(
                      radius: 50,
                      backgroundColor: color.tertiary,
                      backgroundImage:
                          const AssetImage('assets/images/purple_face.png')))),
          Text('Hi, Welcome Back!',
              style: textTheme.titleLarge
                  ?.copyWith(fontWeight: FontWeight.w600, fontSize: 25)),
          Padding(
              padding: const EdgeInsets.symmetric(vertical: 17.0),
              child: Text('Log in to your account.',
                  style: textTheme.titleMedium?.copyWith(
                      color: color.onSecondary,
                      fontSize: 17.5,
                      fontWeight: FontWeight.w500))),
          Padding(
              padding: const EdgeInsets.all(20.0),
              child: TextField(
                  decoration: InputDecoration(
                      filled: true,
                      fillColor: color.tertiary,
                      hintText: 'Your Email',
                      hintStyle: textTheme.bodyLarge
                          ?.copyWith(color: color.onSecondary, fontSize: 17),
                      prefixIcon: Padding(
                          padding: const EdgeInsets.only(left: 18.0, right: 10),
                          child: Icon(Icons.mail_outline_rounded,
                              color: color.onSecondary)),
                      border: OutlineInputBorder(
                          borderSide: BorderSide.none,
                          borderRadius: BorderRadius.circular(15)),
                      contentPadding:
                          const EdgeInsets.symmetric(vertical: 17)))),
          Padding(
              padding: const EdgeInsets.fromLTRB(20, 0, 20, 7),
              child: TextField(
                  decoration: InputDecoration(
                      filled: true,
                      fillColor: color.tertiary,
                      hintText: 'Your Password',
                      hintStyle: textTheme.bodyLarge
                          ?.copyWith(color: color.onSecondary, fontSize: 17),
                      prefixIcon: Padding(
                          padding: const EdgeInsets.only(left: 18.0, right: 10),
                          child: Icon(Icons.lock_outline_rounded,
                              color: color.onSecondary)),
                      suffixIcon: IconButton(
                          onPressed: () {},
                          icon: Icon(Icons.visibility_off_outlined,
                              color: color.onSecondary)),
                      border: OutlineInputBorder(
                          borderSide: BorderSide.none,
                          borderRadius: BorderRadius.circular(15)),
                      contentPadding:
                          const EdgeInsets.symmetric(vertical: 17)))),
          Align(
              alignment: Alignment.centerRight,
              child: Padding(
                  padding: const EdgeInsets.only(right: 20.0),
                  child: TextButton(
                      onPressed: () {},
                      child: Text('Forgot Password?',
                          style: textTheme.bodyMedium?.copyWith(
                              color: color.primary,
                              fontWeight: FontWeight.w600))))),
          AuthButton(onPressed: () {
            Navigator.pushReplacementNamed(context, HomeScreen.routeName);
          }),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 40.0),
            child: Row(
              children: [
                Expanded(child: Divider(color: color.onSecondary)),
                Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16),
                    child: Text("Or login with",
                        style: textTheme.titleMedium
                            ?.copyWith(color: color.onSecondary))),
                Expanded(child: Divider(color: color.onSecondary)),
              ],
            ),
          ),
          Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 0.0, vertical: 30),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    AppleSocialAuthButton(onPressed: () {}),
                    GoogleSocialAuthButton(onPressed: () {})
                  ])),
          const Spacer(),
          Padding(
            padding: const EdgeInsets.only(bottom: 15.0),
            child: RichText(
              text: TextSpan(
                children: [
                  TextSpan(
                      text: "Don't have an account? ",
                      style: TextStyle(
                          color: color.onSecondary,
                          fontWeight: FontWeight.w600,
                          fontSize: 18)),
                  TextSpan(
                      text: 'Sign Up',
                      recognizer: TapGestureRecognizer()..onTap = () {},
                      style: textTheme.titleMedium?.copyWith(
                          color: color.primary,
                          fontWeight: FontWeight.w600,
                          fontSize: 18)),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
