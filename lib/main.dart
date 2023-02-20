import 'package:flutter/material.dart';
import 'package:fourcut/view/four_cut_main.dart';
import 'package:get/get.dart';

void main() => runApp(const FourCut());

class FourCut extends StatelessWidget {
  const FourCut({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Yeony❤️Chury',
      theme: ThemeData(
        primaryColor: Colors.white,
      ),
      debugShowCheckedModeBanner: false,
      scrollBehavior: const ScrollBehavior().copyWith(scrollbars: false),
      home: const FourCutMainScreen(),
    );
  }
}
