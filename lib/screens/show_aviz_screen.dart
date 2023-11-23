import 'package:flutter/material.dart';

class ShowAvizScreen extends StatefulWidget {
  const ShowAvizScreen({super.key});

  @override
  State<ShowAvizScreen> createState() => _ShowAvizScreenState();
}

class _ShowAvizScreenState extends State<ShowAvizScreen>
    with SingleTickerProviderStateMixin {
  TabController? _tabController;
  @override
  void initState() {
    super.initState();
    _tabController = TabController(
      length: 4,
      vsync: this,
      initialIndex: _selectedIndex,
    );
  }

  int _selectedIndex = 2;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Stack(
          alignment: Alignment.bottomCenter,
          children: [
            NestedScrollView(
              headerSliverBuilder: (context, innerBoxIsScrolled) {
                return [
                  SliverPadding(
                    padding: const EdgeInsets.only(
                      left: 16,
                      right: 16,
                      top: 10,
                    ),
                    sliver: SliverToBoxAdapter(
                      child: Row(
                        children: [
                          Image.asset('assets/images/icon_save.png'),
                          const SizedBox(
                            width: 24,
                          ),
                          Image.asset('assets/images/share.png'),
                          const SizedBox(
                            width: 24,
                          ),
                          Image.asset('assets/images/information.png'),
                          const Spacer(),
                          Image.asset('assets/images/arrow_right.png'),
                        ],
                      ),
                    ),
                  ),
                  SliverPadding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 16, vertical: 32),
                    sliver: SliverToBoxAdapter(
                      child: SizedBox(
                        width: MediaQuery.of(context).size.width,
                        child: Image.asset('assets/images/image3.png'),
                      ),
                    ),
                  ),
                  SliverPadding(
                    padding:
                        const EdgeInsets.only(left: 16, right: 16, bottom: 32),
                    sliver: SliverToBoxAdapter(
                      child: Row(
                        children: [
                          Text(
                            'دقیقه پیش در گرگان 16',
                            textDirection: TextDirection.rtl,
                            style: TextStyle(
                                fontSize: 14,
                                color: Colors.grey[500],
                                fontFamily: 'sm',
                                fontWeight: FontWeight.w400),
                          ),
                          const Spacer(),
                          Container(
                            padding: const EdgeInsets.symmetric(horizontal: 8),
                            height: 29,
                            width: 59,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(4),
                              color: Colors.grey[100],
                            ),
                            child: const Center(
                              child: Text(
                                'آپارتمان',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  color: Colors.red,
                                  fontFamily: 'sm',
                                  fontSize: 14,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  const SliverToBoxAdapter(
                    child: Padding(
                      padding: EdgeInsets.only(bottom: 32, left: 16, right: 16),
                      child: Text(
                        'آپارتمان ۵۰۰ متری در صیاد شیرازی',
                        textAlign: TextAlign.end,
                        style: TextStyle(
                          fontFamily: 'sb',
                          fontSize: 16,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ),
                  ),
                  SliverToBoxAdapter(
                    child: Padding(
                      padding: const EdgeInsets.only(
                          left: 16, right: 16, bottom: 32),
                      child: Container(
                        height: 1,
                        width: MediaQuery.of(context).size.width,
                        color: Colors.grey[300],
                      ),
                    ),
                  ),
                  SliverToBoxAdapter(
                    child: Container(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 16, vertical: 8),
                      margin: const EdgeInsets.only(
                          left: 16, right: 16, bottom: 32),
                      height: 40,
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: Colors.grey,
                        ),
                        borderRadius: BorderRadius.circular(4),
                      ),
                      child: Row(
                        children: [
                          Icon(
                            Icons.arrow_back_ios,
                            color: Colors.grey[300],
                          ),
                          const Spacer(),
                          const Text(
                            '! هشدار های قبل از معامله',
                            style: TextStyle(
                                fontFamily: 'sm',
                                fontSize: 16,
                                fontWeight: FontWeight.w400),
                          )
                        ],
                      ),
                    ),
                  ),
                  SliverToBoxAdapter(
                    child: TabBar(
                      onTap: (index) => setState(() => _selectedIndex = index),
                      indicatorColor: Colors.transparent,
                      isScrollable: true,
                      controller: _tabController,
                      tabs: [
                        Tab(
                          child: Container(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 4, vertical: 4),
                            decoration: BoxDecoration(
                              border:
                                  Border.all(color: const Color(0xffF9FAFB)),
                              color: _tabController!.index == 0
                                  ? Colors.red
                                  : Colors.white,
                              borderRadius: BorderRadius.circular(4),
                            ),
                            child: Text(
                              'توضیحات',
                              style: TextStyle(
                                fontFamily: 'sm',
                                color: _tabController!.index == 0
                                    ? Colors.white
                                    : Colors.red,
                              ),
                            ),
                          ),
                        ),
                        Tab(
                          child: Container(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 8, vertical: 4),
                            decoration: BoxDecoration(
                                color: _tabController!.index == 1
                                    ? Colors.red
                                    : Colors.white,
                                borderRadius: BorderRadius.circular(4),
                                border:
                                    Border.all(color: const Color(0xffF9FAFB))),
                            child: Text(
                              'ویژگی ها و امکانات',
                              style: TextStyle(
                                fontFamily: 'sm',
                                color: _tabController!.index == 1
                                    ? Colors.white
                                    : Colors.red,
                              ),
                            ),
                          ),
                        ),
                        Tab(
                          child: Container(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 8, vertical: 4),
                            decoration: BoxDecoration(
                                color: _tabController!.index == 2
                                    ? Colors.red
                                    : Colors.white,
                                borderRadius: BorderRadius.circular(4),
                                border:
                                    Border.all(color: const Color(0xffF9FAFB))),
                            child: Text(
                              'قیمت',
                              style: TextStyle(
                                fontFamily: 'sm',
                                color: _tabController!.index == 2
                                    ? Colors.white
                                    : Colors.red,
                              ),
                            ),
                          ),
                        ),
                        Tab(
                          child: Container(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 4, vertical: 4),
                            decoration: BoxDecoration(
                              border:
                                  Border.all(color: const Color(0xffF9FAFB)),
                              color: _tabController!.index == 3
                                  ? Colors.red
                                  : Colors.white,
                              borderRadius: BorderRadius.circular(4),
                            ),
                            child: Text(
                              'مشخصات',
                              style: TextStyle(
                                fontFamily: 'sm',
                                color: _tabController!.index == 3
                                    ? Colors.white
                                    : Colors.red,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ];
              },
              body: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: TabBarView(
                  controller: _tabController,
                  physics: NeverScrollableScrollPhysics(),
                  children: [
                    SingleChildScrollView(
                      child: Column(
                        children: [
                          SizedBox(
                            height: 32,
                          ),
                          Text(
                            'ویلا ۵۰۰ متری در خیابان صیاد شیرازی ویو عالی وسط جنگل قیمت فوق العاده  گذاشتم فروش فوری  خریدار باشی تخفیف پای معامله میدم.',
                            textAlign: TextAlign.end,
                            style: TextStyle(
                              fontFamily: 'sm',
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                              color: Colors.grey[500],
                            ),
                          ),
                        ],
                      ),
                    ),
                    SingleChildScrollView(
                      child: Column(
                        children: [
                          SizedBox(
                            height: 10,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              const Text(
                                'ویژگی ها',
                                style: TextStyle(
                                  fontFamily: 'sm',
                                  fontWeight: FontWeight.w700,
                                  fontSize: 16,
                                ),
                              ),
                              const SizedBox(
                                width: 5,
                              ),
                              Image.asset('assets/images/linear-clipboard.png'),
                              const SizedBox(
                                width: 5,
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 24,
                          ),
                          Container(
                            padding: const EdgeInsets.symmetric(
                                vertical: 8, horizontal: 16),
                            decoration: BoxDecoration(
                              border: Border.all(
                                color: Colors.grey,
                              ),
                              borderRadius: BorderRadius.circular(4),
                            ),
                            child: Column(
                              children: [
                                Row(
                                  children: [
                                    Text(
                                      'تک برگ',
                                      style: TextStyle(
                                        color: Colors.grey[500],
                                        fontFamily: 'sm',
                                        fontSize: 16,
                                        fontWeight: FontWeight.w400,
                                      ),
                                    ),
                                    const Spacer(),
                                    Text(
                                      'سند',
                                      style: TextStyle(
                                        color: Colors.grey[500],
                                        fontFamily: 'sm',
                                        fontSize: 16,
                                        fontWeight: FontWeight.w400,
                                      ),
                                    ),
                                  ],
                                ),
                                const SizedBox(
                                  height: 16,
                                ),
                                Container(
                                  width: 311,
                                  height: 1,
                                  color: Colors.grey[300],
                                ),
                                const SizedBox(
                                  height: 16,
                                ),
                                Row(
                                  children: [
                                    Text(
                                      'شمالی',
                                      style: TextStyle(
                                        color: Colors.grey[500],
                                        fontFamily: 'sm',
                                        fontSize: 16,
                                        fontWeight: FontWeight.w400,
                                      ),
                                    ),
                                    const Spacer(),
                                    Text(
                                      'جهت ساختمان',
                                      style: TextStyle(
                                        color: Colors.grey[500],
                                        fontFamily: 'sm',
                                        fontSize: 16,
                                        fontWeight: FontWeight.w400,
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                          const SizedBox(
                            height: 32,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              const Text(
                                'امکانات',
                                style: TextStyle(
                                  fontFamily: 'sm',
                                  fontWeight: FontWeight.w700,
                                  fontSize: 16,
                                ),
                              ),
                              const SizedBox(
                                width: 5,
                              ),
                              Image.asset('assets/images/emcanat_icon.png'),
                              const SizedBox(
                                width: 5,
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 32,
                          ),
                          Container(
                            padding: const EdgeInsets.symmetric(
                                vertical: 8, horizontal: 16),
                            decoration: BoxDecoration(
                              border: Border.all(
                                color: Colors.grey,
                              ),
                              borderRadius: BorderRadius.circular(4),
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                const SizedBox(
                                  width: double.infinity,
                                ),
                                Text(
                                  'آسانسور',
                                  style: TextStyle(
                                    color: Colors.grey[500],
                                    fontFamily: 'sm',
                                    fontSize: 16,
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                                const SizedBox(
                                  height: 16,
                                ),
                                Container(
                                  width: 311,
                                  height: 1,
                                  color: Colors.grey[300],
                                ),
                                const SizedBox(
                                  height: 16,
                                ),
                                Text(
                                  'پارکینگ',
                                  style: TextStyle(
                                    color: Colors.grey[500],
                                    fontFamily: 'sm',
                                    fontSize: 16,
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                                const SizedBox(
                                  height: 16,
                                ),
                                Container(
                                  width: 311,
                                  height: 1,
                                  color: Colors.grey[300],
                                ),
                                const SizedBox(
                                  height: 16,
                                ),
                                Text(
                                  'انباری',
                                  style: TextStyle(
                                    color: Colors.grey[500],
                                    fontFamily: 'sm',
                                    fontSize: 16,
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                                const SizedBox(
                                  height: 16,
                                ),
                                Container(
                                  width: 311,
                                  height: 1,
                                  color: Colors.grey[300],
                                ),
                                const SizedBox(
                                  height: 16,
                                ),
                                Text(
                                  'بالکن',
                                  style: TextStyle(
                                    color: Colors.grey[500],
                                    fontFamily: 'sm',
                                    fontSize: 16,
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    Column(
                      children: [
                        SizedBox(
                          height: 30,
                        ),
                        Container(
                          padding: const EdgeInsets.symmetric(
                              vertical: 8, horizontal: 16),
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: Colors.black,
                            ),
                            borderRadius: BorderRadius.circular(4),
                          ),
                          child: Column(
                            children: [
                              const Row(
                                children: [
                                  Text(
                                    '۴۶٬۴۶۰٬۰۰۰',
                                    style: TextStyle(
                                      fontFamily: 'sm',
                                      fontSize: 16,
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                  Spacer(),
                                  Text(
                                    ': قیمت هر متر',
                                    style: TextStyle(
                                      fontFamily: 'sm',
                                      fontSize: 16,
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                ],
                              ),
                              const SizedBox(
                                height: 16,
                              ),
                              Container(
                                width: 311,
                                height: 1,
                                color: Colors.grey[300],
                              ),
                              const SizedBox(
                                height: 16,
                              ),
                              const Row(
                                children: [
                                  Text(
                                    '۲۳٬۲۳۰٬۰۰۰٬۰۰۰',
                                    style: TextStyle(
                                      fontFamily: 'sm',
                                      fontSize: 16,
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                  Spacer(),
                                  Text(
                                    ': قیمت کل',
                                    style: TextStyle(
                                      fontFamily: 'sm',
                                      fontSize: 16,
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    SingleChildScrollView(
                      child: Column(
                        children: [
                          const SizedBox(
                            height: 32,
                          ),
                          Container(
                            decoration: BoxDecoration(
                              border: Border.all(color: Colors.grey),
                              borderRadius: BorderRadius.circular(4),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                  padding: const EdgeInsets.all(24),
                                  child: Column(
                                    children: [
                                      Text(
                                        'ساخت',
                                        style: TextStyle(
                                          fontFamily: 'sm',
                                          fontSize: 14,
                                          color: Colors.grey[500],
                                        ),
                                      ),
                                      const SizedBox(
                                        height: 5,
                                      ),
                                      const Text(
                                        '1402',
                                        style: TextStyle(
                                          fontFamily: 'sm',
                                          fontSize: 14,
                                          fontWeight: FontWeight.w400,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Container(
                                  height: 48,
                                  width: 1,
                                  color: Colors.grey,
                                ),
                                Container(
                                  padding: const EdgeInsets.all(24),
                                  child: Column(
                                    children: [
                                      Text(
                                        'طبقه',
                                        style: TextStyle(
                                          fontFamily: 'sm',
                                          fontSize: 14,
                                          color: Colors.grey[500],
                                        ),
                                      ),
                                      const SizedBox(
                                        height: 5,
                                      ),
                                      const Text(
                                        'دوبلکس',
                                        style: TextStyle(
                                          fontFamily: 'sm',
                                          fontSize: 14,
                                          fontWeight: FontWeight.w400,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Container(
                                  height: 48,
                                  width: 1,
                                  color: Colors.grey,
                                ),
                                Container(
                                  padding: const EdgeInsets.all(24),
                                  child: Column(
                                    children: [
                                      Text(
                                        'اتاق',
                                        style: TextStyle(
                                          fontFamily: 'sm',
                                          fontSize: 14,
                                          color: Colors.grey[500],
                                        ),
                                      ),
                                      const SizedBox(
                                        height: 5,
                                      ),
                                      const Text(
                                        '6',
                                        style: TextStyle(
                                          fontFamily: 'sm',
                                          fontSize: 14,
                                          fontWeight: FontWeight.w400,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Container(
                                  height: 48,
                                  width: 1,
                                  color: Colors.grey,
                                ),
                                Container(
                                  padding: const EdgeInsets.all(24),
                                  child: Column(
                                    children: [
                                      Text(
                                        'متراژ',
                                        style: TextStyle(
                                          fontFamily: 'sm',
                                          fontSize: 14,
                                          color: Colors.grey[500],
                                        ),
                                      ),
                                      const SizedBox(
                                        height: 5,
                                      ),
                                      const Text(
                                        '500',
                                        style: TextStyle(
                                          fontFamily: 'sm',
                                          fontSize: 14,
                                          fontWeight: FontWeight.w400,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                          const SizedBox(
                            height: 32,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              const Text(
                                'عنوان آویز',
                                style: TextStyle(
                                  fontFamily: 'sm',
                                  fontWeight: FontWeight.w700,
                                  fontSize: 16,
                                ),
                              ),
                              const SizedBox(
                                width: 5,
                              ),
                              Image.asset('assets/images/map.png'),
                              const SizedBox(
                                width: 5,
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 24,
                          ),
                          Image.asset('assets/images/map2.png'),
                          const SizedBox(
                            height: 32,
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 20),
              child: Row(
                children: [
                  ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                        elevation: 0,
                        backgroundColor: Colors.red,
                        minimumSize: const Size(159, 40)),
                    child: Row(
                      children: [
                        const Text(
                          'اطلاعات تماس',
                          style: TextStyle(
                            color: Colors.white,
                            fontFamily: 'sb',
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        const SizedBox(
                          width: 5,
                        ),
                        Image.asset('assets/images/call.png')
                      ],
                    ),
                  ),
                  Spacer(),
                  ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                        elevation: 0,
                        backgroundColor: Colors.red,
                        minimumSize: const Size(159, 40)),
                    child: Row(
                      children: [
                        const Text(
                          'گفتگو',
                          style: TextStyle(
                            color: Colors.white,
                            fontFamily: 'sb',
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        const SizedBox(
                          width: 5,
                        ),
                        Image.asset('assets/images/message.png')
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
