import 'package:aviz_app/screens/login/login_number2_screen.dart';
import 'package:aviz_app/screens/register/register_screen1.dart';
import 'package:flutter/material.dart';

class LoginNumberScreen extends StatefulWidget {
  const LoginNumberScreen({super.key});

  @override
  State<LoginNumberScreen> createState() => _LoginNumberScreenState();
}

class _LoginNumberScreenState extends State<LoginNumberScreen> {
  TextEditingController controller = TextEditingController();
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
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
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
                    width: 10,
                  ),
                  const Text(
                    'ورود به',
                    style: TextStyle(
                      fontFamily: 'sb',
                      fontWeight: FontWeight.w700,
                      fontSize: 16,
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 16,
              ),
              Text(
                '!خوشحالیم که مجددا آویز رو برای آگهی انتخاب کردی',
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
              Directionality(
                textDirection: TextDirection.rtl,
                child: Container(
                  decoration: BoxDecoration(
                      color: Colors.grey[100],
                      borderRadius: BorderRadius.circular(4)),
                  child: TextField(
                    controller: controller,
                    decoration: InputDecoration(
                      hintText: 'شماره موبایل',
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
              ),
              const Spacer(),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => LoginNumber2Screen(),
                      ));
                },
                style: ElevatedButton.styleFrom(
                    elevation: 0,
                    backgroundColor: Colors.red,
                    minimumSize: Size(MediaQuery.of(context).size.width, 40)),
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.arrow_back_ios,
                      size: 24,
                    ),
                    Text(
                      'مرحله بعد',
                      style: TextStyle(
                        color: Colors.white,
                        fontFamily: 'sb',
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 16,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  TextButton(
                    onPressed: () {
                      Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                            builder: (context) => RegisterScreen1(),
                          ));
                    },
                    child: const Text(
                      'ثبت نام',
                      style: TextStyle(
                          fontFamily: 'sm',
                          fontWeight: FontWeight.w500,
                          fontSize: 14,
                          color: Colors.red),
                    ),
                  ),
                  Text(
                    'تاحالا ثبت نام نکردی؟',
                    style: TextStyle(
                      fontFamily: 'sm',
                      fontWeight: FontWeight.w500,
                      fontSize: 14,
                      color: Colors.grey[400],
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 16,
              )
            ],
          ),
        ),
      ),
    );
  }
}
