import 'package:aviz_app/screens/dashbord_screen.dart';
import 'package:flutter/material.dart';

class CreateAvizScreen3 extends StatefulWidget {
  const CreateAvizScreen3({super.key});

  @override
  State<CreateAvizScreen3> createState() => _CreateAvizScreen3State();
}

class _CreateAvizScreen3State extends State<CreateAvizScreen3> {
  TextEditingController controllerTitle = TextEditingController();
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
        child: SingleChildScrollView(
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
                      Image.asset('assets/images/camera.png'),
                      const SizedBox(
                        width: 5,
                      ),
                      const Text(
                        'تصویر آویز',
                        style: TextStyle(
                          fontFamily: 'sm',
                          fontWeight: FontWeight.w700,
                          fontSize: 16,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 24,
                  ),
                  Container(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 70, vertical: 41),
                    width: 343,
                    height: 165,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(4),
                      border: Border.all(
                        color: const Color(0xff98A2B3),
                      ),
                    ),
                    child: Center(
                      child: Column(
                        children: [
                          Text(
                            'لطفا تصویرآویز خود را بارگذاری کنید',
                            style: TextStyle(
                              fontFamily: 'sm',
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                              color: Colors.grey[500],
                            ),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          ElevatedButton(
                              onPressed: () {},
                              style: ElevatedButton.styleFrom(
                                maximumSize: const Size(152, 40),
                                backgroundColor: Colors.red,
                              ),
                              child: Row(
                                children: [
                                  Image.asset('assets/images/upload.png'),
                                  const SizedBox(
                                    width: 5,
                                  ),
                                  const Text(
                                    'انتخاب تصویر',
                                    style: TextStyle(
                                      fontSize: 16,
                                      fontFamily: 'sm',
                                      fontWeight: FontWeight.w400,
                                      color: Colors.white,
                                    ),
                                  ),
                                ],
                              )),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 32,
                  ),
                  Row(
                    children: [
                      Image.asset('assets/images/edit.png'),
                      const SizedBox(
                        width: 5,
                      ),
                      const Text(
                        'عنوان آویز',
                        style: TextStyle(
                          fontFamily: 'sm',
                          fontWeight: FontWeight.w700,
                          fontSize: 16,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  Container(
                    decoration: BoxDecoration(
                        color: Colors.grey[100],
                        borderRadius: BorderRadius.circular(4)),
                    child: TextField(
                      controller: controllerTitle,
                      decoration: InputDecoration(
                        hintText: '  عنوان آویز را وارد کنید',
                        hintStyle: TextStyle(
                          color: Colors.grey[400],
                          fontSize: 16,
                          fontFamily: 'sm',
                          fontWeight: FontWeight.w500,
                        ),
                        border: InputBorder.none,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 40,
                  ),
                  Row(
                    children: [
                      Image.asset('assets/images/text.png'),
                      const SizedBox(
                        width: 5,
                      ),
                      const Text(
                        'توضیحات',
                        style: TextStyle(
                          fontFamily: 'sm',
                          fontWeight: FontWeight.w700,
                          fontSize: 16,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  Container(
                    decoration: BoxDecoration(
                        color: Colors.grey[100],
                        borderRadius: BorderRadius.circular(4)),
                    child: TextField(
                      maxLines: 5,
                      controller: controllerTitle,
                      decoration: InputDecoration(
                        hintText: '  توضیحات آویز را وارد کنید ...',
                        hintStyle: TextStyle(
                          color: Colors.grey[400],
                          fontSize: 16,
                          fontFamily: 'sm',
                          fontWeight: FontWeight.w500,
                        ),
                        border: InputBorder.none,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 32,
                  ),
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(4),
                      border: Border.all(color: const Color(0xffD0D5DD)),
                    ),
                    padding:
                        const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                    child: Row(
                      children: [
                        const Text(
                          'فعال کردن گفتگو',
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
                            value: false,
                            onChanged: (value) {},
                            activeColor: Colors.red,
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 32,
                  ),
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(4),
                      border: Border.all(color: const Color(0xffD0D5DD)),
                    ),
                    padding:
                        const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                    child: Row(
                      children: [
                        const Text(
                          'فعال کردن تماس',
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
                  const SizedBox(
                    height: 40,
                  ),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.pushAndRemoveUntil(
                        context,
                        MaterialPageRoute(
                            builder: (context) => DashBoardScreen()),
                        (Route<dynamic> route) => false,
                      );
                    },
                    style: ElevatedButton.styleFrom(
                        elevation: 0,
                        backgroundColor: Colors.red,
                        minimumSize:
                            Size(MediaQuery.of(context).size.width, 40)),
                    child: const Text(
                      'ثبت آگهی',
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
      ),
    );
  }
}
