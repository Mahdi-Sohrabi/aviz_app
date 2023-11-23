import 'package:aviz_app/screens/dashbord_screen.dart';
import 'package:aviz_app/screens/main_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class LoginNumber2Screen extends StatefulWidget {
  const LoginNumber2Screen({super.key});

  @override
  State<LoginNumber2Screen> createState() => _LoginNumber2ScreenState();
}

class _LoginNumber2ScreenState extends State<LoginNumber2Screen> {
  TextEditingController controller1 = TextEditingController();
  TextEditingController controller2 = TextEditingController();
  TextEditingController controller3 = TextEditingController();
  TextEditingController controller4 = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 17),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              const SizedBox(
                width: double.infinity,
                height: 56,
              ),
              const Text(
                'تایید شماره موبایل',
                style: TextStyle(
                  fontFamily: 'sb',
                  fontWeight: FontWeight.w700,
                  fontSize: 16,
                ),
              ),
              const SizedBox(
                height: 16,
              ),
              Text(
                'کد ورود پیامک شده را وارد کنید',
                style: TextStyle(
                  color: Colors.grey[500],
                  fontSize: 14,
                  fontFamily: 'sm',
                  fontWeight: FontWeight.w400,
                ),
              ),
              const SizedBox(
                height: 32,
              ),
              Row(
                children: [
                  argNumber(controller: controller1),
                  argNumber(controller: controller2),
                  argNumber(controller: controller3),
                  argNumber(controller: controller4),
                ],
              ),
              SizedBox(
                height: 32,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'ارسال مجدد کد',
                    style: TextStyle(
                      fontFamily: 'sm',
                      fontWeight: FontWeight.w500,
                      fontSize: 14,
                      color: Colors.grey[400],
                    ),
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Text(
                    '۰۰:۴۵',
                    style: TextStyle(
                      fontFamily: 'sm',
                      fontWeight: FontWeight.w500,
                      fontSize: 18,
                      color: Colors.grey[700],
                    ),
                  ),
                ],
              ),
              const Spacer(),
              ElevatedButton(
                onPressed: () {
                  Navigator.pushAndRemoveUntil(
                    context,
                    MaterialPageRoute(builder: (context) => DashBoardScreen()),
                    (Route<dynamic> route) => false,
                  );
                },
                style: ElevatedButton.styleFrom(
                    elevation: 0,
                    backgroundColor: Colors.red,
                    minimumSize: Size(MediaQuery.of(context).size.width, 40)),
                child: const Text(
                  'تایید ورود',
                  style: TextStyle(
                    color: Colors.white,
                    fontFamily: 'sb',
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
              const SizedBox(
                height: 32,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class argNumber extends StatelessWidget {
  const argNumber({
    super.key,
    required this.controller,
  });

  final TextEditingController controller;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 16),
      width: 73,
      decoration: BoxDecoration(
          color: Colors.grey[300], borderRadius: BorderRadius.circular(4)),
      child: TextField(
        keyboardType: TextInputType.number,
        inputFormatters: [FilteringTextInputFormatter.digitsOnly],
        controller: controller,
        decoration: InputDecoration(
          border: InputBorder.none,
        ),
      ),
    );
  }
}
