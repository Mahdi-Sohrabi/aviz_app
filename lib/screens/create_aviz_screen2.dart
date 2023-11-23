import 'package:aviz_app/screens/create_aviz_screen3.dart';
import 'package:flutter/material.dart';

class CreateAvizScreen2 extends StatelessWidget {
  const CreateAvizScreen2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: Image.asset('assets/images/cancel.png'),
        title: const Text(
          ' دسته بندی آویز',
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
      body: SafeArea(
        child: Directionality(
          textDirection: TextDirection.rtl,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Column(
              children: [
                const SizedBox(
                  height: 32,
                ),
                Row(
                  children: [
                    const Text(
                      'موقعیت مکانی',
                      style: TextStyle(
                        fontFamily: 'sm',
                        fontSize: 16,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    const SizedBox(
                      width: 5,
                    ),
                    Image.asset('assets/images/map.png'),
                  ],
                ),
                const SizedBox(
                  height: 16,
                ),
                Text(
                  'بعد انتخاب محل دقیق روی نقشه میتوانید نمایش آن را فعال یا غیر فعال کید تا حریم خصوصی شما خفظ شود.',
                  style: TextStyle(
                    fontFamily: 'sm',
                    fontSize: 14,
                    color: Colors.grey[500],
                    fontWeight: FontWeight.w400,
                  ),
                ),
                const SizedBox(
                  height: 32,
                ),
                Image.asset('assets/images/map2.png'),
                const SizedBox(
                  height: 40,
                ),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(4),
                    border: Border.all(color: const Color(0xffD0D5DD)),
                  ),
                  margin:
                      const EdgeInsets.only(left: 16, right: 16, bottom: 27),
                  padding:
                      const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                  child: Row(
                    children: [
                      const Text(
                        'موقعیت دقیق نقشه نمایش داده شود؟',
                        style: TextStyle(
                          fontFamily: 'sm',
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      const Spacer(),
                      SizedBox(
                        height: 24,
                        width: 24,
                        child: Switch(
                          value: true,
                          onChanged: (value) {},
                          activeColor: Colors.red,
                        ),
                      ),
                    ],
                  ),
                ),
                const Spacer(),
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(
                      builder: (context) {
                        return const CreateAvizScreen3();
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
                const SizedBox(
                  height: 40,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
