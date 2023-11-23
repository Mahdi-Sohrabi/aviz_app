import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: SingleChildScrollView(
            child: Column(
              children: [
                const SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      'آویز من',
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
                const SizedBox(
                  height: 32,
                ),
                Container(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                  margin: const EdgeInsets.only(bottom: 32),
                  height: 40,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: const Color.fromARGB(255, 216, 214, 214),
                    ),
                    borderRadius: BorderRadius.circular(4),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text(
                        '...جستجو',
                        style: TextStyle(
                            fontFamily: 'sm',
                            fontSize: 16,
                            color: Colors.grey[400],
                            fontWeight: FontWeight.w400),
                      ),
                      const SizedBox(
                        width: 5,
                      ),
                      Image.asset('assets/images/search.png')
                    ],
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    const Text(
                      'حساب کاربری ',
                      style: TextStyle(
                        fontFamily: 'sm',
                        fontWeight: FontWeight.w700,
                        fontSize: 16,
                      ),
                    ),
                    Image.asset('assets/images/profile.png')
                  ],
                ),
                const SizedBox(
                  height: 32,
                ),
                Container(
                  padding: const EdgeInsets.all(16),
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(4),
                    border: Border.all(
                      color: Color.fromARGB(255, 218, 215, 215),
                    ),
                  ),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Image.asset('assets/images/edit2.png'),
                      const Spacer(),
                      const Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Text(
                            'سید محمد جواد هاشمی',
                            style: TextStyle(
                              fontFamily: 'sm',
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Text(
                            '۰۹۱۱۷۵۴۰۱۴۵',
                            style: TextStyle(
                              fontFamily: 'sm',
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        width: 16,
                      ),
                      Image.asset('assets/images/vector.png'),
                    ],
                  ),
                ),
                Container(
                  margin: const EdgeInsets.symmetric(vertical: 32),
                  height: 1,
                  width: MediaQuery.of(context).size.width,
                  color: Colors.grey[350],
                ),
                widgetItem(context, 'آگهی های من', 'assets/images/note2.png'),
                widgetItem(context, 'پرداخت های من', 'assets/images/card.png'),
                widgetItem(context, 'بازدید های اخیر', 'assets/images/eye.png'),
                widgetItem(context, 'ذخیره شده ها', 'assets/images/save2.png'),
                widgetItem(context, 'تنظیمات', 'assets/images/setting.png'),
                widgetItem(context, 'پشتیبانی و قوانین',
                    'assets/images/message-question.png'),
                widgetItem(context, 'درباره آویز', 'assets/images/info.png'),
                Text(
                  'نسخه \n1.5.9',
                  style: TextStyle(
                      fontFamily: 'sm',
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                      color: Colors.grey[400]),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

widgetItem(context, String textarg, String imagearg) {
  return Container(
    padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
    margin: EdgeInsets.only(bottom: 16),
    decoration: BoxDecoration(
      border: Border.all(
        color: Color.fromARGB(255, 225, 226, 228),
      ),
      borderRadius: BorderRadius.circular(4),
    ),
    width: MediaQuery.of(context).size.width,
    child: Row(
      children: [
        Icon(
          Icons.arrow_back_ios,
          color: Colors.grey[300],
        ),
        const Spacer(),
        Text(
          textarg,
          style: const TextStyle(
            fontFamily: 'sm',
            fontWeight: FontWeight.w500,
            fontSize: 16,
          ),
        ),
        const SizedBox(
          width: 16,
        ),
        Image.asset(imagearg),
      ],
    ),
  );
}
