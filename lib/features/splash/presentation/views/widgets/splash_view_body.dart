import 'package:bookly_app/features/onboarding_screens/presentation/views/onboarding_screen.dart';
import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:bookly_app/core/utlis/assets_file.dart';
import 'package:bookly_app/features/home/data/presentation/views/home_view.dart';
import 'package:bookly_app/features/splash/presentation/views/widgets/slide_text.dart';

class SplashViewBody extends StatefulWidget {
  const SplashViewBody({super.key});

  @override
  State<SplashViewBody> createState() => _SplashViewBodyState();
}

class _SplashViewBodyState extends State<SplashViewBody>
    with SingleTickerProviderStateMixin {
  late AnimationController animationController;
  late Animation<Offset> slidingAnimation;

  @override
  void initState() {
    super.initState();
    initSlidingAnimation();
    navigateToHome();
  }

  void navigateToHome() {
    Future.delayed(const Duration(seconds: 3), () {
      Get.to(
        () => OnBoarding(),
        transition: Transition.fade,
        duration: const Duration(seconds: 2),
      );
    });
  }

  void initSlidingAnimation() {
    animationController = AnimationController(
      vsync: this,
      duration: const Duration(
        seconds: 1,
      ),
    );
    slidingAnimation =
        Tween<Offset>(begin: const Offset(0.0, 2), end: Offset.zero)
            .animate(animationController);
    animationController.forward();
  }

  @override
  void dispose() {
    super.dispose();
    animationController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        const Center(
          child: Image(
            image: AssetImage(
              AssetsData.logo,
            ),
          ),
        ),
        const SizedBox(
          height: 5,
        ),
        SlidingText(slidingAnimation: slidingAnimation)
      ],
    );
  }
}
