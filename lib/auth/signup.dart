import 'package:flutter/material.dart';

class SignupScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(left: 25, right: 25, top: 50),
          child: Column(
            children: [
              Text(
                'Create an account',
                style: theme.textTheme.displaySmall!
                    .copyWith(fontSize: 40, fontWeight: FontWeight.w800),
              ),
              SizedBox(height: 32,),
            ],
          ),
        ),
      ),
    );
  }
}
