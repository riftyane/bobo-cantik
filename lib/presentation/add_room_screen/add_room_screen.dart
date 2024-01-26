import 'controller/add_room_controller.dart';
import 'package:bobo_cantik/core/app_export.dart';
import 'package:bobo_cantik/widgets/app_bar/appbar_title.dart';
import 'package:bobo_cantik/widgets/app_bar/custom_app_bar.dart';
import 'package:bobo_cantik/widgets/custom_drop_down.dart';
import 'package:bobo_cantik/widgets/custom_elevated_button.dart';
import 'package:bobo_cantik/widgets/custom_text_form_field.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';

class AddRoomScreen extends GetWidget<AddRoomController> {
  const AddRoomScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            extendBody: true,
            extendBodyBehindAppBar: true,
            resizeToAvoidBottomInset: false,
            appBar: _buildAppBar(),
            body: Container(
                width: SizeUtils.width,
                height: SizeUtils.height,
                padding: EdgeInsets.only(top: 56.v, bottom: 54.v),
                decoration: BoxDecoration(
                    gradient: LinearGradient(
                        begin: Alignment(0.5, 0),
                        end: Alignment(0.5, 1),
                        colors: [appTheme.red100, appTheme.deepOrange50])),
                child: Container(
                    width: double.maxFinite,
                    padding:
                        EdgeInsets.symmetric(horizontal: 32.h, vertical: 46.v),
                    child: Column(children: [
                      Align(
                          alignment: Alignment.centerLeft,
                          child: Padding(
                              padding: EdgeInsets.only(right: 73.h),
                              child: Row(children: [
                                CustomImageView(
                                    imagePath: ImageConstant.imgArrowLeft,
                                    height: 24.adaptSize,
                                    width: 24.adaptSize,
                                    margin:
                                        EdgeInsets.only(top: 7.v, bottom: 6.v),
                                    onTap: () {
                                      onTapImgArrowLeft();
                                    }),
                                Padding(
                                    padding: EdgeInsets.only(left: 36.h),
                                    child: RichText(
                                        text: TextSpan(children: [
                                          TextSpan(
                                              text: "lbl_tambah_kost2".tr,
                                              style: CustomTextStyles
                                                  .headlineSmall25_1),
                                          TextSpan(
                                              text: "lbl".tr,
                                              style: CustomTextStyles
                                                  .headlineSmallDeeporange10001)
                                        ]),
                                        textAlign: TextAlign.left))
                              ]))),
                      SizedBox(height: 29.v),
                      Align(
                          alignment: Alignment.centerLeft,
                          child: Container(
                              decoration: AppDecoration.outlineGray.copyWith(
                                  borderRadius:
                                      BorderRadiusStyle.roundedBorder8),
                              child: DottedBorder(
                                  color: appTheme.gray500,
                                  padding: EdgeInsets.only(
                                      left: 1.h,
                                      top: 1.v,
                                      right: 1.h,
                                      bottom: 1.v),
                                  strokeWidth: 1.h,
                                  radius: Radius.circular(10),
                                  borderType: BorderType.RRect,
                                  dashPattern: [2, 2],
                                  child: Padding(
                                      padding: EdgeInsets.symmetric(
                                          horizontal: 16.h, vertical: 11.v),
                                      child: Row(
                                          mainAxisSize: MainAxisSize.min,
                                          children: [
                                            CustomImageView(
                                                imagePath:
                                                    ImageConstant.imgGroup208,
                                                height: 20.v,
                                                width: 23.h),
                                            Padding(
                                                padding: EdgeInsets.only(
                                                    left: 8.h, right: 6.h),
                                                child: Text("lbl_media".tr,
                                                    style: TextStyle(
                                                        color: appTheme.gray500,
                                                        fontSize: 12.fSize,
                                                        fontFamily: 'Poppins',
                                                        fontWeight:
                                                            FontWeight.w400)))
                                          ]))))),
                      SizedBox(height: 13.v),
                      _buildName(),
                      SizedBox(height: 13.v),
                      _buildAddress(),
                      SizedBox(height: 13.v),
                      _buildRoomSpecificationsAndFacilities(),
                      SizedBox(height: 13.v),
                      _buildRentalPrice1(),
                      SizedBox(height: 5.v)
                    ]))),
            bottomNavigationBar: _buildTambah()));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar() {
    return CustomAppBar(
        height: 56.v,
        centerTitle: true,
        title: AppbarTitle(text: "lbl_build_by_ersi".tr));
  }

  /// Section Widget
  Widget _buildName() {
    return Padding(
        padding: EdgeInsets.symmetric(horizontal: 7.h),
        child: CustomTextFormField(
            controller: controller.nameController, hintText: "lbl_nama".tr));
  }

  /// Section Widget
  Widget _buildAddress() {
    return Padding(
        padding: EdgeInsets.symmetric(horizontal: 7.h),
        child: CustomTextFormField(
            controller: controller.addressController,
            hintText: "lbl_alamat".tr));
  }

  /// Section Widget
  Widget _buildRoomSpecificationsAndFacilities() {
    return Padding(
        padding: EdgeInsets.symmetric(horizontal: 7.h),
        child: CustomTextFormField(
            controller: controller.roomSpecificationsAndFacilitiesController,
            hintText: "msg_spesifikasi_kamar".tr,
            maxLines: 5));
  }

  /// Section Widget
  Widget _buildRentalPrice() {
    return Padding(
        padding: EdgeInsets.only(left: 7.h),
        child: CustomTextFormField(
            width: 154.h,
            controller: controller.rentalPriceController,
            hintText: "lbl_harga_sewa".tr,
            textInputAction: TextInputAction.done));
  }

  /// Section Widget
  Widget _buildRentalPrice1() {
    return Padding(
        padding: EdgeInsets.only(right: 7.h),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Padding(
              padding: EdgeInsets.only(left: 7.h),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CustomDropDown(
                        width: 154.h,
                        hintText: "lbl_jenis_kost".tr,
                        items: controller
                            .addRoomModelObj.value.dropdownItemList!.value,
                        onChanged: (value) {
                          controller.onSelected(value);
                        }),
                    Card(
                        clipBehavior: Clip.antiAlias,
                        elevation: 0,
                        margin: EdgeInsets.all(0),
                        color: theme.colorScheme.primary,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadiusStyle.roundedBorder8),
                        child: Container(
                            height: 46.v,
                            width: 145.h,
                            decoration: AppDecoration.fillPrimary.copyWith(
                                borderRadius: BorderRadiusStyle.roundedBorder8),
                            child:
                                Stack(alignment: Alignment.center, children: [
                              _buildKamarTersisa(
                                  kamarTersisa: "lbl_kamar_tersisa".tr),
                              Align(
                                  alignment: Alignment.center,
                                  child: Card(
                                      clipBehavior: Clip.antiAlias,
                                      elevation: 0,
                                      margin: EdgeInsets.all(0),
                                      shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadiusStyle.roundedBorder8),
                                      child: Container(
                                          height: 46.v,
                                          width: 145.h,
                                          decoration: BoxDecoration(
                                              borderRadius: BorderRadiusStyle
                                                  .roundedBorder8),
                                          child: Stack(
                                              alignment: Alignment.center,
                                              children: [
                                                Align(
                                                    alignment: Alignment.center,
                                                    child: Row(
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .center,
                                                        children: [
                                                          Text(
                                                              "lbl_kamar_tersisa"
                                                                  .tr,
                                                              style: TextStyle(
                                                                  color: appTheme
                                                                      .gray400,
                                                                  fontSize:
                                                                      12.fSize,
                                                                  fontFamily:
                                                                      'Poppins',
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w400)),
                                                          CustomImageView(
                                                              imagePath:
                                                                  ImageConstant
                                                                      .imgArrowDown,
                                                              height: 4.v,
                                                              width: 10.h,
                                                              radius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          2.h),
                                                              margin: EdgeInsets
                                                                  .only(
                                                                      left:
                                                                          19.h,
                                                                      top: 7.v,
                                                                      bottom:
                                                                          6.v))
                                                        ])),
                                                Align(
                                                    alignment: Alignment.center,
                                                    child: Container(
                                                        width: 145.h,
                                                        padding: EdgeInsets
                                                            .symmetric(
                                                                vertical: 13.v),
                                                        decoration: BoxDecoration(
                                                            borderRadius:
                                                                BorderRadiusStyle
                                                                    .roundedBorder8),
                                                        child: Row(
                                                            mainAxisAlignment:
                                                                MainAxisAlignment
                                                                    .spaceEvenly,
                                                            crossAxisAlignment:
                                                                CrossAxisAlignment
                                                                    .end,
                                                            children: [
                                                              Text(
                                                                  "lbl_kamar_tersisa"
                                                                      .tr,
                                                                  style: TextStyle(
                                                                      color: appTheme
                                                                          .gray400,
                                                                      fontSize: 12
                                                                          .fSize,
                                                                      fontFamily:
                                                                          'Poppins',
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .w400)),
                                                              CustomImageView(
                                                                  imagePath:
                                                                      ImageConstant
                                                                          .imgArrowDown,
                                                                  height: 4.v,
                                                                  width: 10.h,
                                                                  radius: BorderRadius
                                                                      .circular(
                                                                          2.h),
                                                                  margin: EdgeInsets
                                                                      .only(
                                                                          top: 8
                                                                              .v,
                                                                          bottom:
                                                                              6.v))
                                                            ])))
                                              ]))))
                            ])))
                  ])),
          SizedBox(height: 13.v),
          _buildRentalPrice()
        ]));
  }

  /// Section Widget
  Widget _buildTambah() {
    return CustomElevatedButton(
        height: 54.v,
        text: "lbl_tambah".tr,
        margin: EdgeInsets.only(left: 39.h, right: 39.h, bottom: 35.v),
        buttonStyle: CustomButtonStyles.fillOnPrimary);
  }

  /// Common widget
  Widget _buildKamarTersisa({required String kamarTersisa}) {
    return Row(mainAxisAlignment: MainAxisAlignment.center, children: [
      Text(kamarTersisa,
          style: TextStyle(
              color: appTheme.gray400,
              fontSize: 12.fSize,
              fontFamily: 'Poppins',
              fontWeight: FontWeight.w400)),
      CustomImageView(
          imagePath: ImageConstant.imgArrowDown,
          height: 4.v,
          width: 10.h,
          radius: BorderRadius.circular(2.h),
          margin: EdgeInsets.only(left: 19.h, top: 7.v, bottom: 6.v))
    ]);
  }

  /// Navigates to the previous screen.
  onTapImgArrowLeft() {
    Get.back();
  }
}
