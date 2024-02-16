import 'package:flutter/material.dart';
import 'package:one_s_application1/core/app_export.dart';
import 'package:one_s_application1/widgets/custom_icon_button.dart';

// ignore: must_be_immutable
class PagetitleItemWidget extends StatelessWidget {
  const PagetitleItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: Padding(
        padding: EdgeInsets.only(bottom: 382.v),
        child: Row(
          children: [
            Padding(
              padding: EdgeInsets.only(top: 1.v),
              child: Text(
                "Air Quality",
                style: CustomTextStyles.titleLarge_1,
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 190.h),
              child: CustomIconButton(
                height: 24.adaptSize,
                width: 24.adaptSize,
                child: CustomImageView(
                  imagePath: ImageConstant.imgVideoCameraPrimary,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
