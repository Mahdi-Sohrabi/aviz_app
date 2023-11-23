import 'package:flutter/material.dart';

class IntroLisr extends StatelessWidget {
  const IntroLisr({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const SizedBox(
            width: double.infinity,
          ),
          Image.asset('assets/images/intro.png'),
          const SizedBox(
            height: 37,
          ),
          SizedBox(
            width: MediaQuery.of(context).size.width,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  'آگهی شماست',
                  style: TextStyle(
                    fontFamily: 'sb',
                    fontSize: 16,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                const SizedBox(
                  width: 5,
                ),
                Container(
                  padding: const EdgeInsets.all(5),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    color: Colors.grey[200],
                  ),
                  child: Row(
                    children: [
                      const Text(
                        'آویز',
                        style: TextStyle(
                          color: Colors.red,
                          fontFamily: 'sb',
                          fontSize: 16,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      const SizedBox(
                        width: 5,
                      ),
                      Image.asset(
                        'assets/images/aviz.png',
                        height: 14,
                        width: 22,
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  width: 5,
                ),
                const Text(
                  'اینجا محل',
                  style: TextStyle(
                    fontFamily: 'sb',
                    fontSize: 16,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 18,
          ),
          const Text(
            'در آویز ملک خود را برای فروش،اجاره و رهن آگهی کنید \nو یا اگر دنبال ملک با مشخصات دلخواه خود هستید \nآویز ها را ببینید',
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Color(0xff98A2B3),
              fontFamily: 'sm',
              fontSize: 14,
              fontWeight: FontWeight.w400,
            ),
          ),
        ],
      ),
    );
  }
}
