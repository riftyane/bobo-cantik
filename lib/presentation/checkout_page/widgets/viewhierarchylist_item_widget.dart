import '../controller/checkout_controller.dart';
import '../models/viewhierarchylist_item_model.dart';
import 'package:bobo_cantik/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class ViewhierarchylistItemWidget extends StatelessWidget {
  ViewhierarchylistItemWidget(
    this.viewhierarchylistItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  ViewhierarchylistItemModel viewhierarchylistItemModelObj;

  var controller = Get.find<CheckoutController>();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 6.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Obx(
            () => CustomImageView(
              imagePath: viewhierarchylistItemModelObj.image!.value,
              height: 26.v,
              width: 68.h,
              margin: EdgeInsets.only(bottom: 21.v),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 18.h,
              top: 4.v,
              bottom: 21.v,
            ),
            child: Obx(
              () => Text(
                viewhierarchylistItemModelObj.text!.value,
                style: TextStyle(
                  color: theme.colorScheme.onSecondaryContainer.withOpacity(1),
                  fontSize: 16.fSize,
                  fontFamily: 'Montserrat',
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
          ),
          Spacer(),
          Opacity(
            opacity: 0.4,
            child: Container(
              height: 22.adaptSize,
              width: 22.adaptSize,
              margin: EdgeInsets.only(
                top: 8.v,
                right: 1.h,
                bottom: 17.v,
              ),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(
                  11.h,
                ),
                border: Border.all(
                  color:
                      theme.colorScheme.onSecondaryContainer.withOpacity(0.49),
                  width: 1.h,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
