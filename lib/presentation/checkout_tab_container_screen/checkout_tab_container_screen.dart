import 'controller/checkout_tab_container_controller.dart';
import 'package:bobo_cantik/core/app_export.dart';
import 'package:bobo_cantik/presentation/checkout_page/checkout_page.dart';
import 'package:flutter/material.dart';

class CheckoutTabContainerScreen
    extends GetWidget<CheckoutTabContainerController> {
  const CheckoutTabContainerScreen({Key? key}) : super(key: key);

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
                        child: Stack(alignment: Alignment.topCenter, children: [
                          Align(
                              alignment: Alignment.bottomCenter,
                              child: Padding(
                                  padding: EdgeInsets.only(
                                      left: 141.h, right: 129.h, bottom: 8.v),
                                  child: Column(
                                      mainAxisSize: MainAxisSize.min,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        CustomImageView(
                                            imagePath:
                                                ImageConstant.imgSolarBedBroken,
                                            height: 24.adaptSize,
                                            width: 24.adaptSize,
                                            margin:
                                                EdgeInsets.only(left: 42.h)),
                                        SizedBox(height: 397.v),
                                        Divider()
                                      ]))),
                          _buildArrowLeftStack(),
                          CustomImageView(
                              imagePath: ImageConstant.imgSettings,
                              height: 24.adaptSize,
                              width: 24.adaptSize,
                              alignment: Alignment.topLeft,
                              margin: EdgeInsets.only(left: 47.h, top: 312.v)),
                          Align(
                              alignment: Alignment.center,
                              child: SizedBox(
                                  height: 803.v,
                                  width: double.maxFinite,
                                  child: Stack(
                                      alignment: Alignment.topCenter,
                                      children: [
                                        Align(
                                            alignment: Alignment.bottomCenter,
                                            child: Container(
                                                decoration: AppDecoration
                                                    .fillDeeporange50
                                                    .copyWith(
                                                        borderRadius:
                                                            BorderRadiusStyle
                                                                .roundedBorder20),
                                                child: Column(
                                                    mainAxisSize:
                                                        MainAxisSize.min,
                                                    children: [
                                                      _buildDeluxeRoomColumn(),
                                                      SizedBox(height: 49.v),
                                                      Align(
                                                          alignment: Alignment
                                                              .centerLeft,
                                                          child: Padding(
                                                              padding: EdgeInsets
                                                                  .only(
                                                                      left:
                                                                          34.h),
                                                              child: Text(
                                                                  "msg_metode_pembayaran"
                                                                      .tr,
                                                                  style: TextStyle(
                                                                      color: theme
                                                                          .colorScheme
                                                                          .onSecondaryContainer
                                                                          .withOpacity(
                                                                              0.6),
                                                                      fontSize: 16
                                                                          .fSize,
                                                                      fontFamily:
                                                                          'Poppins',
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .w600)))),
                                                      SizedBox(height: 17.v),
                                                      _buildTabview(),
                                                      SizedBox(
                                                          height: 570.v,
                                                          child: TabBarView(
                                                              controller: controller
                                                                  .tabviewController,
                                                              children: [
                                                                CheckoutPage(),
                                                                CheckoutPage(),
                                                                CheckoutPage()
                                                              ]))
                                                    ]))),
                                        _buildFrameTwoStack()
                                      ])))
                        ]))))));
  }

  /// Section Widget
  Widget _buildArrowLeftStack() {
    return Align(
        alignment: Alignment.topCenter,
        child: Container(
            height: 335.v,
            width: double.maxFinite,
            decoration: AppDecoration.outlinePrimaryContainer,
            child: Stack(alignment: Alignment.bottomCenter, children: [
              Align(
                  alignment: Alignment.topCenter,
                  child: Card(
                      clipBehavior: Clip.antiAlias,
                      elevation: 0,
                      margin: EdgeInsets.all(0),
                      color: appTheme.deepOrange10001,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadiusStyle.roundedBorder35),
                      child: Container(
                          height: 114.v,
                          width: double.maxFinite,
                          decoration: AppDecoration.fillDeeporange10001
                              .copyWith(
                                  borderRadius:
                                      BorderRadiusStyle.roundedBorder35),
                          child: Stack(alignment: Alignment.topLeft, children: [
                            CustomImageView(
                                imagePath: ImageConstant.imgGroup5,
                                height: 73.v,
                                width: 116.h,
                                alignment: Alignment.bottomRight),
                            Align(
                                alignment: Alignment.topLeft,
                                child: Container(
                                    height: 65.v,
                                    width: 125.h,
                                    padding: EdgeInsets.symmetric(
                                        horizontal: 38.h, vertical: 13.v),
                                    decoration: BoxDecoration(
                                        image: DecorationImage(
                                            image: AssetImage(
                                                ImageConstant.imgGroup5),
                                            fit: BoxFit.cover)),
                                    child: CustomImageView(
                                        imagePath:
                                            ImageConstant.imgArrowLeftPrimary,
                                        height: 33.v,
                                        width: 41.h,
                                        alignment: Alignment.topLeft,
                                        onTap: () {
                                          onTapImgArrowLeft();
                                        }))),
                            Align(
                                alignment: Alignment.bottomCenter,
                                child: Padding(
                                    padding: EdgeInsets.only(bottom: 31.v),
                                    child: Text("msg_pilih_tipe_kamar".tr,
                                        style: TextStyle(
                                            color: theme.colorScheme.primary,
                                            fontSize: 14.fSize,
                                            fontFamily: 'Poppins',
                                            fontWeight: FontWeight.w500)))),
                            Align(
                                alignment: Alignment.topCenter,
                                child: Padding(
                                    padding: EdgeInsets.only(top: 25.v),
                                    child: Text("lbl_tipe_kamar".tr,
                                        style: TextStyle(
                                            color: theme.colorScheme.primary,
                                            fontSize: 24.fSize,
                                            fontFamily: 'Poppins',
                                            fontWeight: FontWeight.w600)))),
                            Align(
                                alignment: Alignment.topRight,
                                child: Container(
                                    height: 6.adaptSize,
                                    width: 6.adaptSize,
                                    margin:
                                        EdgeInsets.only(top: 40.v, right: 92.h),
                                    decoration: BoxDecoration(
                                        color: appTheme.red200,
                                        borderRadius:
                                            BorderRadius.circular(3.h))))
                          ])))),
              Align(
                  alignment: Alignment.bottomCenter,
                  child: Container(
                      margin: EdgeInsets.only(left: 38.h, right: 29.h),
                      padding:
                          EdgeInsets.symmetric(horizontal: 5.h, vertical: 11.v),
                      decoration: AppDecoration.fillGray.copyWith(
                          borderRadius: BorderRadiusStyle.roundedBorder20),
                      child: Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                                padding: EdgeInsets.only(left: 3.h, right: 7.h),
                                child: Row(children: [
                                  Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Padding(
                                            padding: EdgeInsets.only(left: 5.h),
                                            child: Text("lbl_deluxe_room".tr,
                                                style: TextStyle(
                                                    color: theme.colorScheme
                                                        .onSecondaryContainer
                                                        .withOpacity(0.6),
                                                    fontSize: 16.fSize,
                                                    fontFamily: 'Poppins',
                                                    fontWeight:
                                                        FontWeight.w600))),
                                        SizedBox(height: 7.v),
                                        Padding(
                                            padding:
                                                EdgeInsets.only(left: 33.h),
                                            child: Text("lbl_3_x_4_meter".tr,
                                                style: TextStyle(
                                                    color: theme.colorScheme
                                                        .onSecondaryContainer
                                                        .withOpacity(0.6),
                                                    fontSize: 12.fSize,
                                                    fontFamily: 'Poppins',
                                                    fontWeight:
                                                        FontWeight.w600))),
                                        SizedBox(height: 5.v),
                                        Padding(
                                            padding: EdgeInsets.only(left: 1.h),
                                            child: Row(children: [
                                              Container(
                                                  height: 46.v,
                                                  width: 24.h,
                                                  margin: EdgeInsets.only(
                                                      bottom: 2.v),
                                                  child: Stack(
                                                      alignment: Alignment
                                                          .bottomCenter,
                                                      children: [
                                                        CustomImageView(
                                                            imagePath:
                                                                ImageConstant
                                                                    .imgClock,
                                                            height: 19.v,
                                                            width: 24.h,
                                                            alignment: Alignment
                                                                .topCenter),
                                                        CustomImageView(
                                                            imagePath: ImageConstant
                                                                .imgStreamlineHote,
                                                            height: 19.v,
                                                            width: 23.h,
                                                            alignment: Alignment
                                                                .bottomCenter),
                                                        CustomImageView(
                                                            imagePath:
                                                                ImageConstant
                                                                    .imgHome,
                                                            height:
                                                                24.adaptSize,
                                                            width: 24.adaptSize,
                                                            alignment: Alignment
                                                                .center)
                                                      ])),
                                              Padding(
                                                  padding: EdgeInsets.only(
                                                      left: 8.h),
                                                  child: Column(
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .start,
                                                      children: [
                                                        Text("msg_termasuk_listrik".tr,
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
                                                                        .w600)),
                                                        SizedBox(height: 8.v),
                                                        SizedBox(
                                                            width: 138.h,
                                                            child: Row(
                                                                mainAxisAlignment:
                                                                    MainAxisAlignment
                                                                        .spaceBetween,
                                                                children: [
                                                                  Padding(
                                                                      padding: EdgeInsets.only(
                                                                          bottom: 2
                                                                              .v),
                                                                      child: Text(
                                                                          "lbl_ac"
                                                                              .tr,
                                                                          style: TextStyle(
                                                                              color: theme.colorScheme.onSecondaryContainer.withOpacity(0.6),
                                                                              fontSize: 12.fSize,
                                                                              fontFamily: 'Poppins',
                                                                              fontWeight: FontWeight.w600))),
                                                                  CustomImageView(
                                                                      imagePath:
                                                                          ImageConstant
                                                                              .imgMdiBathroom,
                                                                      height:
                                                                          19.v,
                                                                      width:
                                                                          24.h)
                                                                ]))
                                                      ]))
                                            ])),
                                        SizedBox(height: 5.v),
                                        SizedBox(
                                            width: 172.h,
                                            child: Row(children: [
                                              CustomImageView(
                                                  imagePath: ImageConstant
                                                      .imgSolarBedBrokenOnsecondarycontainer,
                                                  height: 20.v,
                                                  width: 25.h),
                                              Padding(
                                                  padding: EdgeInsets.only(
                                                      left: 8.h, top: 3.v),
                                                  child: Text("lbl_kasur".tr,
                                                      style: TextStyle(
                                                          color: theme
                                                              .colorScheme
                                                              .onSecondaryContainer
                                                              .withOpacity(0.6),
                                                          fontSize: 12.fSize,
                                                          fontFamily: 'Poppins',
                                                          fontWeight: FontWeight
                                                              .w600))),
                                              Spacer(),
                                              CustomImageView(
                                                  imagePath: ImageConstant
                                                      .imgFluentShowerhead24Regular,
                                                  height: 19.v,
                                                  width: 24.h,
                                                  margin:
                                                      EdgeInsets.only(top: 2.v))
                                            ]))
                                      ]),
                                  Container(
                                      height: 88.v,
                                      width: 124.h,
                                      margin:
                                          EdgeInsets.only(left: 7.h, top: 42.v),
                                      child: Stack(
                                          alignment: Alignment.topRight,
                                          children: [
                                            Align(
                                                alignment: Alignment.bottomLeft,
                                                child: Text("lbl_shower".tr,
                                                    style: TextStyle(
                                                        color: theme.colorScheme
                                                            .onSecondaryContainer
                                                            .withOpacity(0.6),
                                                        fontSize: 12.fSize,
                                                        fontFamily: 'Poppins',
                                                        fontWeight:
                                                            FontWeight.w600))),
                                            CustomImageView(
                                                imagePath:
                                                    ImageConstant.imgImage7,
                                                height: 81.v,
                                                width: 92.h,
                                                radius:
                                                    BorderRadius.circular(10.h),
                                                alignment: Alignment.topRight)
                                          ]))
                                ])),
                            SizedBox(height: 6.v),
                            SizedBox(
                                height: 58.v,
                                width: 300.h,
                                child: Stack(
                                    alignment: Alignment.bottomLeft,
                                    children: [
                                      Align(
                                          alignment: Alignment.centerRight,
                                          child: Padding(
                                              padding: EdgeInsets.only(
                                                  left: 36.h, right: 11.h),
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
                                                                bottom: 13.v),
                                                        child: Column(
                                                            crossAxisAlignment:
                                                                CrossAxisAlignment
                                                                    .start,
                                                            children: [
                                                              Text(
                                                                  "lbl_wifi".tr,
                                                                  style: TextStyle(
                                                                      color: theme
                                                                          .colorScheme
                                                                          .onSecondaryContainer
                                                                          .withOpacity(
                                                                              0.6),
                                                                      fontSize: 12
                                                                          .fSize,
                                                                      fontFamily:
                                                                          'Poppins',
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .w600)),
                                                              SizedBox(
                                                                  height: 9.v),
                                                              Text(
                                                                  "lbl_lemari"
                                                                      .tr,
                                                                  style: TextStyle(
                                                                      color: theme
                                                                          .colorScheme
                                                                          .onSecondaryContainer
                                                                          .withOpacity(
                                                                              0.6),
                                                                      fontSize: 12
                                                                          .fSize,
                                                                      fontFamily:
                                                                          'Poppins',
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .w600))
                                                            ])),
                                                    Container(
                                                        margin: EdgeInsets.only(
                                                            top: 17.v),
                                                        padding: EdgeInsets
                                                            .symmetric(
                                                                horizontal:
                                                                    59.h,
                                                                vertical: 5.v),
                                                        decoration: AppDecoration
                                                            .fillRed
                                                            .copyWith(
                                                                borderRadius:
                                                                    BorderRadiusStyle
                                                                        .roundedBorder8),
                                                        child: Column(
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .min,
                                                            crossAxisAlignment:
                                                                CrossAxisAlignment
                                                                    .start,
                                                            mainAxisAlignment:
                                                                MainAxisAlignment
                                                                    .end,
                                                            children: [
                                                              SizedBox(
                                                                  height: 5.v),
                                                              Text("lbl_pilih".tr,
                                                                  style: TextStyle(
                                                                      color: theme
                                                                          .colorScheme
                                                                          .primary,
                                                                      fontSize:
                                                                          15.019098281860352
                                                                              .fSize,
                                                                      fontFamily:
                                                                          'Poppins',
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .w500))
                                                            ]))
                                                  ]))),
                                      CustomImageView(
                                          imagePath: ImageConstant
                                              .imgMdiCupboardOutline,
                                          height: 24.v,
                                          width: 32.h,
                                          alignment: Alignment.bottomLeft,
                                          margin: EdgeInsets.only(bottom: 7.v)),
                                      Opacity(
                                          opacity: 0.4,
                                          child: Align(
                                              alignment: Alignment.center,
                                              child: SizedBox(
                                                  width: 290.h,
                                                  child: Divider(
                                                      color: theme.colorScheme
                                                          .onSecondaryContainer
                                                          .withOpacity(0.49)))))
                                    ])),
                            SizedBox(height: 14.v)
                          ])))
            ])));
  }

  /// Section Widget
  Widget _buildDeluxeRoomColumn() {
    return Container(
        margin: EdgeInsets.symmetric(horizontal: 34.h),
        padding: EdgeInsets.symmetric(horizontal: 12.h, vertical: 14.v),
        decoration: AppDecoration.outlineOnSecondaryContainer1
            .copyWith(borderRadius: BorderRadiusStyle.roundedBorder8),
        child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              SizedBox(height: 6.v),
              Padding(
                  padding: EdgeInsets.only(left: 5.h),
                  child: Text("lbl_deluxe_room".tr,
                      style: TextStyle(
                          color: theme.colorScheme.onSecondaryContainer
                              .withOpacity(0.6),
                          fontSize: 16.fSize,
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w600))),
              SizedBox(height: 8.v),
              Padding(
                  padding: EdgeInsets.only(left: 5.h),
                  child: Text("msg_durasi_sewa_1".tr,
                      style: TextStyle(
                          color: theme.colorScheme.onSecondaryContainer
                              .withOpacity(0.6),
                          fontSize: 14.fSize,
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w500))),
              SizedBox(height: 26.v),
              Padding(
                  padding: EdgeInsets.only(left: 5.h),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                            padding: EdgeInsets.only(bottom: 2.v),
                            child: Text("lbl_total".tr,
                                style: TextStyle(
                                    color: theme
                                        .colorScheme.onSecondaryContainer
                                        .withOpacity(0.6),
                                    fontSize: 16.fSize,
                                    fontFamily: 'Poppins',
                                    fontWeight: FontWeight.w600))),
                        Padding(
                            padding: EdgeInsets.only(top: 2.v),
                            child: Text("lbl_rp_800_000".tr,
                                style: TextStyle(
                                    color: theme
                                        .colorScheme.onSecondaryContainer
                                        .withOpacity(0.6),
                                    fontSize: 16.fSize,
                                    fontFamily: 'Poppins',
                                    fontWeight: FontWeight.w600)))
                      ]))
            ]));
  }

  /// Section Widget
  Widget _buildTabview() {
    return Container(
        height: 46.v,
        width: 349.h,
        decoration: BoxDecoration(
            color: appTheme.red100, borderRadius: BorderRadius.circular(5.h)),
        child: TabBar(
            controller: controller.tabviewController,
            labelPadding: EdgeInsets.zero,
            labelColor: theme.colorScheme.primary,
            labelStyle: TextStyle(
                fontSize: 14.fSize,
                fontFamily: 'Poppins',
                fontWeight: FontWeight.w600),
            unselectedLabelColor: theme.colorScheme.primary,
            unselectedLabelStyle: TextStyle(
                fontSize: 14.fSize,
                fontFamily: 'Poppins',
                fontWeight: FontWeight.w600),
            indicator: BoxDecoration(
                color: appTheme.red20001,
                borderRadius: BorderRadius.circular(5.h)),
            tabs: [
              Tab(child: Text("lbl_e_wallet".tr)),
              Tab(child: Text("lbl_bank_transfer".tr)),
              Tab(child: Text("lbl_paylater".tr))
            ]));
  }

  /// Section Widget
  Widget _buildFrameTwoStack() {
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
                  Align(
                      alignment: Alignment.topLeft,
                      child: Row(children: [
                        Container(
                            height: 65.v,
                            width: 125.h,
                            padding: EdgeInsets.symmetric(
                                horizontal: 38.h, vertical: 13.v),
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                    image: AssetImage(ImageConstant.imgGroup5),
                                    fit: BoxFit.cover)),
                            child: CustomImageView(
                                imagePath: ImageConstant.imgArrowLeftPrimary,
                                height: 33.v,
                                width: 41.h,
                                alignment: Alignment.topLeft)),
                        Padding(
                            padding: EdgeInsets.only(
                                left: 14.h, top: 14.v, bottom: 14.v),
                            child: Text("lbl_checkout".tr,
                                style: TextStyle(
                                    color: theme.colorScheme.primary,
                                    fontSize: 24.fSize,
                                    fontFamily: 'Poppins',
                                    fontWeight: FontWeight.w600)))
                      ])),
                  Align(
                      alignment: Alignment.bottomCenter,
                      child: Padding(
                          padding: EdgeInsets.only(bottom: 44.v),
                          child: Text("msg_saatnya_bayar_kamar".tr,
                              style: TextStyle(
                                  color: theme.colorScheme.primary,
                                  fontSize: 14.fSize,
                                  fontFamily: 'Poppins',
                                  fontWeight: FontWeight.w500))))
                ]))));
  }

  /// Navigates to the previous screen.
  onTapImgArrowLeft() {
    Get.back();
  }
}
