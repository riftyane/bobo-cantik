import 'controller/splash_controller.dart';
import 'package:bobo_cantik/core/app_export.dart';
import 'package:flutter/material.dart';

class SplashScreen extends GetWidget<SplashController> {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: appTheme.deepOrange10002,
            body: SizedBox(
                height: SizeUtils.height,
                width: double.maxFinite,
                child: Stack(alignment: Alignment.center, children: [
                  CustomImageView(
                      imagePath: ImageConstant.imgGroup2,
                      height: 769.v,
                      width: 390.h,
                      alignment: Alignment.center),
                  Align(
                      alignment: Alignment.center,
                      child: SizedBox(
                          height: SizeUtils.height,
                          width: double.maxFinite,
                          child: Stack(
                              alignment: Alignment.bottomCenter,
                              children: [
                                CustomImageView(
                                    imagePath: ImageConstant.imgEllipse8,
                                    height: 844.v,
                                    width: 390.h,
                                    alignment: Alignment.center),
                                Align(
                                    alignment: Alignment.bottomCenter,
                                    child: Padding(
                                        padding: EdgeInsets.only(
                                            left: 68.h,
                                            right: 68.h,
                                            bottom: 8.v),
                                        child: Column(
                                            mainAxisSize: MainAxisSize.min,
                                            children: [
                                              Text("lbl_bobocantik".tr,
                                                  style: TextStyle(
                                                      color: appTheme.gray600,
                                                      fontSize: 42.fSize,
                                                      fontFamily: 'Poppins',
                                                      fontWeight:
                                                          FontWeight.w700)),
                                              SizedBox(height: 255.v),
                                              Text("lbl_build_by_ersi".tr,
                                                  style: TextStyle(
                                                      color: appTheme.gray600,
                                                      fontSize: 14.fSize,
                                                      fontFamily: 'Poppins',
                                                      fontWeight:
                                                          FontWeight.w600)),
                                              SizedBox(height: 104.v),
                                              SizedBox(
                                                  width: 120.h,
                                                  child: Divider())
                                            ])))
                              ])))
                ]))));
  }
}
