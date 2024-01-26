import '../beranda_screen/widgets/userprofile_item_widget.dart';
import 'controller/beranda_controller.dart';
import 'models/userprofile_item_model.dart';
import 'package:bobo_cantik/core/app_export.dart';
import 'package:bobo_cantik/widgets/custom_floating_button.dart';
import 'package:bobo_cantik/widgets/custom_search_view.dart';
import 'package:flutter/material.dart';
import 'package:bobo_cantik/presentation/read_room_bottomsheet/read_room_bottomsheet.dart';
import 'package:bobo_cantik/presentation/read_room_bottomsheet/controller/read_room_controller.dart';

class BerandaScreen extends GetWidget<BerandaController> {
  const BerandaScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            body: SizedBox(
                width: double.maxFinite,
                child: SingleChildScrollView(
                    child: SizedBox(
                        height: SizeUtils.height,
                        width: double.maxFinite,
                        child: Stack(alignment: Alignment.topCenter, children: [
                          Align(
                              alignment: Alignment.center,
                              child: Container(
                                  padding:
                                      EdgeInsets.symmetric(horizontal: 42.h),
                                  child: Column(
                                      mainAxisSize: MainAxisSize.min,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      mainAxisAlignment: MainAxisAlignment.end,
                                      children: [
                                        SizedBox(height: 231.v),
                                        _buildUserProfile(),
                                        SizedBox(height: 23.v),
                                        Container(
                                            height: 189.v,
                                            width: 139.h,
                                            margin: EdgeInsets.only(left: 1.h),
                                            child: Stack(
                                                alignment: Alignment.center,
                                                children: [
                                                  CustomImageView(
                                                      imagePath: ImageConstant
                                                          .imgRectangle33184,
                                                      height: 189.v,
                                                      width: 139.h,
                                                      radius:
                                                          BorderRadius.circular(
                                                              8.h),
                                                      alignment:
                                                          Alignment.center),
                                                  Align(
                                                      alignment:
                                                          Alignment.center,
                                                      child: Container(
                                                          padding: EdgeInsets
                                                              .symmetric(
                                                                  horizontal:
                                                                      8.h,
                                                                  vertical:
                                                                      7.v),
                                                          decoration: AppDecoration
                                                              .gradientBlueGrayToOnSecondaryContainer
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
                                                              children: [
                                                                CustomImageView(
                                                                    imagePath:
                                                                        ImageConstant
                                                                            .imgGroup201,
                                                                    height: 2.v,
                                                                    width: 9.h,
                                                                    alignment:
                                                                        Alignment
                                                                            .centerRight),
                                                                SizedBox(
                                                                    height:
                                                                        151.v),
                                                                Text(
                                                                    "lbl_kost_syariah"
                                                                        .tr,
                                                                    style: TextStyle(
                                                                        color: theme
                                                                            .colorScheme.primary,
                                                                        fontSize:
                                                                            8.949151039123535
                                                                                .fSize,
                                                                        fontFamily:
                                                                            'Montserrat',
                                                                        fontWeight:
                                                                            FontWeight.w600)),
                                                                Row(children: [
                                                                  CustomImageView(
                                                                      imagePath:
                                                                          ImageConstant
                                                                              .imgLinkedin,
                                                                      height:
                                                                          7.v,
                                                                      width:
                                                                          6.h),
                                                                  Padding(
                                                                      padding: EdgeInsets.only(
                                                                          left: 4
                                                                              .h),
                                                                      child: Text(
                                                                          "lbl_jl_kemayoran"
                                                                              .tr,
                                                                          style: TextStyle(
                                                                              color: theme.colorScheme.primary,
                                                                              fontSize: 6.711863994598389.fSize,
                                                                              fontFamily: 'Montserrat',
                                                                              fontWeight: FontWeight.w600)))
                                                                ])
                                                              ])))
                                                ]))
                                      ]))),
                          _buildBuildByErsi()
                        ])))),
            floatingActionButton: _buildFloatingActionButton()));
  }

  /// Section Widget
  Widget _buildUserProfile() {
    return Padding(
        padding: EdgeInsets.only(left: 3.h),
        child: Obx(() => GridView.builder(
            shrinkWrap: true,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                mainAxisExtent: 190.v,
                crossAxisCount: 2,
                mainAxisSpacing: 25.h,
                crossAxisSpacing: 25.h),
            physics: NeverScrollableScrollPhysics(),
            itemCount: controller
                .berandaModelObj.value.userprofileItemList.value.length,
            itemBuilder: (context, index) {
              UserprofileItemModel model = controller
                  .berandaModelObj.value.userprofileItemList.value[index];
              return UserprofileItemWidget(model, onTapUserName: () {
                onTapUserName();
              });
            })));
  }

  /// Section Widget
  Widget _buildBuildByErsi() {
    return Align(
        alignment: Alignment.topCenter,
        child: Card(
            clipBehavior: Clip.antiAlias,
            elevation: 0,
            margin: EdgeInsets.all(0),
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadiusStyle.roundedBorder20),
            child: Container(
                height: 208.v,
                width: double.maxFinite,
                decoration: AppDecoration.outlinePrimaryContainer
                    .copyWith(borderRadius: BorderRadiusStyle.roundedBorder20),
                child: Stack(alignment: Alignment.bottomCenter, children: [
                  Align(
                      alignment: Alignment.topCenter,
                      child: Card(
                          clipBehavior: Clip.antiAlias,
                          elevation: 0,
                          margin: EdgeInsets.all(0),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadiusStyle.roundedBorder20),
                          child: Container(
                              height: 189.v,
                              width: double.maxFinite,
                              decoration: BoxDecoration(
                                  borderRadius:
                                      BorderRadiusStyle.roundedBorder20,
                                  image: DecorationImage(
                                      image:
                                          AssetImage(ImageConstant.imgGroup447),
                                      fit: BoxFit.cover)),
                              child: Stack(
                                  alignment: Alignment.topLeft,
                                  children: [
                                    CustomImageView(
                                        imagePath: ImageConstant.imgGroup5,
                                        height: 105.v,
                                        width: 118.h,
                                        alignment: Alignment.topLeft),
                                    Align(
                                        alignment: Alignment.topLeft,
                                        child: Padding(
                                            padding: EdgeInsets.only(
                                                left: 146.h, top: 18.v),
                                            child: Text("lbl_build_by_ersi".tr,
                                                style: TextStyle(
                                                    color: appTheme.gray600,
                                                    fontSize: 14.fSize,
                                                    fontFamily: 'Poppins',
                                                    fontWeight:
                                                        FontWeight.w600)))),
                                    Align(
                                        alignment: Alignment.topLeft,
                                        child: Padding(
                                            padding: EdgeInsets.only(
                                                left: 22.h, top: 48.v),
                                            child: Row(children: [
                                              Expanded(
                                                  child: Column(
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .start,
                                                      children: [
                                                    Row(
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .spaceBetween,
                                                        children: [
                                                          Text(
                                                              "lbl_hai_ersi".tr,
                                                              style: TextStyle(
                                                                  color: theme
                                                                      .colorScheme
                                                                      .primary,
                                                                  fontSize:
                                                                      36.fSize,
                                                                  fontFamily:
                                                                      'Poppins',
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w600)),
                                                          CustomImageView(
                                                              imagePath:
                                                                  ImageConstant
                                                                      .imgUser,
                                                              height: 19.v,
                                                              width: 15.h,
                                                              margin: EdgeInsets
                                                                  .only(
                                                                      top:
                                                                          34.v))
                                                        ]),
                                                    Text(
                                                        "msg_selamat_datang".tr,
                                                        style: TextStyle(
                                                            color: theme
                                                                .colorScheme
                                                                .primary,
                                                            fontSize: 14.fSize,
                                                            fontFamily:
                                                                'Poppins',
                                                            fontWeight:
                                                                FontWeight
                                                                    .w500))
                                                  ])),
                                              CustomImageView(
                                                  imagePath: ImageConstant
                                                      .imgEllipse172,
                                                  height: 46.adaptSize,
                                                  width: 46.adaptSize,
                                                  radius: BorderRadius.circular(
                                                      23.h),
                                                  margin: EdgeInsets.only(
                                                      left: 14.h,
                                                      top: 20.v,
                                                      bottom: 9.v))
                                            ])))
                                  ])))),
                  Align(
                      alignment: Alignment.bottomCenter,
                      child: CustomSearchView(
                          width: 303.h,
                          controller: controller.searchController,
                          hintText: "msg_mau_bobo_dimana".tr,
                          alignment: Alignment.bottomCenter))
                ]))));
  }

  /// Section Widget
  Widget _buildFloatingActionButton() {
    return CustomFloatingButton(
        height: 44,
        width: 44,
        backgroundColor: theme.colorScheme.primary,
        onTap: () {
          onTapFloatingActionButton();
        },
        child: CustomImageView(
            imagePath: ImageConstant.imgClose, height: 22.0.v, width: 22.0.h));
  }

  /// Displays a scrollable bottom sheet widget using the [Get] package
  /// and the [ReadRoomBottomsheet] widget.
  ///
  /// The bottom sheet is controlled by the [ReadRoomController]
  /// and is displayed using the [Get.bottomSheet] method with
  /// [isScrollControlled] set to true.
  onTapUserName() {
    Get.bottomSheet(ReadRoomBottomsheet(Get.put(ReadRoomController())),
        isScrollControlled: true);
  }

  /// Navigates to the addRoomScreen when the action is triggered.
  onTapFloatingActionButton() {
    Get.toNamed(
      AppRoutes.addRoomScreen,
    );
  }
}
