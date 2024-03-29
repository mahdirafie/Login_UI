import 'package:first/auth/reset_password.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ForgotPasswordScreen extends StatefulWidget {
  const ForgotPasswordScreen({super.key});

  @override
  State<ForgotPasswordScreen> createState() => _ForgotPasswordScreenState();
}

class _ForgotPasswordScreenState extends State<ForgotPasswordScreen> {
  bool obsecureText = true;
  bool obsecureTextConfirmation = true;
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Scaffold(
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.only(left: 25, right: 25, top: 50),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              GestureDetector(
                  onTap: () {
                    Navigator.of(context).pop();
                  },
                  child: const Icon(CupertinoIcons.back)),
              const SizedBox(
                height: 48,
              ),
              Text(
                'Forgot Password?',
                style: theme.textTheme.displaySmall!
                    .copyWith(fontSize: 40, fontWeight: FontWeight.w800),
              ),
              const SizedBox(
                height: 16,
              ),
              Text(
                'Enter your email address to get the password reset link.',
                style: theme.textTheme.bodyLarge!.copyWith(
                    fontSize: 18,
                    color: theme.colorScheme.onBackground.withOpacity(0.6)),
              ),
              const SizedBox(
                height: 60,
              ),
              const Text('Email Address'),
              const SizedBox(
                height: 8,
              ),
              TextFormField(
                obscureText: obsecureText,
                decoration: InputDecoration(
                    suffixIcon: GestureDetector(
                  onTap: () {
                    setState(() {
                      obsecureText = !obsecureText;
                    });
                  },
                  child: Icon(obsecureText
                      ? CupertinoIcons.eye
                      : CupertinoIcons.eye_slash),
                )),
              ),
              const SizedBox(
                height: 32,
              ),
              SizedBox(
                width: double.infinity,
                height: 50,
                child: ElevatedButton(
                    onPressed: () {
                      Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) {
                          return const ResetPasswordScreen();
                        },
                      ));
                    },
                    child: const Text('Password Reset')),
              )
            ],
          ),
        ),
      )),
    );
  }
}
