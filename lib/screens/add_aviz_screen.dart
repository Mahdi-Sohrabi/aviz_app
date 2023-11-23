import 'package:aviz_app/screens/create_aviz_screen.dart';
import 'package:flutter/material.dart';

class AddAvizScreen extends StatelessWidget {
  const AddAvizScreen({super.key});

  @override
  Widget build(BuildContext context) {
    List<String> verticalListName = [
      'اجاره مسکونی',
      'فروش مسکونی',
      'فروش دفاتر اداری و تجاری',
      'اجاره دفاتر اداری و تجاری',
      'اجاره کوتاه مدت',
      'پروژه های ساخت و ساز',
    ];
    return Scaffold(
      appBar: AppBar(
        leading: Image.asset('assets/images/cancel.png'),
        backgroundColor: Colors.white,
        elevation: 0,
        actions: [
          Image.asset('assets/images/arrow_right.png'),
        ],
        centerTitle: true,
        title: const Text(
          'دسته بندی آویز',
          style: TextStyle(
            fontSize: 16,
            color: Colors.red,
            fontFamily: 'sm',
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
      backgroundColor: Colors.white,
      body: SafeArea(
        child: CustomScrollView(
          slivers: [
            SliverPadding(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 36),
              sliver: SliverList.builder(
                itemCount: verticalListName.length,
                itemBuilder: (context, index) {
                  return GestureDetector(
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(
                        builder: (context) {
                          return createAvizScreen();
                        },
                      ));
                    },
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(4),
                        border: Border.all(
                          width: 1,
                          color: const Color(0xffF2F4F7),
                        ),
                      ),
                      padding: const EdgeInsets.symmetric(
                          horizontal: 16, vertical: 8),
                      margin: const EdgeInsets.only(top: 16),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          const Icon(
                            Icons.arrow_back_ios,
                            color: Colors.red,
                          ),
                          const Spacer(),
                          Text(
                            verticalListName[index],
                            style: const TextStyle(
                              fontFamily: 'sm',
                              fontWeight: FontWeight.w400,
                              fontSize: 16,
                            ),
                          )
                        ],
                      ),
                    ),
                  );
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
