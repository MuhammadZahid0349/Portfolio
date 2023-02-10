import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:portfolio/ConstantFiles/ConstColor.dart';
import 'package:velocity_x/velocity_x.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 10.h),
          child: Column(
            children: [
              30.heightBox,
              ListTile(
                title: Row(
                  // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                        width: 100,
                        height: 100,
                        child: CircleAvatar(
                          backgroundImage: AssetImage("assets/Pic.jpeg"),
                          radius: 50.r,
                        ),
                        decoration: BoxDecoration(
                            border: Border.all(
                                color: ConstColor.Clogogreen, width: 2.w),
                            shape: BoxShape.circle)),
                    20.w.widthBox,
                    Text(
                      "Muhammad Zahid",
                      softWrap: true,
                      style: TextStyle(
                          fontSize: 20.sp,
                          color: Colors.white,
                          fontWeight: FontWeight.w500),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
