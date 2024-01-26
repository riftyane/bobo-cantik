import 'controller/read_room_controller.dart';
import 'dart:async';
import 'package:bobo_cantik/core/app_export.dart';
import 'package:bobo_cantik/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

// ignore_for_file: must_be_immutable
class ReadRoomBottomsheet extends StatelessWidget {
  ReadRoomBottomsheet(this.controller, {Key? key}) : super(key: key);

  Completer<GoogleMapController> googleMapController = Completer();

  ReadRoomController controller;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        child: Container(
            padding: EdgeInsets.symmetric(horizontal: 9.h, vertical: 17.v),
            decoration: AppDecoration.fillDeeporange50
                .copyWith(borderRadius: BorderRadiusStyle.roundedBorder35),
            child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Align(
                      alignment: Alignment.center,
                      child: SizedBox(width: 120.h, child: Divider())),
                  SizedBox(height: 25.v),
                  _buildKostHarmoniSection(),
                  SizedBox(height: 15.v),
                  Divider(color: appTheme.gray50001, endIndent: 10.h),
                  SizedBox(height: 13.v),
                  Padding(
                      padding: EdgeInsets.only(left: 3.h),
                      child: Row(children: [
                        CustomImageView(
                            imagePath: ImageConstant.imgSignal,
                            height: 24.adaptSize,
                            width: 24.adaptSize),
                        Padding(
                            padding: EdgeInsets.only(left: 3.h),
                            child: Text("lbl_5_0".tr,
                                style: TextStyle(
                                    color: appTheme.gray60001,
                                    fontSize: 15.fSize,
                                    fontFamily: 'Poppins',
                                    fontWeight: FontWeight.w500)))
                      ])),
                  SizedBox(height: 14.v),
                  Divider(color: appTheme.gray50001, endIndent: 10.h),
                  SizedBox(height: 9.v),
                  Padding(
                      padding: EdgeInsets.only(left: 8.h),
                      child: Text("lbl_deskripsi".tr,
                          style: TextStyle(
                              color: theme.colorScheme.onSecondaryContainer
                                  .withOpacity(0.6),
                              fontSize: 20.fSize,
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w600))),
                  SizedBox(height: 3.v),
                  Container(
                      width: 332.h,
                      margin: EdgeInsets.only(left: 12.h, right: 27.h),
                      child: Text("msg_kost_ini_terdiri".tr,
                          maxLines: 3,
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(
                              color: appTheme.gray60001,
                              fontSize: 8.fSize,
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w500))),
                  SizedBox(height: 8.v),
                  _buildLokasiSection(),
                  SizedBox(height: 23.v),
                  CustomElevatedButton(
                      height: 40.v,
                      text: "lbl_pilih_kamar".tr,
                      margin: EdgeInsets.symmetric(horizontal: 24.h),
                      buttonStyle: CustomButtonStyles.fillErrorContainer,
                      onPressed: () {
                        onTapPilihKamar();
                      },
                      alignment: Alignment.center),
                  SizedBox(height: 39.v)
                ])));
  }

  /// Section Widget
  Widget _buildKostHarmoniSection() {
    return Padding(
        padding: EdgeInsets.only(left: 8.h, right: 34.h),
        child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                Text("lbl_kost_harmoni".tr,
                    style: TextStyle(
                        color: theme.colorScheme.onSecondaryContainer
                            .withOpacity(0.6),
                        fontSize: 25.fSize,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w600)),
                SizedBox(height: 7.v),
                Row(children: [
                  CustomImageView(
                      imagePath: ImageConstant.imgLinkedinGray60001,
                      height: 18.v,
                      width: 14.h,
                      margin: EdgeInsets.only(top: 1.v, bottom: 3.v)),
                  Padding(
                      padding: EdgeInsets.only(left: 7.h),
                      child: Text("msg_jl_taman_anggrek".tr,
                          style: TextStyle(
                              color: appTheme.gray60001,
                              fontSize: 15.fSize,
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w500)))
                ])
              ]),
              Padding(
                  padding: EdgeInsets.only(top: 3.v, bottom: 27.v),
                  child: Text("lbl_rp_1jt".tr,
                      style: TextStyle(
                          color: theme.colorScheme.onSecondaryContainer
                              .withOpacity(0.6),
                          fontSize: 25.fSize,
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w600)))
            ]));
  }

  /// Section Widget
  Widget _buildLokasiSection() {
    return Container(
        margin: EdgeInsets.only(right: 10.h),
        padding: EdgeInsets.symmetric(horizontal: 9.h),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Text("lbl_lokasi".tr,
              style: TextStyle(
                  color:
                      theme.colorScheme.onSecondaryContainer.withOpacity(0.6),
                  fontSize: 20.fSize,
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.w600)),
          SizedBox(height: 6.v),
          Container(
              width: 324.h,
              margin: EdgeInsets.only(left: 4.h, right: 15.h),
              child: Text("msg_kost_ini_berlokasi".tr,
                  maxLines: 3,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                      color: appTheme.gray60001,
                      fontSize: 8.fSize,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w500))),
          SizedBox(height: 17.v),
          SizedBox(
              height: 130.v,
              width: 281.h,
              child: GoogleMap(
                  mapType: MapType.normal,
                  initialCameraPosition: CameraPosition(
                      target: LatLng(37.43296265331129, -122.08832357078792),
                      zoom: 14.4746),
                  onMapCreated: (GoogleMapController controller) {
                    googleMapController.complete(controller);
                  },
                  zoomControlsEnabled: false,
                  zoomGesturesEnabled: false,
                  myLocationButtonEnabled: false,
                  myLocationEnabled: false))
        ]));
  }

  /// Navigates to the selectRoomScreen when the action is triggered.
  onTapPilihKamar() {
    Get.toNamed(
      AppRoutes.selectRoomScreen,
    );
  }
}
