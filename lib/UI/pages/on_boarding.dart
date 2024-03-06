import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:wallet_sha/UI/widgets/buttons.dart';
import 'package:wallet_sha/shared/theme.dart';

class OnBoardingPage extends StatefulWidget {
  const OnBoardingPage({super.key});

  @override
  State<OnBoardingPage> createState() => _OnBoardingPageState();
}

class _OnBoardingPageState extends State<OnBoardingPage> {
  int currentIndex = 0;
  CarouselController carouselController = CarouselController();

  List<String> titles = [
    'Grow Your\nFinancial Today',
    'Build From\nZero to Freedom',
    'Start Together',
  ];

  List<String> subtitles = [
    'Our system is helping you to\nachieve a better goal',
    'We provide tips for you so that\nyou can adapt easier',
    'We will guide you to where\nyou wanted it too',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        shrinkWrap: true,
        children: [
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CarouselSlider(
                  items: [
                    Image.asset(
                      'assets/on_boarding1.png',
                      height: 331,
                    ),
                    Image.asset(
                      'assets/on_boarding2.png',
                      height: 331,
                    ),
                    Image.asset(
                      'assets/on_boarding3.png',
                      height: 331,
                    ),
                  ],
                  options: CarouselOptions(
                    enableInfiniteScroll: false,
                    viewportFraction: 1,
                    height: 331,
                    onPageChanged: (index, reason) {
                      setState(() {
                        currentIndex = index;
                      });
                    },
                  ),
                  carouselController: carouselController,
                ),
                const SizedBox(height: 80),
                Container(
                  margin: const EdgeInsets.symmetric(
                    horizontal: 24,
                  ),
                  padding: const EdgeInsets.symmetric(
                    horizontal: 24,
                    vertical: 24,
                  ),
                  decoration: BoxDecoration(
                    color: whiteColor,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Column(
                    children: [
                      Text(
                        titles[currentIndex],
                        style: blackTextStyle.copyWith(
                          fontSize: 20,
                          fontWeight: semiBold,
                        ),
                        textAlign: TextAlign.center,
                      ),
                      const SizedBox(height: 26),
                      Text(
                        subtitles[currentIndex],
                        style: greyTextStyle.copyWith(
                          fontSize: 16,
                        ),
                        textAlign: TextAlign.center,
                      ),
                      SizedBox(
                        height: currentIndex == 2 ? 38 : 50,
                      ),
                      currentIndex == 2 ? getStarted() : getContinue()
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget getStarted() {
    return Column(
      children: [
        CustomFilledButton(
          title: "Get Started",
          onPressed: () {},
        ),
        const SizedBox(height: 20),
        CustomTextButton(
            title: "Sign In",
            onPressed: () {
              Navigator.pushNamedAndRemoveUntil(
                  context, '/sign-in', (route) => false);
            }),
      ],
    );
  }

  Widget getContinue() {
    return Row(
      children: [
        Container(
          width: 12,
          height: 12,
          margin: const EdgeInsets.only(
            right: 10,
          ),
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: currentIndex == 0 ? blueColor : lightBackgroundColor,
          ),
        ),
        Container(
          width: 12,
          height: 12,
          margin: const EdgeInsets.only(
            right: 10,
          ),
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: currentIndex == 1 ? blueColor : lightBackgroundColor,
          ),
        ),
        Container(
          width: 12,
          height: 12,
          margin: const EdgeInsets.only(
            right: 10,
          ),
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: currentIndex == 2 ? blueColor : lightBackgroundColor,
          ),
        ),
        const Spacer(),
        CustomFilledButton(
          title: "Continue",
          width: 150,
          onPressed: () {
            carouselController.nextPage();
          },
        ),
      ],
    );
  }
}
