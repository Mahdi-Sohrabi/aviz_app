import 'package:aviz_app/screens/login/login_number_screen.dart';
import 'package:aviz_app/screens/register/register_screen1.dart';
import 'package:aviz_app/widgets/intro_list.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});
  var controller = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            SizedBox(
              height: 513,
              child: PageView.builder(
                controller: controller,
                itemCount: 3,
                itemBuilder: (context, index) {
                  return const IntroLisr();
                },
              ),
            ),
            const SizedBox(
              height: 70,
            ),
            SmoothPageIndicator(
              controller: controller,
              count: 3,
              effect: const ExpandingDotsEffect(
                  expansionFactor: 4,
                  dotHeight: 6,
                  dotWidth: 6,
                  dotColor: Color(0xffEAECF0),
                  activeDotColor: Colors.red),
            ),
            const Spacer(),
            Padding(
              padding: const EdgeInsetsDirectional.symmetric(horizontal: 16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => LoginNumberScreen(),
                          ));
                    },
                    style: ElevatedButton.styleFrom(
                        elevation: 0,
                        backgroundColor: Colors.white,
                        minimumSize: const Size(159, 40)),
                    child: const Text(
                      'ورود',
                      style: TextStyle(
                        color: Colors.red,
                        fontFamily: 'sb',
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => RegisterScreen1(),
                          ));
                    },
                    style: ElevatedButton.styleFrom(
                        elevation: 0,
                        backgroundColor: Colors.red,
                        minimumSize: const Size(159, 40)),
                    child: const Text(
                      'ثبت نام',
                      style: TextStyle(
                        color: Colors.white,
                        fontFamily: 'sb',
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 56,
            )
          ],
        ),
      ),
    );
  }
}
