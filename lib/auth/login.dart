import 'package:country_code_picker/country_code_picker.dart';
import 'package:first/app_colors.dart';
import 'package:first/auth/forgot_password.dart';
import 'package:first/auth/signup.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_svg/flutter_svg.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool obsecureText = true;
  bool check = false;

  bool obsecureTextPN = true;
  bool checkPN = false;
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return SafeArea(
      child: DefaultTabController(
        length: 2,
        child: Scaffold(
          body: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 25, right: 25, top: 50),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Login',
                      style: theme.textTheme.displaySmall!
                          .copyWith(fontSize: 40, fontWeight: FontWeight.w800),
                    )
                        .animate(delay: const Duration(seconds: 1))
                        .fade(duration: const Duration(milliseconds: 500))
                        .slideY(duration: const Duration(milliseconds: 500)),
                    const SizedBox(
                      height: 12,
                    ),
                    Text(
                      'Welcome back to the app',
                      style: theme.textTheme.bodySmall!
                          .copyWith(fontWeight: FontWeight.w100, fontSize: 18),
                    )
                        .animate(delay: const Duration(seconds: 1))
                        .fade(duration: const Duration(milliseconds: 500))
                        .slideY(duration: const Duration(milliseconds: 500)),
                    const SizedBox(
                      height: 32,
                    ),
                  ],
                ),
              ),
              TabBar(
                splashFactory: NoSplash.splashFactory,
                tabs: [
                  Container(
                      color: Colors.transparent,
                      child: Container(
                          padding: const EdgeInsets.only(top: 8, bottom: 8),
                          child: const Text('Email'))),
                  Container(
                      padding: const EdgeInsets.only(top: 8, bottom: 8),
                      child: const Text('Phone Number'))
                ],
                dividerColor: Colors.transparent,
                indicatorSize: TabBarIndicatorSize.tab,
              ),
              Flexible(
                fit: FlexFit.loose,
                child: TabBarView(children: [
                  Padding(
                      padding: const EdgeInsets.only(left: 25, right: 25),
                      child: loginWithEmail(context)),
                  Padding(
                      padding: const EdgeInsets.only(left: 25, right: 25),
                      child: loginWithPhoneNumber(context)),
                ]),
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget loginWithPhoneNumber(BuildContext context) {
    final theme = Theme.of(context);
    return Container(
      alignment: Alignment.center,
      height: double.infinity,
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text('Phone Number'),
            const SizedBox(
              height: 8,
            ),
            Row(
              children: [
                Container(
                  height: 65,
                  decoration: BoxDecoration(
                      border: Border.all(
                        color: theme.colorScheme.onBackground,
                      ),
                      borderRadius: BorderRadius.circular(12)),
                  child: pickCountry(theme),
                ),
                const SizedBox(
                  width: 8,
                ),
                Expanded(
                  child: TextField(
                    keyboardType: TextInputType.phone,
                    inputFormatters: [FilteringTextInputFormatter.digitsOnly],
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 16,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text('Password'),
                GestureDetector(
                  onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) {
                        return const ForgotPasswordScreen();
                      },
                    ));
                  },
                  child: Text(
                    'Forgot password?',
                    style: theme.textTheme.bodyMedium!
                        .copyWith(color: theme.colorScheme.primary),
                  ),
                )
              ],
            ),
            const SizedBox(
              height: 8,
            ),
            TextFormField(
              obscureText: obsecureTextPN,
              decoration: InputDecoration(
                  suffixIcon: GestureDetector(
                onTap: () {
                  setState(() {
                    obsecureTextPN = !obsecureTextPN;
                  });
                },
                child: Icon(obsecureTextPN
                    ? CupertinoIcons.eye
                    : CupertinoIcons.eye_slash),
              )),
            ),
            const SizedBox(
              height: 32,
            ),
            Row(
              children: [
                SizedBox(
                  height: 30,
                  width: 30,
                  child: Checkbox(
                    value: checkPN,
                    onChanged: (value) {
                      setState(() {
                        if (value != null) {
                          checkPN = value;
                        }
                      });
                    },
                  ),
                ),
                const SizedBox(
                  width: 8,
                ),
                GestureDetector(
                    onTap: () {
                      setState(() {
                        checkPN = !checkPN;
                      });
                    },
                    child: const Text('Keep me signed in')),
              ],
            ),
            const SizedBox(
              height: 16,
            ),
            SizedBox(
                width: double.infinity,
                height: 50,
                child: ElevatedButton(
                    onPressed: () {}, child: const Text('Login'))),
            const SizedBox(
              height: 24,
            ),
            Stack(
              children: [
                const Divider(),
                Center(
                    child: Container(
                  padding: const EdgeInsets.only(left: 8, right: 8),
                  color: theme.colorScheme.background,
                  child: Text(
                    'or sign in with',
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
                        const Text('Sign in with Google'),
                      ],
                    )),
              ),
            ),
            const SizedBox(
              height: 32,
            ),
            InkWell(
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) {
                    return const SignupScreen();
                  },
                ));
              },
              child: Center(
                  child: Text(
                'create an account',
                style: theme.textTheme.bodyLarge,
              )),
            )
          ],
        ),
      ),
    );
  }

  CountryCodePicker pickCountry(ThemeData theme) => CountryCodePicker(
        hideMainText: true,
        flagWidth: 25,
        padding: EdgeInsets.zero,
        flagDecoration: BoxDecoration(borderRadius: BorderRadius.circular(4)),
        showFlag: true,
        backgroundColor: theme.colorScheme.background,
        dialogBackgroundColor: theme.colorScheme.background,
        searchDecoration:
            const InputDecoration(contentPadding: EdgeInsets.zero),
        showDropDownButton: false,
        barrierColor: Colors.black.withOpacity(0.6),
      );

  Widget loginWithEmail(BuildContext context) {
    final theme = Theme.of(context);
    return Container(
      alignment: Alignment.center,
      height: double.infinity,
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text('Email Address'),
            const SizedBox(
              height: 8,
            ),
            TextFormField(
              keyboardType: TextInputType.emailAddress,
            ),
            const SizedBox(
              height: 16,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text('Password'),
                GestureDetector(
                  onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) {
                        return const ForgotPasswordScreen();
                      },
                    ));
                  },
                  child: Text(
                    'Forgot password?',
                    style: theme.textTheme.bodyMedium!
                        .copyWith(color: theme.colorScheme.primary),
                  ),
                )
              ],
            ),
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
                SizedBox(
                  height: 30,
                  width: 30,
                  child: Checkbox(
                    value: check,
                    onChanged: (value) {
                      setState(() {
                        if (value != null) {
                          check = value;
                        }
                      });
                    },
                  ),
                ),
                const SizedBox(
                  width: 8,
                ),
                GestureDetector(
                    onTap: () {
                      setState(() {
                        check = !check;
                      });
                    },
                    child: const Text('Keep me signed in')),
              ],
            ),
            const SizedBox(
              height: 16,
            ),
            SizedBox(
                width: double.infinity,
                height: 50,
                child: ElevatedButton(
                    onPressed: () {}, child: const Text('Login'))),
            const SizedBox(
              height: 24,
            ),
            Stack(
              children: [
                const Divider(),
                Center(
                    child: Container(
                  padding: const EdgeInsets.only(left: 8, right: 8),
                  color: theme.colorScheme.background,
                  child: Text(
                    'or sign in with',
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
                        const Text('Sign in with google'),
                      ],
                    )),
              ),
            ),
            const SizedBox(
              height: 32,
            ),
            Center(
                child: InkWell(
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) {
                    return const SignupScreen();
                  },
                ));
              },
              child: Text(
                'create an account',
                style: theme.textTheme.bodyLarge,
              ),
            ))
          ],
        ),
      ),
    );
  }
}
