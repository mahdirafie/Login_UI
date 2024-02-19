import 'package:first/app_colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class SignupScreen extends StatefulWidget {
  const SignupScreen({super.key});

  @override
  State<SignupScreen> createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  bool obsecureText = true;
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
                Text(
                  'Create an account',
                  style: theme.textTheme.displaySmall!
                      .copyWith(fontSize: 40, fontWeight: FontWeight.w800),
                ),
                const SizedBox(
                  height: 24,
                ),
                const Text('Email Address'),
                const SizedBox(
                  height: 8,
                ),
                TextFormField(),
                const SizedBox(
                  height: 16,
                ),
                const Text('Phone Number'),
                const SizedBox(
                  height: 8,
                ),
                TextFormField(),
                const SizedBox(
                  height: 16,
                ),
                const Text('Password'),
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
                Row(
                  children: [
                    const Text('By continuing, you agree to our '),
                    Text(
                      'terms of service.',
                      style: theme.textTheme.bodyMedium!
                          .copyWith(color: theme.colorScheme.primary),
                    )
                  ],
                ),
                const SizedBox(
                  height: 16,
                ),
                SizedBox(
                    width: double.infinity,
                    height: 50,
                    child: ElevatedButton(
                        onPressed: () {}, child: const Text('Sign up'))),
                const SizedBox(
                  height: 24,
                ),
                Stack(
                  children: [
                    const Divider(),
                    Center(
                        child: Container(
                      padding: const EdgeInsets.only(left: 15, right: 15),
                      color: theme.colorScheme.background,
                      child: Text(
                        'or',
                        style: theme.textTheme.bodyMedium!
                            .copyWith(color: AppColors.secondaryTextColor),
                      ),
                    ))
                  ],
                ),
                const SizedBox(
                  height: 24,
                ),
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButtonTheme(
                    data: elevatedButtonTheme2,
                    child: ElevatedButton(
                        onPressed: () {},
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            SvgPicture.asset(
                              'assets/images/google.svg',
                              width: 25,
                            ),
                            const SizedBox(
                              width: 16,
                            ),
                            const Text('Continue with Google'),
                          ],
                        )),
                  ),
                ),
                const SizedBox(
                  height: 12,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('Already have an account? ',
                        style: theme.textTheme.bodyMedium!.copyWith(
                          color: AppColors.secondaryTextColor,
                        )),
                    InkWell(
                        onTap: () {
                          Navigator.of(context).pop();
                        },
                        child: const Text('sign in here'))
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
