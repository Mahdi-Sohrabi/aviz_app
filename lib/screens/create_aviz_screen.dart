import 'package:aviz_app/screens/create_aviz_screen2.dart';
import 'package:flutter/material.dart';

class createAvizScreen extends StatefulWidget {
  const createAvizScreen({super.key});

  @override
  State<createAvizScreen> createState() => _createAvizScreenState();
}

class _createAvizScreenState extends State<createAvizScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: CustomScrollView(
          slivers: [
            SliverAppBar(
              backgroundColor: Colors.white,
              elevation: 0,
              leading: Image.asset('assets/images/cancel.png'),
              title: const Text(
                ' ثبت آویز',
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.red,
                  fontFamily: 'sm',
                  fontWeight: FontWeight.w500,
                ),
              ),
              centerTitle: true,
              actions: [
                Image.asset('assets/images/arrow_right.png'),
              ],
            ),
            SliverToBoxAdapter(
              child: Padding(
                padding: const EdgeInsets.only(top: 32, left: 16, right: 16),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    const Text(
                      'انتخاب دسته بندی آویز',
                      style: TextStyle(
                        fontFamily: 'sb',
                        fontSize: 16,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    const SizedBox(
                      width: 5,
                    ),
                    Image.asset('assets/images/category.png'),
                  ],
                ),
              ),
            ),
            SliverToBoxAdapter(
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 16, vertical: 40),
                child: Row(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Text(
                          'محدوده ملک',
                          style: TextStyle(
                              fontSize: 14,
                              fontFamily: "sm",
                              fontWeight: FontWeight.w400,
                              color: Colors.grey[500]),
                        ),
                        const SizedBox(
                          height: 16,
                        ),
                        Container(
                          height: 48,
                          width: 159,
                          decoration: BoxDecoration(
                              color: Colors.grey[100],
                              borderRadius: BorderRadius.circular(4)),
                          child: Center(
                            child: Text(
                              'خیابان صیاد شیرازی',
                              style: TextStyle(
                                fontFamily: 'sm',
                                fontSize: 16,
                                fontWeight: FontWeight.w400,
                                color: Colors.grey[400],
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                    const Spacer(),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Text(
                          'دسته بندی',
                          style: TextStyle(
                              fontSize: 14,
                              fontFamily: "sm",
                              fontWeight: FontWeight.w400,
                              color: Colors.grey[500]),
                        ),
                        const SizedBox(
                          height: 16,
                        ),
                        Container(
                          height: 48,
                          width: 159,
                          decoration: BoxDecoration(
                              color: Colors.grey[100],
                              borderRadius: BorderRadius.circular(4)),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Image.asset('assets/images/down_arrow.png'),
                              const Text(
                                'فروش آپارتمان',
                                style: TextStyle(
                                  fontFamily: 'sm',
                                  fontSize: 16,
                                  fontWeight: FontWeight.w400,
                                ),
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  ],
                ),
              ),
            ),
            SliverToBoxAdapter(
              child: Container(
                margin: const EdgeInsets.symmetric(horizontal: 16),
                width: MediaQuery.of(context).size.width,
                height: 1,
                color: Colors.grey[100],
              ),
            ),
            SliverToBoxAdapter(
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 16, vertical: 32),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    const Text(
                      'ویژگی ها',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w700,
                        fontFamily: 'sb',
                      ),
                    ),
                    const SizedBox(
                      width: 5,
                    ),
                    Image.asset('assets/images/linear-clipboard.png')
                  ],
                ),
              ),
            ),
            SliverToBoxAdapter(
              child: Padding(
                padding: const EdgeInsets.only(left: 16, right: 16, bottom: 24),
                child: Row(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Text(
                          'تعداد اتاق',
                          style: TextStyle(
                              fontSize: 14,
                              fontFamily: "sm",
                              fontWeight: FontWeight.w400,
                              color: Colors.grey[500]),
                        ),
                        const SizedBox(
                          height: 16,
                        ),
                        Container(
                          padding: const EdgeInsets.all(12),
                          height: 48,
                          width: 159,
                          decoration: BoxDecoration(
                              color: Colors.grey[100],
                              borderRadius: BorderRadius.circular(4)),
                          child: Row(
                            children: [
                              Image.asset('assets/images/arrows.png'),
                              const Spacer(),
                              Text(
                                '6',
                                style: TextStyle(
                                  fontFamily: 'sm',
                                  fontSize: 16,
                                  fontWeight: FontWeight.w400,
                                  color: Colors.grey[400],
                                ),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                    const Spacer(),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Text(
                          'متراژ',
                          style: TextStyle(
                              fontSize: 14,
                              fontFamily: "sm",
                              fontWeight: FontWeight.w400,
                              color: Colors.grey[500]),
                        ),
                        const SizedBox(
                          height: 16,
                        ),
                        Container(
                          padding: const EdgeInsets.all(12),
                          height: 48,
                          width: 159,
                          decoration: BoxDecoration(
                              color: Colors.grey[100],
                              borderRadius: BorderRadius.circular(4)),
                          child: Row(
                            children: [
                              Image.asset('assets/images/arrows.png'),
                              const Spacer(),
                              Text(
                                '350',
                                style: TextStyle(
                                  fontFamily: 'sm',
                                  fontSize: 16,
                                  fontWeight: FontWeight.w400,
                                  color: Colors.grey[400],
                                ),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ],
                ),
              ),
            ),
            SliverToBoxAdapter(
              child: Padding(
                padding: const EdgeInsets.only(left: 16, right: 16, bottom: 24),
                child: Row(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Text(
                          'سال ساخت',
                          style: TextStyle(
                              fontSize: 14,
                              fontFamily: "sm",
                              fontWeight: FontWeight.w400,
                              color: Colors.grey[500]),
                        ),
                        const SizedBox(
                          height: 16,
                        ),
                        Container(
                          padding: const EdgeInsets.all(12),
                          height: 48,
                          width: 159,
                          decoration: BoxDecoration(
                              color: Colors.grey[100],
                              borderRadius: BorderRadius.circular(4)),
                          child: Row(
                            children: [
                              Image.asset('assets/images/arrows.png'),
                              const Spacer(),
                              Text(
                                '1402',
                                style: TextStyle(
                                  fontFamily: 'sm',
                                  fontSize: 16,
                                  fontWeight: FontWeight.w400,
                                  color: Colors.grey[400],
                                ),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                    const Spacer(),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Text(
                          'طبقه',
                          style: TextStyle(
                              fontSize: 14,
                              fontFamily: "sm",
                              fontWeight: FontWeight.w400,
                              color: Colors.grey[500]),
                        ),
                        const SizedBox(
                          height: 16,
                        ),
                        Container(
                          padding: const EdgeInsets.all(12),
                          height: 48,
                          width: 159,
                          decoration: BoxDecoration(
                              color: Colors.grey[100],
                              borderRadius: BorderRadius.circular(4)),
                          child: Row(
                            children: [
                              Image.asset('assets/images/arrows.png'),
                              const Spacer(),
                              Text(
                                '3',
                                style: TextStyle(
                                  fontFamily: 'sm',
                                  fontSize: 16,
                                  fontWeight: FontWeight.w400,
                                  color: Colors.grey[400],
                                ),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ],
                ),
              ),
            ),
            SliverToBoxAdapter(
              child: Container(
                margin: const EdgeInsets.symmetric(horizontal: 16),
                width: MediaQuery.of(context).size.width,
                height: 1,
                color: Colors.grey[100],
              ),
            ),
            SliverToBoxAdapter(
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 16, vertical: 32),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    const Text(
                      'امکانات',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w700,
                        fontFamily: 'sb',
                      ),
                    ),
                    const SizedBox(
                      width: 5,
                    ),
                    Image.asset('assets/images/emcanat_icon.png')
                  ],
                ),
              ),
            ),
            SliverToBoxAdapter(
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(4),
                  border: Border.all(color: const Color(0xffD0D5DD)),
                ),
                margin: const EdgeInsets.only(left: 16, right: 16, bottom: 27),
                padding:
                    const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                child: Row(
                  children: [
                    SizedBox(
                      height: 24,
                      width: 24,
                      child: Switch(
                        value: true,
                        onChanged: (value) {},
                        activeColor: Colors.red,
                      ),
                    ),
                    const Spacer(),
                    const Text(
                      'آسانسور',
                      style: TextStyle(
                        fontFamily: 'sm',
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                      ),
                    )
                  ],
                ),
              ),
            ),
            SliverToBoxAdapter(
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(4),
                  border: Border.all(color: const Color(0xffD0D5DD)),
                ),
                margin: const EdgeInsets.only(left: 16, right: 16, bottom: 27),
                padding:
                    const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                child: Row(
                  children: [
                    SizedBox(
                      height: 24,
                      width: 24,
                      child: Switch(
                        value: false,
                        onChanged: (value) {},
                        activeColor: Colors.red,
                      ),
                    ),
                    const Spacer(),
                    const Text(
                      'پارکینگ',
                      style: TextStyle(
                        fontFamily: 'sm',
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                      ),
                    )
                  ],
                ),
              ),
            ),
            SliverToBoxAdapter(
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(4),
                  border: Border.all(color: const Color(0xffD0D5DD)),
                ),
                margin: const EdgeInsets.only(left: 16, right: 16, bottom: 27),
                padding:
                    const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                child: Row(
                  children: [
                    SizedBox(
                      height: 24,
                      width: 24,
                      child: Switch(
                        value: true,
                        onChanged: (value) {},
                        activeColor: Colors.red,
                      ),
                    ),
                    const Spacer(),
                    const Text(
                      'انباری',
                      style: TextStyle(
                        fontFamily: 'sm',
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                      ),
                    )
                  ],
                ),
              ),
            ),
            SliverToBoxAdapter(
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 16, vertical: 20),
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(
                      builder: (context) {
                        return CreateAvizScreen2();
                      },
                    ));
                  },
                  style: ElevatedButton.styleFrom(
                      elevation: 0,
                      backgroundColor: Colors.red,
                      minimumSize: Size(MediaQuery.of(context).size.width, 40)),
                  child: const Text(
                    'بعدی',
                    style: TextStyle(
                      color: Colors.white,
                      fontFamily: 'sb',
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
