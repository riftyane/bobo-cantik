import 'controller/select_room_controller.dart';
import 'package:bobo_cantik/core/app_export.dart';
import 'package:bobo_cantik/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';

class SelectRoomScreen extends GetWidget<SelectRoomController> {
  const SelectRoomScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            body: SizedBox(
                width: double.maxFinite,
                child: SingleChildScrollView(
                    child: SizedBox(
                        height: 803.v,
                        width: double.maxFinite,
                        child: Stack(alignment: Alignment.center, children: [
                          Align(
                              alignment: Alignment.bottomCenter,
                              child: Padding(
                                  padding: EdgeInsets.only(bottom: 8.v),
                                  child: SizedBox(
                                      width: 120.h, child: Divider()))),
                          Align(
                              alignment: Alignment.center,
                              child: SizedBox(
                                  height: 803.v,
                                  width: double.maxFinite,
                                  child: Stack(
                                      alignment: Alignment.topCenter,
                                      children: [
                                        CustomImageView(
                                            imagePath:
                                                ImageConstant.imgStreamlineHote,
                                            height: 14.adaptSize,
                                            width: 14.adaptSize,
                                            alignment: Alignment.topLeft,
                                            margin: EdgeInsets.only(
                                                left: 169.h, top: 314.v)),
                                        _buildStreamlineHotelSection(),
                                        _buildDeluxeSection(),
                                        _buildExecutiveSection()
                                      ]))),
                          _buildSelectRoomSection()
                        ]))))));
  }

  /// Section Widget
  Widget _buildStreamlineHotelSection() {
    return Align(
        alignment: Alignment.topCenter,
        child: Card(
            clipBehavior: Clip.antiAlias,
            elevation: 0,
            margin: EdgeInsets.all(0),
            color: appTheme.deepOrange10001,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadiusStyle.roundedBorder35),
            child: Container(
                height: 149.v,
                width: double.maxFinite,
                decoration: AppDecoration.fillDeeporange10001
                    .copyWith(borderRadius: BorderRadiusStyle.roundedBorder35),
                child: Stack(alignment: Alignment.topLeft, children: [
                  CustomImageView(
                      imagePath: ImageConstant.imgGroup5,
                      height: 108.v,
                      width: 116.h,
                      alignment: Alignment.bottomRight),
                  CustomImageView(
                      imagePath: ImageConstant.imgGroup5,
                      height: 65.v,
                      width: 125.h,
                      alignment: Alignment.topLeft),
                  Align(
                      alignment: Alignment.bottomCenter,
                      child: Padding(
                          padding: EdgeInsets.only(bottom: 42.v),
                          child: Text("msg_pilih_tipe_kamar".tr,
                              style: TextStyle(
                                  color: theme.colorScheme.primary,
                                  fontSize: 14.fSize,
                                  fontFamily: 'Poppins',
                                  fontWeight: FontWeight.w500)))),
                  Align(
                      alignment: Alignment.topLeft,
                      child: Padding(
                          padding: EdgeInsets.only(left: 38.h, top: 28.v),
                          child: Row(children: [
                            CustomImageView(
                                imagePath: ImageConstant.imgArrowLeftPrimary,
                                height: 33.v,
                                width: 41.h,
                                margin: EdgeInsets.only(bottom: 4.v),
                                onTap: () {
                                  onTapImgArrowLeft();
                                }),
                            Padding(
                                padding: EdgeInsets.only(left: 41.h),
                                child: Text("lbl_tipe_kamar".tr,
                                    style: TextStyle(
                                        color: theme.colorScheme.primary,
                                        fontSize: 24.fSize,
                                        fontFamily: 'Poppins',
                                        fontWeight: FontWeight.w600)))
                          ])))
                ]))));
  }

  /// Section Widget
  Widget _buildDeluxeSection() {
    return Align(
        alignment: Alignment.topCenter,
        child: Container(
            margin: EdgeInsets.only(left: 38.h, top: 133.v, right: 29.h),
            padding: EdgeInsets.symmetric(horizontal: 5.h, vertical: 14.v),
            decoration: AppDecoration.fillGray
                .copyWith(borderRadius: BorderRadiusStyle.roundedBorder20),
            child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                      padding: EdgeInsets.only(left: 4.h, right: 14.h),
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            _buildExecutiveSuite(
                                roomName: "lbl_deluxe_room".tr,
                                roomSize: "lbl_3_x_4_meter".tr,
                                electricityIncluded: "msg_termasuk_listrik".tr),
                            CustomImageView(
                                imagePath: ImageConstant.imgImage8,
                                height: 83.v,
                                width: 75.h,
                                radius: BorderRadius.circular(10.h),
                                margin: EdgeInsets.only(top: 3.v, bottom: 4.v))
                          ])),
                  SizedBox(height: 9.v),
                  Padding(
                      padding: EdgeInsets.only(left: 4.h, right: 51.h),
                      child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            CustomImageView(
                                imagePath: ImageConstant.imgStreamlineHote,
                                height: 23.adaptSize,
                                width: 23.adaptSize),
                            Padding(
                                padding:
                                    EdgeInsets.only(left: 8.h, bottom: 6.v),
                                child: Text("lbl_ac".tr,
                                    style: TextStyle(
                                        color: theme
                                            .colorScheme.onSecondaryContainer
                                            .withOpacity(0.6),
                                        fontSize: 12.fSize,
                                        fontFamily: 'Poppins',
                                        fontWeight: FontWeight.w600))),
                            Spacer(),
                            CustomImageView(
                                imagePath: ImageConstant.imgMdiBathroom,
                                height: 24.adaptSize,
                                width: 24.adaptSize),
                            Padding(
                                padding: EdgeInsets.only(
                                    left: 8.h, top: 2.v, bottom: 4.v),
                                child: Text("lbl_k_mandi_luar".tr,
                                    style: TextStyle(
                                        color: theme
                                            .colorScheme.onSecondaryContainer
                                            .withOpacity(0.6),
                                        fontSize: 12.fSize,
                                        fontFamily: 'Poppins',
                                        fontWeight: FontWeight.w600)))
                          ])),
                  SizedBox(height: 6.v),
                  Padding(
                      padding: EdgeInsets.only(left: 3.h, right: 85.h),
                      child: _buildSolarBedBroken(
                          kasur: "lbl_kasur".tr, shower: "lbl_shower".tr)),
                  SizedBox(height: 2.v),
                  Padding(
                      padding: EdgeInsets.only(right: 24.h),
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                                padding: EdgeInsets.only(top: 4.v, bottom: 9.v),
                                child: _buildSettings1(
                                    wifi: "lbl_wifi".tr,
                                    lemari: "lbl_lemari".tr)),
                            Column(children: [
                              Align(
                                  alignment: Alignment.centerRight,
                                  child: Padding(
                                      padding: EdgeInsets.only(right: 1.h),
                                      child: Text("lbl_rp_800rb".tr,
                                          style: TextStyle(
                                              color: theme.colorScheme
                                                  .onSecondaryContainer
                                                  .withOpacity(0.6),
                                              fontSize: 14.fSize,
                                              fontFamily: 'Poppins',
                                              fontWeight: FontWeight.w600)))),
                              SizedBox(height: 4.v),
                              Container(
                                  width: 154.h,
                                  padding: EdgeInsets.symmetric(
                                      horizontal: 59.h, vertical: 11.v),
                                  decoration: AppDecoration.fillRed.copyWith(
                                      borderRadius:
                                          BorderRadiusStyle.roundedBorder8),
                                  child: Column(
                                      mainAxisSize: MainAxisSize.min,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        SizedBox(height: 2.v),
                                        Text("lbl_pilih".tr,
                                            style: TextStyle(
                                                color:
                                                    theme.colorScheme.primary,
                                                fontSize:
                                                    15.019098281860352.fSize,
                                                fontFamily: 'Poppins',
                                                fontWeight: FontWeight.w500))
                                      ]))
                            ])
                          ])),
                  SizedBox(height: 17.v)
                ])));
  }

  /// Section Widget
  Widget _buildExecutiveSection() {
    return Align(
        alignment: Alignment.bottomCenter,
        child: Container(
            margin: EdgeInsets.only(left: 40.h, right: 27.h, bottom: 70.v),
            padding: EdgeInsets.symmetric(horizontal: 5.h, vertical: 13.v),
            decoration: AppDecoration.fillGray
                .copyWith(borderRadius: BorderRadiusStyle.roundedBorder20),
            child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                      padding: EdgeInsets.only(left: 4.h, right: 7.h),
                      child: _buildDeluxeRoomSection(
                          roomName: "lbl_executive_suite".tr,
                          roomSize: "lbl_3_x_4_meter".tr,
                          electricityIncluded: "msg_termasuk_listrik".tr)),
                  SizedBox(height: 9.v),
                  Padding(
                      padding: EdgeInsets.only(left: 4.h, right: 35.h),
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                                width: 48.h,
                                margin: EdgeInsets.only(bottom: 2.v),
                                child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      CustomImageView(
                                          imagePath:
                                              ImageConstant.imgStreamlineHote,
                                          height: 23.adaptSize,
                                          width: 23.adaptSize),
                                      Padding(
                                          padding: EdgeInsets.only(bottom: 4.v),
                                          child: Text("lbl_ac".tr,
                                              style: TextStyle(
                                                  color: theme.colorScheme
                                                      .onSecondaryContainer
                                                      .withOpacity(0.6),
                                                  fontSize: 12.fSize,
                                                  fontFamily: 'Poppins',
                                                  fontWeight: FontWeight.w600)))
                                    ])),
                            Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  CustomImageView(
                                      imagePath: ImageConstant.imgMdiBathroom,
                                      height: 24.adaptSize,
                                      width: 24.adaptSize),
                                  Padding(
                                      padding: EdgeInsets.only(
                                          left: 8.h, bottom: 4.v),
                                      child: Text("lbl_k_mandi_dalam".tr,
                                          style: TextStyle(
                                              color: theme.colorScheme
                                                  .onSecondaryContainer
                                                  .withOpacity(0.6),
                                              fontSize: 12.fSize,
                                              fontFamily: 'Poppins',
                                              fontWeight: FontWeight.w600)))
                                ])
                          ])),
                  SizedBox(height: 6.v),
                  Padding(
                      padding: EdgeInsets.only(left: 3.h, right: 85.h),
                      child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            CustomImageView(
                                imagePath: ImageConstant.imgSolarBedBroken,
                                height: 25.adaptSize,
                                width: 25.adaptSize),
                            Padding(
                                padding: EdgeInsets.only(
                                    left: 8.h, top: 3.v, bottom: 5.v),
                                child: Text("lbl_kasur".tr,
                                    style: TextStyle(
                                        color: theme
                                            .colorScheme.onSecondaryContainer
                                            .withOpacity(0.6),
                                        fontSize: 12.fSize,
                                        fontFamily: 'Poppins',
                                        fontWeight: FontWeight.w600))),
                            Spacer(),
                            Container(
                                width: 76.h,
                                margin: EdgeInsets.only(top: 3.v),
                                child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      CustomImageView(
                                          imagePath: ImageConstant
                                              .imgFluentShowerhead24Regular,
                                          height: 24.adaptSize,
                                          width: 24.adaptSize),
                                      Padding(
                                          padding: EdgeInsets.only(bottom: 4.v),
                                          child: Text("lbl_shower".tr,
                                              style: TextStyle(
                                                  color: theme.colorScheme
                                                      .onSecondaryContainer
                                                      .withOpacity(0.6),
                                                  fontSize: 12.fSize,
                                                  fontFamily: 'Poppins',
                                                  fontWeight: FontWeight.w600)))
                                    ]))
                          ])),
                  SizedBox(height: 3.v),
                  SizedBox(
                      height: 73.v,
                      width: 289.h,
                      child: Stack(alignment: Alignment.center, children: [
                        Align(
                            alignment: Alignment.topRight,
                            child: Padding(
                                padding: EdgeInsets.only(right: 6.h),
                                child: Text("lbl_rp_1jt".tr,
                                    style: TextStyle(
                                        color: theme
                                            .colorScheme.onSecondaryContainer
                                            .withOpacity(0.6),
                                        fontSize: 14.fSize,
                                        fontFamily: 'Poppins',
                                        fontWeight: FontWeight.w600)))),
                        Align(
                            alignment: Alignment.center,
                            child: SizedBox(
                                height: 70.v,
                                width: 289.h,
                                child: Stack(
                                    alignment: Alignment.bottomCenter,
                                    children: [
                                      Padding(
                                          padding: EdgeInsets.only(left: 4.h),
                                          child: _buildSettings(
                                              wifiText: "lbl_wifi".tr)),
                                      Align(
                                          alignment: Alignment.bottomCenter,
                                          child: Padding(
                                              padding:
                                                  EdgeInsets.only(top: 21.v),
                                              child: Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.center,
                                                  children: [
                                                    CustomImageView(
                                                        imagePath: ImageConstant
                                                            .imgMdiCupboardOutline,
                                                        height: 29.v,
                                                        width: 32.h,
                                                        margin: EdgeInsets.only(
                                                            top: 11.v,
                                                            bottom: 9.v)),
                                                    Padding(
                                                        padding:
                                                            EdgeInsets.only(
                                                                left: 4.h,
                                                                top: 11.v,
                                                                bottom: 18.v),
                                                        child: Text(
                                                            "lbl_lemari".tr,
                                                            style: TextStyle(
                                                                color: theme
                                                                    .colorScheme
                                                                    .onSecondaryContainer
                                                                    .withOpacity(
                                                                        0.6),
                                                                fontSize:
                                                                    12.fSize,
                                                                fontFamily:
                                                                    'Poppins',
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w600))),
                                                    Spacer(),
                                                    CustomElevatedButton(
                                                        height: 49.v,
                                                        width: 154.h,
                                                        text: "lbl_pilih".tr,
                                                        buttonStyle:
                                                            CustomButtonStyles
                                                                .fillRed)
                                                  ])))
                                    ])))
                      ])),
                  SizedBox(height: 18.v)
                ])));
  }

  /// Section Widget
  Widget _buildSelectRoomSection() {
    return Align(
        alignment: Alignment.topCenter,
        child: SizedBox(
            height: 414.v,
            width: double.maxFinite,
            child: Stack(alignment: Alignment.center, children: [
              CustomImageView(
                  imagePath: ImageConstant.imgSolarBedBroken,
                  height: 24.adaptSize,
                  width: 24.adaptSize,
                  alignment: Alignment.bottomCenter,
                  margin: EdgeInsets.only(bottom: 21.v)),
              Align(
                  alignment: Alignment.center,
                  child: Container(
                      height: 414.v,
                      width: double.maxFinite,
                      decoration: AppDecoration.outlinePrimaryContainer,
                      child: Stack(
                          alignment: Alignment.bottomCenter,
                          children: [
                            Align(
                                alignment: Alignment.topCenter,
                                child: Card(
                                    clipBehavior: Clip.antiAlias,
                                    elevation: 0,
                                    margin: EdgeInsets.all(0),
                                    color: appTheme.deepOrange10001,
                                    shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadiusStyle.roundedBorder35),
                                    child: Container(
                                        height: 149.v,
                                        width: double.maxFinite,
                                        decoration: AppDecoration
                                            .fillDeeporange10001
                                            .copyWith(
                                                borderRadius: BorderRadiusStyle
                                                    .roundedBorder35),
                                        child: Stack(
                                            alignment: Alignment.bottomCenter,
                                            children: [
                                              CustomImageView(
                                                  imagePath:
                                                      ImageConstant.imgGroup5,
                                                  height: 108.v,
                                                  width: 116.h,
                                                  alignment:
                                                      Alignment.bottomRight),
                                              Align(
                                                  alignment: Alignment
                                                      .bottomCenter,
                                                  child: Padding(
                                                      padding: EdgeInsets.only(
                                                          bottom: 42.v),
                                                      child: Text(
                                                          "msg_pilih_tipe_kamar"
                                                              .tr,
                                                          style: TextStyle(
                                                              color: theme
                                                                  .colorScheme
                                                                  .primary,
                                                              fontSize:
                                                                  14.fSize,
                                                              fontFamily:
                                                                  'Poppins',
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w500)))),
                                              Align(
                                                  alignment: Alignment.topLeft,
                                                  child: Row(children: [
                                                    SizedBox(
                                                        height: 77.v,
                                                        width: 260.h,
                                                        child: Stack(
                                                            alignment: Alignment
                                                                .bottomRight,
                                                            children: [
                                                              Align(
                                                                  alignment:
                                                                      Alignment
                                                                          .topLeft,
                                                                  child: Container(
                                                                      height: 65.v,
                                                                      width: 125.h,
                                                                      padding: EdgeInsets.symmetric(horizontal: 38.h, vertical: 13.v),
                                                                      decoration: BoxDecoration(image: DecorationImage(image: AssetImage(ImageConstant.imgGroup5), fit: BoxFit.cover)),
                                                                      child: CustomImageView(
                                                                          imagePath: ImageConstant.imgArrowLeftPrimary,
                                                                          height: 33.v,
                                                                          width: 41.h,
                                                                          alignment: Alignment.topLeft,
                                                                          onTap: () {
                                                                            onTapImgArrowLeft1();
                                                                          }))),
                                                              Align(
                                                                  alignment:
                                                                      Alignment
                                                                          .bottomRight,
                                                                  child: Text(
                                                                      "lbl_tipe_kamar"
                                                                          .tr,
                                                                      style: TextStyle(
                                                                          color: theme
                                                                              .colorScheme
                                                                              .primary,
                                                                          fontSize: 24
                                                                              .fSize,
                                                                          fontFamily:
                                                                              'Poppins',
                                                                          fontWeight:
                                                                              FontWeight.w600)))
                                                            ])),
                                                    Container(
                                                        height: 6.adaptSize,
                                                        width: 6.adaptSize,
                                                        margin: EdgeInsets.only(
                                                            left: 31.h,
                                                            top: 40.v,
                                                            bottom: 31.v),
                                                        decoration: BoxDecoration(
                                                            color:
                                                                appTheme.red200,
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        3.h)))
                                                  ]))
                                            ])))),
                            Align(
                                alignment: Alignment.bottomCenter,
                                child: Container(
                                    margin: EdgeInsets.only(
                                        left: 38.h, right: 29.h),
                                    padding: EdgeInsets.symmetric(
                                        horizontal: 5.h, vertical: 14.v),
                                    decoration: AppDecoration.fillGray.copyWith(
                                        borderRadius:
                                            BorderRadiusStyle.roundedBorder20),
                                    child: Column(
                                        mainAxisSize: MainAxisSize.min,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Padding(
                                              padding: EdgeInsets.only(
                                                  left: 4.h, right: 7.h),
                                              child: _buildDeluxeRoomSection(
                                                  roomName:
                                                      "lbl_deluxe_room".tr,
                                                  roomSize:
                                                      "lbl_3_x_4_meter".tr,
                                                  electricityIncluded:
                                                      "msg_termasuk_listrik"
                                                          .tr)),
                                          SizedBox(height: 9.v),
                                          Padding(
                                              padding: EdgeInsets.only(
                                                  left: 4.h, right: 35.h),
                                              child: Row(
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    CustomImageView(
                                                        imagePath: ImageConstant
                                                            .imgStreamlineHote,
                                                        height: 23.adaptSize,
                                                        width: 23.adaptSize),
                                                    Padding(
                                                        padding:
                                                            EdgeInsets.only(
                                                                left: 8.h,
                                                                bottom: 6.v),
                                                        child: Text("lbl_ac".tr,
                                                            style: TextStyle(
                                                                color: theme
                                                                    .colorScheme
                                                                    .onSecondaryContainer
                                                                    .withOpacity(
                                                                        0.6),
                                                                fontSize:
                                                                    12.fSize,
                                                                fontFamily:
                                                                    'Poppins',
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w600))),
                                                    Spacer(),
                                                    CustomImageView(
                                                        imagePath: ImageConstant
                                                            .imgMdiBathroom,
                                                        height: 24.adaptSize,
                                                        width: 24.adaptSize),
                                                    Padding(
                                                        padding:
                                                            EdgeInsets.only(
                                                                left: 8.h,
                                                                top: 2.v,
                                                                bottom: 4.v),
                                                        child: Text(
                                                            "lbl_k_mandi_dalam"
                                                                .tr,
                                                            style: TextStyle(
                                                                color: theme
                                                                    .colorScheme
                                                                    .onSecondaryContainer
                                                                    .withOpacity(
                                                                        0.6),
                                                                fontSize:
                                                                    12.fSize,
                                                                fontFamily:
                                                                    'Poppins',
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w600)))
                                                  ])),
                                          SizedBox(height: 6.v),
                                          Padding(
                                              padding: EdgeInsets.only(
                                                  left: 3.h, right: 85.h),
                                              child: Row(
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    CustomImageView(
                                                        imagePath: ImageConstant
                                                            .imgSolarBedBroken,
                                                        height: 25.adaptSize,
                                                        width: 25.adaptSize),
                                                    Padding(
                                                        padding:
                                                            EdgeInsets.only(
                                                                left: 8.h,
                                                                top: 3.v,
                                                                bottom: 5.v),
                                                        child: Text(
                                                            "lbl_kasur".tr,
                                                            style: TextStyle(
                                                                color: theme
                                                                    .colorScheme
                                                                    .onSecondaryContainer
                                                                    .withOpacity(
                                                                        0.6),
                                                                fontSize:
                                                                    12.fSize,
                                                                fontFamily:
                                                                    'Poppins',
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w600))),
                                                    Spacer(),
                                                    CustomImageView(
                                                        imagePath: ImageConstant
                                                            .imgFluentShowerhead24Regular,
                                                        height: 24.adaptSize,
                                                        width: 24.adaptSize,
                                                        margin: EdgeInsets.only(
                                                            top: 3.v)),
                                                    Padding(
                                                        padding:
                                                            EdgeInsets.only(
                                                                left: 7.h,
                                                                top: 4.v,
                                                                bottom: 4.v),
                                                        child: Text(
                                                            "lbl_shower".tr,
                                                            style: TextStyle(
                                                                color: theme
                                                                    .colorScheme
                                                                    .onSecondaryContainer
                                                                    .withOpacity(
                                                                        0.6),
                                                                fontSize:
                                                                    12.fSize,
                                                                fontFamily:
                                                                    'Poppins',
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w600)))
                                                  ])),
                                          SizedBox(height: 7.v),
                                          Padding(
                                              padding:
                                                  EdgeInsets.only(right: 24.h),
                                              child: Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .spaceBetween,
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    Padding(
                                                        padding:
                                                            EdgeInsets.only(
                                                                bottom: 9.v),
                                                        child: Column(
                                                            crossAxisAlignment:
                                                                CrossAxisAlignment
                                                                    .start,
                                                            children: [
                                                              Padding(
                                                                  padding: EdgeInsets
                                                                      .only(
                                                                          left: 4
                                                                              .h),
                                                                  child: Row(
                                                                      crossAxisAlignment:
                                                                          CrossAxisAlignment
                                                                              .start,
                                                                      children: [
                                                                        CustomImageView(
                                                                            imagePath:
                                                                                ImageConstant.imgSettings,
                                                                            height: 24.adaptSize,
                                                                            width: 24.adaptSize),
                                                                        Padding(
                                                                            padding:
                                                                                EdgeInsets.only(left: 8.h, bottom: 5.v),
                                                                            child: Text("lbl_wifi".tr, style: TextStyle(color: theme.colorScheme.onSecondaryContainer.withOpacity(0.6), fontSize: 12.fSize, fontFamily: 'Poppins', fontWeight: FontWeight.w600)))
                                                                      ])),
                                                              SizedBox(
                                                                  height: 8.v),
                                                              SizedBox(
                                                                  width: 77.h,
                                                                  child: Row(
                                                                      mainAxisAlignment:
                                                                          MainAxisAlignment
                                                                              .spaceBetween,
                                                                      crossAxisAlignment:
                                                                          CrossAxisAlignment
                                                                              .start,
                                                                      children: [
                                                                        CustomImageView(
                                                                            imagePath:
                                                                                ImageConstant.imgMdiCupboardOutline,
                                                                            height: 29.v,
                                                                            width: 32.h),
                                                                        Padding(
                                                                            padding:
                                                                                EdgeInsets.only(bottom: 9.v),
                                                                            child: Text("lbl_lemari".tr, style: TextStyle(color: theme.colorScheme.onSecondaryContainer.withOpacity(0.6), fontSize: 12.fSize, fontFamily: 'Poppins', fontWeight: FontWeight.w600)))
                                                                      ]))
                                                            ])),
                                                    CustomElevatedButton(
                                                        height: 49.v,
                                                        width: 154.h,
                                                        text: "lbl_pilih".tr,
                                                        margin: EdgeInsets.only(
                                                            top: 21.v),
                                                        buttonStyle:
                                                            CustomButtonStyles
                                                                .fillRed,
                                                        onPressed: () {
                                                          onTapPilih();
                                                        })
                                                  ])),
                                          SizedBox(height: 17.v)
                                        ])))
                          ])))
            ])));
  }

  /// Common widget
  Widget _buildExecutiveSuite({
    required String roomName,
    required String roomSize,
    required String electricityIncluded,
  }) {
    return Column(children: [
      Text(roomName,
          style: TextStyle(
              color: theme.colorScheme.onSecondaryContainer.withOpacity(0.6),
              fontSize: 16.fSize,
              fontFamily: 'Poppins',
              fontWeight: FontWeight.w600)),
      SizedBox(height: 9.v),
      Align(
          alignment: Alignment.centerLeft,
          child: Row(children: [
            CustomImageView(
                imagePath: ImageConstant.imgHome,
                height: 24.adaptSize,
                width: 24.adaptSize),
            Padding(
                padding: EdgeInsets.only(left: 8.h, top: 5.v),
                child: Text(roomSize,
                    style: TextStyle(
                        color: theme.colorScheme.onSecondaryContainer
                            .withOpacity(0.6),
                        fontSize: 12.fSize,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w600)))
          ])),
      SizedBox(height: 10.v),
      Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CustomImageView(
                imagePath: ImageConstant.imgClock,
                height: 24.adaptSize,
                width: 24.adaptSize),
            Padding(
                padding: EdgeInsets.only(left: 8.h, top: 2.v, bottom: 3.v),
                child: Text(electricityIncluded,
                    style: TextStyle(
                        color: theme.colorScheme.onSecondaryContainer
                            .withOpacity(0.6),
                        fontSize: 12.fSize,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w600)))
          ])
    ]);
  }

  /// Common widget
  Widget _buildSettings({required String wifiText}) {
    return Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
      CustomImageView(
          imagePath: ImageConstant.imgSettings,
          height: 24.adaptSize,
          width: 24.adaptSize),
      Padding(
          padding: EdgeInsets.only(left: 8.h, bottom: 5.v),
          child: Text(wifiText,
              style: TextStyle(
                  color:
                      theme.colorScheme.onSecondaryContainer.withOpacity(0.6),
                  fontSize: 12.fSize,
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.w600)))
    ]);
  }

  /// Common widget
  Widget _buildDeluxeRoomSection({
    required String roomName,
    required String roomSize,
    required String electricityIncluded,
  }) {
    return Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
      Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Padding(
            padding: EdgeInsets.only(left: 4.h),
            child: Text(roomName,
                style: TextStyle(
                    color:
                        theme.colorScheme.onSecondaryContainer.withOpacity(0.6),
                    fontSize: 16.fSize,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w600))),
        SizedBox(height: 8.v),
        Row(children: [
          CustomImageView(
              imagePath: ImageConstant.imgHome,
              height: 24.adaptSize,
              width: 24.adaptSize),
          Padding(
              padding: EdgeInsets.only(left: 8.h, top: 5.v),
              child: Text(roomSize,
                  style: TextStyle(
                      color: theme.colorScheme.onSecondaryContainer
                          .withOpacity(0.6),
                      fontSize: 12.fSize,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w600)))
        ]),
        SizedBox(height: 10.v),
        Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
          CustomImageView(
              imagePath: ImageConstant.imgClock,
              height: 24.adaptSize,
              width: 24.adaptSize),
          Padding(
              padding: EdgeInsets.only(left: 8.h, top: 2.v, bottom: 3.v),
              child: Text(electricityIncluded,
                  style: TextStyle(
                      color: theme.colorScheme.onSecondaryContainer
                          .withOpacity(0.6),
                      fontSize: 12.fSize,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w600)))
        ])
      ]),
      CustomImageView(
          imagePath: ImageConstant.imgImage7,
          height: 81.v,
          width: 92.h,
          radius: BorderRadius.circular(10.h),
          margin: EdgeInsets.only(top: 7.v))
    ]);
  }

  /// Common widget
  Widget _buildSolarBedBroken({
    required String kasur,
    required String shower,
  }) {
    return Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
      CustomImageView(
          imagePath: ImageConstant.imgSolarBedBroken,
          height: 25.adaptSize,
          width: 25.adaptSize),
      Padding(
          padding: EdgeInsets.only(left: 8.h, top: 3.v, bottom: 5.v),
          child: Text(kasur,
              style: TextStyle(
                  color:
                      theme.colorScheme.onSecondaryContainer.withOpacity(0.6),
                  fontSize: 12.fSize,
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.w600))),
      Spacer(),
      CustomImageView(
          imagePath: ImageConstant.imgFluentShowerhead24Regular,
          height: 24.adaptSize,
          width: 24.adaptSize,
          margin: EdgeInsets.only(top: 3.v)),
      Padding(
          padding: EdgeInsets.only(left: 7.h, top: 4.v, bottom: 4.v),
          child: Text(shower,
              style: TextStyle(
                  color:
                      theme.colorScheme.onSecondaryContainer.withOpacity(0.6),
                  fontSize: 12.fSize,
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.w600)))
    ]);
  }

  /// Common widget
  Widget _buildSettings1({
    required String wifi,
    required String lemari,
  }) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Padding(
          padding: EdgeInsets.only(left: 4.h),
          child: Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
            CustomImageView(
                imagePath: ImageConstant.imgSettings,
                height: 24.adaptSize,
                width: 24.adaptSize),
            Padding(
                padding: EdgeInsets.only(left: 8.h, bottom: 5.v),
                child: Text(wifi,
                    style: TextStyle(
                        color: theme.colorScheme.onSecondaryContainer
                            .withOpacity(0.6),
                        fontSize: 12.fSize,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w600)))
          ])),
      SizedBox(height: 8.v),
      SizedBox(
          width: 77.h,
          child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CustomImageView(
                    imagePath: ImageConstant.imgMdiCupboardOutline,
                    height: 29.v,
                    width: 32.h),
                Padding(
                    padding: EdgeInsets.only(bottom: 9.v),
                    child: Text(lemari,
                        style: TextStyle(
                            color: theme.colorScheme.onSecondaryContainer
                                .withOpacity(0.6),
                            fontSize: 12.fSize,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w600)))
              ]))
    ]);
  }

  /// Navigates to the previous screen.
  onTapImgArrowLeft() {
    Get.back();
  }

  /// Navigates to the previous screen.
  onTapImgArrowLeft1() {
    Get.back();
  }

  /// Navigates to the checkoutTabContainerScreen when the action is triggered.
  onTapPilih() {
    Get.toNamed(
      AppRoutes.checkoutTabContainerScreen,
    );
  }
}
