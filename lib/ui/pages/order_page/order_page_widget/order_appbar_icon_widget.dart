import 'package:agent/core/utils/assets.gen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppBarIcon{

  static backButton(VoidCallback onPressed){
    return InkWell(
      onTap: onPressed,
      child: Container(
        height: 28.w,
        width: 28.w,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(4),
          color: Color.fromRGBO(255, 255, 255, 0.1),
        ),
        child: Center(
          child: Assets.images.icons.backButton.svg(
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }

  static telephoneButton(VoidCallback onPressed){
    return InkWell(
      onTap: onPressed,
      child: Container(
        height: 28.w,
        width: 28.w,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(4),
          color: Color.fromRGBO(255, 255, 255, 0.1),
        ),
        child: Center(
          child:
          Assets.images.icons.telephoneButton.svg(
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }

  static menuButtpon(VoidCallback onPressed){
    return InkWell(
      onTap: onPressed,
      child: Container(
        height: 28.w,
        width: 28.w,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(4),
          color: Color.fromRGBO(255, 255, 255, 0.1),
        ),
        child: Center(
          child: Assets.images.icons.moreButton.svg(
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }

  static editeButton(VoidCallback onPressed){
    return InkWell(
      onTap: onPressed,
      child: Container(
        height: 28.w,
        width: 28.w,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(4),
          color: Color.fromRGBO(255, 255, 255, 0.1),
        ),
        child: Center(
          child: Assets.images.icons.edite.svg(
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }

}