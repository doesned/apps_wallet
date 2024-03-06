import 'package:flutter/material.dart';
import 'package:wallet_sha/UI/widgets/buttons.dart';
import 'package:wallet_sha/UI/widgets/custom_form.dart';
import 'package:wallet_sha/shared/theme.dart';

class SignSetProfile extends StatelessWidget {
  const SignSetProfile({super.key});

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
            'Sign In &\nGrow Your Finance',
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
                Container(
                  width: 120,
                  height: 120,
                  decoration: BoxDecoration(
                    color: lightBackgroundColor,
                    shape: BoxShape.circle,
                  ),
                  child: Center(
                    child: Image.asset(
                      'assets/ic_upload.png',
                      width: 32,
                    ),
                  ),
                ),
                CustomFormField(
                  title: 'Set PIN (6 digit number)',
                ),
                const SizedBox(height: 50),
                CustomFilledButton(title: 'Continue', onPressed: () {})
              ],
            ),
          ),
          
        ],
      ),
    );
  }
}
