import 'package:flutter/material.dart';
import 'package:wallet_sha/UI/widgets/buttons.dart';
import 'package:wallet_sha/UI/widgets/custom_form.dart';
import 'package:wallet_sha/shared/theme.dart';

class SignUpPage extends StatelessWidget {
  const SignUpPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        children: [
          Container(
            width: 155,
            height: 50,
            margin: const EdgeInsets.symmetric(vertical: 100),
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage(
                  'assets/black_logo.png',
                ),
              ),
            ),
          ),
          Text(
            'Join Us to Unlock\nYour Growth',
            style: blackTextStyle.copyWith(fontSize: 20, fontWeight: semiBold),
          ),
          const SizedBox(height: 30),
          Container(
            padding: const EdgeInsets.all(22),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: whiteColor,
            ),
            child: Column(
              children: [
                const CustomFormField(
                  title: 'Full Name',
                ),
                const SizedBox(height: 16),
                const CustomFormField(
                  title: 'Email Address',
                ),
                const SizedBox(height: 16),
                const CustomFormField(
                  title: 'Password',
                  obscureText: true,
                ),
                const SizedBox(height: 8),
                const SizedBox(height: 30),
                CustomFilledButton(
                  title: 'Continue',
                  onPressed: () {
                    Navigator.pushNamedAndRemoveUntil(
                        context, '/set-profile', (route) => false);
                  },
                ),
                const SizedBox(height: 30),
                CustomTextButton(
                    title: 'Sign In',
                    onPressed: () {
                      Navigator.pushNamed(context, '/sign-in');
                    }),
                const SizedBox(height: 50),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
