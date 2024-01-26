import '../controller/beranda_controller.dart';
import '../models/userprofile_item_model.dart';
import 'package:bobo_cantik/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class UserprofileItemWidget extends StatelessWidget {
  UserprofileItemWidget(
    this.userprofileItemModelObj, {
    Key? key,
    this.onTapUserName,
  }) : super(
          key: key,
        );

  UserprofileItemModel userprofileItemModelObj;

  var controller = Get.find<BerandaController>();

  VoidCallback? onTapUserName;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 189.v,
      width: 139.h,
      child: Stack(
        alignment: Alignment.center,
        children: [
          Obx(
            () => CustomImageView(
              imagePath: userprofileItemModelObj.userImage!.value,
              height: 189.v,
              width: 139.h,
              radius: BorderRadius.circular(
                8.h,
              ),
              alignment: Alignment.center,
            ),
          ),
          Align(
            alignment: Alignment.center,
            child: GestureDetector(
              onTap: () {
                onTapUserName!.call();
              },
              child: Container(
                padding: EdgeInsets.symmetric(
                  horizontal: 8.h,
                  vertical: 6.v,
                ),
                decoration: AppDecoration.gradientBlueGrayToOnSecondaryContainer
                    .copyWith(
                  borderRadius: BorderRadiusStyle.roundedBorder8,
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(height: 1.v),
                    CustomImageView(
                      imagePath: ImageConstant.imgGroup201,
                      height: 2.v,
                      width: 9.h,
                      alignment: Alignment.centerRight,
                    ),
                    SizedBox(height: 151.v),
                    Obx(
                      () => Text(
                        userprofileItemModelObj.userName!.value,
                        style: TextStyle(
                          color: theme.colorScheme.primary,
                          fontSize: 8.949151039123535.fSize,
                          fontFamily: 'Montserrat',
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                    SizedBox(height: 1.v),
                    Row(
                      children: [
                        CustomImageView(
                          imagePath: ImageConstant.imgLinkedin,
                          height: 7.v,
                          width: 6.h,
                          margin: EdgeInsets.only(bottom: 1.v),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 3.h),
                          child: Obx(
                            () => Text(
                              userprofileItemModelObj.userAddress!.value,
                              style: TextStyle(
                                color: theme.colorScheme.primary,
                                fontSize: 6.711863994598389.fSize,
                                fontFamily: 'Montserrat',
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
