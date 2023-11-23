import 'package:aviz_app/screens/show_aviz_screen.dart';
import 'package:flutter/material.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: CustomScrollView(
          slivers: [
            const SliverToBoxAdapter(
              child: SizedBox(
                width: double.infinity,
                height: 20,
              ),
            ),
            SliverToBoxAdapter(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
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
            SliverToBoxAdapter(
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 16, vertical: 32),
                child: Row(
                  children: [
                    Text(
                      'مشاهده همه',
                      style: TextStyle(
                        color: Colors.grey[400],
                        fontFamily: 'sb',
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    const Spacer(),
                    const Text(
                      'آویزهای داغ',
                      style: TextStyle(
                        fontFamily: 'sb',
                        fontSize: 16,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SliverToBoxAdapter(
              child: Directionality(
                textDirection: TextDirection.rtl,
                child: SizedBox(
                  height: 280,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: 3,
                    itemBuilder: (context, index) {
                      return const AdvertisingItem();
                    },
                  ),
                ),
              ),
            ),
            SliverToBoxAdapter(
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 16, vertical: 32),
                child: Row(
                  children: [
                    Text(
                      'مشاهده همه',
                      style: TextStyle(
                        color: Colors.grey[400],
                        fontFamily: 'sb',
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    const Spacer(),
                    const Text(
                      'آویزهای اخیر',
                      style: TextStyle(
                        fontFamily: 'sb',
                        fontSize: 16,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SliverList.builder(
              itemCount: 3,
              itemBuilder: (context, index) {
                return const AdverTisingItem2();
              },
            )
            // SliverToBoxAdapter(
            //   child: ListView.builder(
            //     itemCount: 3,
            //     shrinkWrap: true,
            //     scrollDirection: Axis.vertical,
            //     itemBuilder: (BuildContext context, int index) {
            //       return AdverTisingItem2();
            //     },
            //   ),
            // )
          ],
        ),
      ),
    );
  }
}

class AdvertisingItem extends StatelessWidget {
  const AdvertisingItem({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => ShowAvizScreen(),
            ));
      },
      child: Container(
        padding: const EdgeInsets.all(16),
        margin: const EdgeInsets.all(16),
        width: 224,
        height: 280,
        decoration: BoxDecoration(
          boxShadow: const [
            BoxShadow(
              color: Colors.grey,
              blurRadius: 15,
              spreadRadius: -9,
              offset: Offset(0.0, 8.0),
            )
          ],
          color: Colors.white,
          borderRadius: BorderRadius.circular(4),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset('assets/images/image1.png'),
            const SizedBox(
              height: 16,
            ),
            const Text(
              'ویلا ۵۰۰ متری زیر قیمت',
              textAlign: TextAlign.end,
              style: TextStyle(
                fontFamily: 'sb',
                fontSize: 14,
                fontWeight: FontWeight.w700,
              ),
            ),
            const SizedBox(
              height: 8,
            ),
            Text(
              'ویو عالی، سند تک برگ، سال ساخت ۱۴۰۲، تحویل فوری',
              style: TextStyle(
                fontFamily: 'sm',
                color: Colors.grey[500],
                fontSize: 12,
                fontWeight: FontWeight.w400,
              ),
            ),
            const SizedBox(
              height: 8,
            ),
            Row(
              children: [
                const Text(
                  'قیمت:',
                  style: TextStyle(
                      fontSize: 12,
                      fontFamily: 'sm',
                      fontWeight: FontWeight.w500),
                ),
                const Spacer(),
                Container(
                  padding: const EdgeInsets.all(4),
                  height: 20,
                  width: 75,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(4),
                    color: Colors.grey[100],
                  ),
                  child: const Text(
                    '۲۵٬۶۸۳٬۰۰۰٬۰۰۰',
                    style: TextStyle(
                      color: Colors.red,
                      fontFamily: 'sm',
                      fontSize: 12,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class AdverTisingItem2 extends StatelessWidget {
  const AdverTisingItem2({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => ShowAvizScreen(),
            ));
      },
      child: Container(
        padding: const EdgeInsets.all(16),
        margin: const EdgeInsets.all(16),
        width: 343,
        height: 139,
        decoration: BoxDecoration(
          boxShadow: const [
            BoxShadow(
              color: Colors.grey,
              blurRadius: 15,
              spreadRadius: -9,
              offset: Offset(0.0, 8.0),
            )
          ],
          color: Colors.white,
          borderRadius: BorderRadius.circular(4),
        ),
        child: Row(
          children: [
            Image.asset('assets/images/image2.png'),
            const Spacer(),
            Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                const Text(
                  'واحد دوبلکس فول امکانات',
                  style: TextStyle(
                    fontFamily: 'sb',
                    fontSize: 14,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                const SizedBox(
                  height: 8,
                ),
                Text(
                  'سال ساخت ۱۳۹۸، سند تک برگ\n دوبلکس تجهیزات کامل',
                  textAlign: TextAlign.end,
                  style: TextStyle(
                      fontFamily: 'sm',
                      fontSize: 12,
                      fontWeight: FontWeight.w400,
                      color: Colors.grey[400]),
                ),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  children: [
                    Container(
                      padding: const EdgeInsets.all(4),
                      height: 26,
                      width: 81,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(4),
                        color: Colors.grey[100],
                      ),
                      child: const Center(
                        child: Text(
                          '۸٬۲۰۰٬۰۰۰٬۰۰۰',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Colors.red,
                            fontFamily: 'sm',
                            fontSize: 12,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 70,
                    ),
                    const Text(
                      ': قیمت',
                      style: TextStyle(
                          fontSize: 12,
                          fontFamily: 'sm',
                          fontWeight: FontWeight.w500),
                    ),
                  ],
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}


// Row(
//         children: [
         
//           Column(
//             children: [
//               Text('واحد دوبلکس فول امکانات'),
//               Text('سال ساخت ۱۳۹۸، سند تک برگ، دوبلکس تجهیزات کامل'),
//               Row(
//                 children: [
//                   const Text(
//                     'قیمت:',
//                     style: TextStyle(
//                         fontSize: 12,
//                         fontFamily: 'sm',
//                         fontWeight: FontWeight.w500),
//                   ),
//                   const Spacer(),
//                   Container(
//                     padding: const EdgeInsets.all(4),
//                     height: 18,
//                     width: 75,
//                     decoration: BoxDecoration(
//                       borderRadius: BorderRadius.circular(4),
//                       color: Colors.grey[100],
//                     ),
//                     child: const Text(
//                       '۲۵٬۶۸۳٬۰۰۰٬۰۰۰',
//                       style: TextStyle(
//                         color: Colors.red,
//                         fontFamily: 'sm',
//                         fontSize: 12,
//                         fontWeight: FontWeight.w500,
//                       ),
//                     ),
//                   ),
//                 ],
//               ),
//             ],
//           )
//         ],
//       ),