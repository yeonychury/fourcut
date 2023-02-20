import 'package:flutter/cupertino.dart';

double getScreenWidth(BuildContext context) {
  return MediaQuery.of(context).size.width;
}

double getScreenHeight(BuildContext context) {
  if (MediaQuery.of(context).size.height > 1080) {
    return MediaQuery.of(context).size.height;
  } else {
    return 1080;
  }
}

double getScreenNotchTop(BuildContext context) {
  return MediaQuery.of(context).viewPadding.top;
}

double getScreenNotchBottom(BuildContext context) {
  return MediaQuery.of(context).viewPadding.bottom;
}

double photoWidth() {
  return 390;
}

double photoHeight(BuildContext context) {
  return (getScreenHeight(context) * 0.8) * 0.22;
}

double photoPaddingHorizontal() {
  return 20;
}

double photoPaddingVertical() {
  return 20;
}
