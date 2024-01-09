import 'package:bookly_app/core/utlis/constance.dart';
import 'package:bookly_app/features/home/data/presentation/views/home_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_onboard/flutter_onboard.dart';

class OnBoarding extends StatelessWidget {
  final PageController _pageController = PageController();

  OnBoarding({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: OnBoard(
        pageController: _pageController,
        onBoardData: onBoardData,
        titleStyles: const TextStyle(
          color: kPrimaryColor,
          fontSize: 26,
          fontWeight: FontWeight.bold,
          letterSpacing: 1,
        ),
        descriptionStyles: const TextStyle(
            fontSize: 16, color: Colors.grey, fontWeight: FontWeight.w500),
        pageIndicatorStyle: const PageIndicatorStyle(
          width: 100,
          inactiveColor: Color.fromARGB(255, 122, 93, 176),
          activeColor: kPrimaryColor,
          inactiveSize: Size(4, 4),
          activeSize: Size(8, 8),
        ),
        skipButton: TextButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const HomeView(),
              ),
            );
          },
          child: const Text(
            "Skip",
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: kPrimaryColor,
            ),
          ),
        ),
        nextButton: OnBoardConsumer(
          builder: (context, ref, child) {
            final state = ref.watch(onBoardStateProvider);
            return InkWell(
              onTap: () => _onNextTap(state),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  state.isLastPage
                      ? GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const HomeView(),
                              ),
                            );
                          },
                          child: Container(
                            width: 150,
                            height: 40,
                            alignment: Alignment.center,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(30),
                              color: kPrimaryColor,
                            ),
                            child: const Text(
                              "Done",
                              style: TextStyle(
                                fontSize: 20,
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        )
                      : Container(
                          width: 150,
                          height: 40,
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30),
                            color: kPrimaryColor,
                          ),
                          child: const Text(
                            "Next",
                            style: TextStyle(
                              fontSize: 20,
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        )
                ],
              ),
            );
          },
        ),
      ),
    );
  }

  void _onNextTap(OnBoardState onBoardState) {
    if (!onBoardState.isLastPage) {
      _pageController.animateToPage(
        onBoardState.page + 1,
        duration: const Duration(milliseconds: 250),
        curve: Curves.easeInOutSine,
      );
    } else {}
  }
}

final List<OnBoardModel> onBoardData = [
  const OnBoardModel(
      imgUrl: 'assets/images/1.jpeg',
      title: "Start your\n Journey with Books",
      description: ' A World of Free Books Awaits You'),
  const OnBoardModel(
    imgUrl: "assets/images/3.png",
    title: "Discover New Titles",
    description: "Endless Choices, Limitless Adventures",
  ),
];
