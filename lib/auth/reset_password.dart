import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ResetPasswordScreen extends StatefulWidget {
  const ResetPasswordScreen({super.key});

  @override
  State<ResetPasswordScreen> createState() => _ResetPasswordScreenState();
}

class _ResetPasswordScreenState extends State<ResetPasswordScreen> {
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
              InkWell(
                  onTap: () {
                    Navigator.of(context).pop();
                  },
                  child: const Icon(CupertinoIcons.back)),
              const SizedBox(
                height: 48,
              ),
              Text(
                'Reset Password',
                style: theme.textTheme.displaySmall!
                    .copyWith(fontSize: 40, fontWeight: FontWeight.w800),
              ),
              const SizedBox(
                height: 16,
              ),
              Text(
                'Enter your new password twice below to reset your password.',
                style: theme.textTheme.bodyLarge!.copyWith(
                    fontSize: 18,
                    color: theme.colorScheme.onBackground.withOpacity(0.6)),
              ),
              const SizedBox(
                height: 60,
              ),
              const Text('Enter new password'),
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
                height: 16,
              ),
              const Text('Re-enter new password'),
              const SizedBox(
                height: 8,
              ),
              TextFormField(
                obscureText: obsecureTextConfirmation,
                decoration: InputDecoration(
                    suffixIcon: GestureDetector(
                  onTap: () {
                    setState(() {
                      obsecureTextConfirmation = !obsecureTextConfirmation;
                    });
                  },
                  child: Icon(obsecureTextConfirmation
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
                    onPressed: () {}, child: const Text('Reset Password')),
              )
            ],
          ),
        ),
      )),
    );
  }
}
