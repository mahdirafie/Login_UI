import 'package:first/auth/login.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Future.delayed(
      const Duration(seconds: 2),
      () => Navigator.of(context).pushReplacement(MaterialPageRoute(
        builder: (context) {
          return const LoginScreen();
        },
      )),
    );
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return SafeArea(
      child: Scaffold(
        body: Stack(
          children: [
            Center(
                child: ColorFiltered(
              colorFilter:
                  const ColorFilter.mode(Colors.blue, BlendMode.modulate),
              child: Lottie.asset('assets/animations/loading.json', width: 150),
            )),
            Positioned(
              bottom: 30,
              right: 0,
              left: 0,
              child: Center(
                  child: Text(
                'Rafi',
                style: theme.textTheme.bodyLarge,
              )),
            )
          ],
        ),
      ),
    );
  }
}
