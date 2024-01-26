import 'controller/login_controller.dart';
import 'package:bobo_cantik/core/app_export.dart';
import 'package:bobo_cantik/core/utils/validation_functions.dart';
import 'package:bobo_cantik/widgets/app_bar/appbar_leading_image.dart';
import 'package:bobo_cantik/widgets/app_bar/appbar_title.dart';
import 'package:bobo_cantik/widgets/app_bar/appbar_trailing_image.dart';
import 'package:bobo_cantik/widgets/app_bar/custom_app_bar.dart';
import 'package:bobo_cantik/widgets/custom_checkbox_button.dart';
import 'package:bobo_cantik/widgets/custom_elevated_button.dart';
import 'package:bobo_cantik/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class LoginScreen extends GetWidget<LoginController> {
  LoginScreen({Key? key}) : super(key: key);

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            body: SizedBox(
                width: SizeUtils.width,
                child: SingleChildScrollView(
                    padding: EdgeInsets.only(
                        bottom: MediaQuery.of(context).viewInsets.bottom),
                    child: Form(
                        key: _formKey,
                        child: SizedBox(
                            width: double.maxFinite,
                            child: Column(children: [
                              _buildHorizontalScroll(),
                              Container(
                                  padding: EdgeInsets.symmetric(
                                      horizontal: 17.h, vertical: 8.v),
                                  child: Column(children: [
                                    SizedBox(height: 28.v),
                                    _buildEmail(),
                                    SizedBox(height: 32.v),
                                    _buildTermOfServicePrivacyPolicyCheckBox(),
                                    SizedBox(height: 26.v),
                                    _buildLogInButton(),
                                    SizedBox(height: 11.v),
                                    Text("msg_forgot_password".tr,
                                        style: TextStyle(
                                            color: appTheme.deepOrange10001,
                                            fontSize: 13.fSize,
                                            fontFamily: 'Poppins',
                                            fontWeight: FontWeight.w600)),
                                    SizedBox(height: 97.v),
                                    Padding(
                                        padding: EdgeInsets.symmetric(
                                            horizontal: 43.h),
                                        child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              _buildGoogleButton(),
                                              _buildAppleButton()
                                            ])),
                                    SizedBox(height: 27.v),
                                    RichText(
                                        text: TextSpan(children: [
                                          TextSpan(
                                              text: "msg_don_t_have_an_account2"
                                                  .tr,
                                              style: CustomTextStyles
                                                  .labelLargePrimaryMedium),
                                          TextSpan(text: " "),
                                          TextSpan(
                                              text: "lbl_sign_up".tr,
                                              style: CustomTextStyles
                                                  .labelLargeDeeporange10001_1),
                                          TextSpan(text: " ")
                                        ]),
                                        textAlign: TextAlign.left),
                                    SizedBox(height: 89.v),
                                    SizedBox(width: 120.h, child: Divider())
                                  ]))
                            ])))))));
  }

  /// Section Widget
  Widget _buildHorizontalScroll() {
    return SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: IntrinsicWidth(
            child: SizedBox(
                height: 141.v,
                width: 407.h,
                child: Stack(alignment: Alignment.center, children: [
                  Align(
                      alignment: Alignment.center,
                      child: Container(
                          height: 141.v,
                          width: 407.h,
                          decoration: BoxDecoration(
                              color: appTheme.deepOrange10001,
                              borderRadius: BorderRadius.circular(45.h),
                              boxShadow: [
                                BoxShadow(
                                    color: appTheme.red2003f,
                                    spreadRadius: 2.h,
                                    blurRadius: 2.h,
                                    offset: Offset(0, 4))
                              ]))),
                  Align(
                      alignment: Alignment.center,
                      child: SizedBox(
                          height: 141.v,
                          width: double.maxFinite,
                          child: Stack(alignment: Alignment.topLeft, children: [
                            CustomImageView(
                                imagePath: ImageConstant.imgGroup4,
                                height: 108.v,
                                width: 139.h,
                                alignment: Alignment.bottomRight),
                            CustomImageView(
                                imagePath: ImageConstant.imgGroup4,
                                height: 57.v,
                                width: 135.h,
                                alignment: Alignment.topLeft),
                            CustomAppBar(
                                leadingWidth: 91.h,
                                leading: AppbarLeadingImage(
                                    imagePath: ImageConstant.imgVector1,
                                    margin: EdgeInsets.only(
                                        left: 45.h, top: 13.v, bottom: 23.v)),
                                centerTitle: true,
                                title: AppbarTitle(text: "lbl_login".tr),
                                actions: [
                                  AppbarTrailingImage(
                                      imagePath: ImageConstant.imgVector2,
                                      margin: EdgeInsets.fromLTRB(
                                          5.h, 12.v, 5.h, 38.v))
                                ])
                          ])))
                ]))));
  }

  /// Section Widget
  Widget _buildEmailColumn() {
    return CustomTextFormField(
        controller: controller.emailColumnController,
        hintText: "lbl_email".tr,
        textInputType: TextInputType.emailAddress,
        validator: (value) {
          if (value == null || (!isValidEmail(value, isRequired: true))) {
            return "err_msg_please_enter_valid_email".tr;
          }
          return null;
        },
        contentPadding: EdgeInsets.symmetric(horizontal: 15.h, vertical: 25.v),
        borderDecoration: TextFormFieldStyleHelper.outlineOnSecondaryContainer);
  }

  /// Section Widget
  Widget _buildPasswordColumn() {
    return CustomTextFormField(
        controller: controller.passwordColumnController,
        hintText: "lbl_password".tr,
        textInputAction: TextInputAction.done,
        textInputType: TextInputType.visiblePassword,
        validator: (value) {
          if (value == null || (!isValidPassword(value, isRequired: true))) {
            return "err_msg_please_enter_valid_password".tr;
          }
          return null;
        },
        obscureText: true,
        contentPadding: EdgeInsets.symmetric(horizontal: 16.h, vertical: 25.v),
        borderDecoration: TextFormFieldStyleHelper.outlineOnSecondaryContainer);
  }

  /// Section Widget
  Widget _buildEmail() {
    return Container(
        margin: EdgeInsets.only(left: 5.h),
        decoration: AppDecoration.outlineOnSecondaryContainer
            .copyWith(borderRadius: BorderRadiusStyle.roundedBorder12),
        child: Column(mainAxisSize: MainAxisSize.min, children: [
          _buildEmailColumn(),
          SizedBox(height: 31.v),
          _buildPasswordColumn()
        ]));
  }

  /// Section Widget
  Widget _buildTermOfServicePrivacyPolicyCheckBox() {
    return Align(
        alignment: Alignment.centerLeft,
        child: Padding(
            padding: EdgeInsets.only(left: 8.h),
            child: Obx(() => CustomCheckboxButton(
                alignment: Alignment.centerLeft,
                text: "msg_term_of_service".tr,
                value: controller.termOfServicePrivacyPolicyCheckBox.value,
                padding: EdgeInsets.symmetric(vertical: 1.v),
                onChange: (value) {
                  controller.termOfServicePrivacyPolicyCheckBox.value = value;
                }))));
  }

  /// Section Widget
  Widget _buildLogInButton() {
    return CustomElevatedButton(
        height: 55.v,
        text: "lbl_log_in2".tr,
        buttonStyle: CustomButtonStyles.fillPrimary,
        onPressed: () {
          onTapLogInButton();
        });
  }

  /// Section Widget
  Widget _buildGoogleButton() {
    return CustomElevatedButton(
        width: 132.h,
        text: "lbl_google".tr,
        leftIcon: Container(
            margin: EdgeInsets.only(right: 3.h),
            child: CustomImageView(
                imagePath: ImageConstant.imgGoogleLogo,
                height: 22.v,
                width: 24.h)));
  }

  /// Section Widget
  Widget _buildAppleButton() {
    return CustomElevatedButton(
        width: 132.h,
        text: "lbl_apple".tr,
        margin: EdgeInsets.only(left: 6.h),
        leftIcon: Container(
            margin: EdgeInsets.only(right: 3.h),
            child: CustomImageView(
                imagePath: ImageConstant.imgAppleLogo,
                height: 20.v,
                width: 21.h)));
  }

  /// Navigates to the berandaScreen when the action is triggered.
  onTapLogInButton() {
    Get.toNamed(
      AppRoutes.berandaScreen,
    );
  }
}
