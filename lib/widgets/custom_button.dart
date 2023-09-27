// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';

// ignore: unused_import
import '../core/utils/color_constant.dart';
import '../core/utils/math_utils.dart';

class CustomButton extends StatelessWidget {
  // ignore: use_key_in_widget_constructors
  CustomButton(
      {this.shape,
      this.padding,
      this.variant,
      this.fontStyle,
      this.alignment,
      this.onTap,
      this.width,
      this.margin,
      this.text});

  ButtonShape? shape;

  ButtonPadding? padding;

  ButtonVariant? variant;

  ButtonFontStyle? fontStyle;

  Alignment? alignment;

  VoidCallback? onTap;

  double? width;

  EdgeInsetsGeometry? margin;

  String? text;

  @override
  Widget build(BuildContext context) {
    return alignment != null
        ? Align(
            alignment: alignment ?? Alignment.center,
            child: _buildButtonWidget(),
          )
        : _buildButtonWidget();
  }

  _buildButtonWidget() {
    return InkWell(
      onTap: onTap,
      child: Container(
        width: getHorizontalSize(width ?? 0),
        margin: margin,
        padding: _setPadding(),
        decoration: _buildDecoration(),
        child: Text(
          text ?? "",
          textAlign: TextAlign.center,
          style: _setFontStyle(),
        ),
      ),
    );
  }

  _buildDecoration() {
    return BoxDecoration(
      color: _setColor(),
      border: _setBorder(),
      borderRadius: _setBorderRadius(),
      boxShadow: _setBoxShadow(),
    );
  }

  _setPadding() {
    switch (padding) {
      case ButtonPadding.PaddingAll10:
        return getPadding(
          all: 10,
        );
      default:
        return getPadding(
          all: 14,
        );
    }
  }

  _setColor() {
    switch (variant) {
      case ButtonVariant.OutlineIndigoA20033:
        return ColorConstant.green500;
      case ButtonVariant.FillGray300d8:
        return ColorConstant.gray300D8;
      case ButtonVariant.OutlineGreen500:
        return null;
      default:
        return ColorConstant.green500;
    }
  }

  _setBorder() {
    switch (variant) {
      case ButtonVariant.OutlineGreen500:
        return Border.all(
          color: ColorConstant.green500,
          width: getHorizontalSize(
            1.00,
          ),
        );
      case ButtonVariant.FillGreen500:
      case ButtonVariant.OutlineIndigoA20033:
      case ButtonVariant.FillGray300d8:
        return null;
      default:
        return null;
    }
  }

  _setBorderRadius() {
    switch (shape) {
      case ButtonShape.RoundedBorder10:
        return BorderRadius.circular(
          getHorizontalSize(
            10.00,
          ),
        );
      case ButtonShape.RoundedBorder2:
        return BorderRadius.circular(
          getHorizontalSize(
            2.66,
          ),
        );
      case ButtonShape.Square:
        return BorderRadius.circular(0);
      default:
        return BorderRadius.circular(
          getHorizontalSize(
            5.00,
          ),
        );
    }
  }

  _setBoxShadow() {
    switch (variant) {
      case ButtonVariant.OutlineIndigoA20033:
        return [
          BoxShadow(
            color: ColorConstant.indigoA20033,
            spreadRadius: getHorizontalSize(
              2.00,
            ),
            blurRadius: getHorizontalSize(
              2.00,
            ),
            // ignore: prefer_const_constructors
            offset: Offset(
              0,
              4,
            ),
          )
        ];
      case ButtonVariant.FillGreen500:
      case ButtonVariant.OutlineGreen500:
      case ButtonVariant.FillGray300d8:
        return null;
      default:
        return null;
    }
  }

  _setFontStyle() {
    switch (fontStyle) {
      case ButtonFontStyle.MontserratSemiBold16Green500:
        return TextStyle(
          color: ColorConstant.green500,
          fontSize: getFontSize(
            16,
          ),
          fontFamily: 'Montserrat',
          fontWeight: FontWeight.w600,
        );
      case ButtonFontStyle.MontserratSemiBold18:
        return TextStyle(
          color: ColorConstant.whiteA700,
          fontSize: getFontSize(
            18,
          ),
          fontFamily: 'Montserrat',
          fontWeight: FontWeight.w600,
        );
      case ButtonFontStyle.MontserratSemiBold2661:
        return TextStyle(
          color: ColorConstant.whiteA700,
          fontSize: getFontSize(
            26.61,
          ),
          fontFamily: 'Montserrat',
          fontWeight: FontWeight.w600,
        );
      default:
        return TextStyle(
          color: ColorConstant.whiteA700,
          fontSize: getFontSize(
            16,
          ),
          fontFamily: 'Montserrat',
          fontWeight: FontWeight.w600,
        );
    }
  }
}

enum ButtonShape {
  // ignore: constant_identifier_names
  Square,
  // ignore: constant_identifier_names
  RoundedBorder5,
  // ignore: constant_identifier_names
  RoundedBorder10,
  // ignore: constant_identifier_names
  RoundedBorder2,
}

enum ButtonPadding {
  // ignore: constant_identifier_names
  PaddingAll10,
  // ignore: constant_identifier_names
  PaddingAll14,
}

enum ButtonVariant {
  // ignore: constant_identifier_names
  FillGreen500,
  // ignore: constant_identifier_names
  OutlineGreen500,
  // ignore: constant_identifier_names
  OutlineIndigoA20033,
  // ignore: constant_identifier_names
  FillGray300d8,
}

enum ButtonFontStyle {
  MontserratSemiBold16, // ignore: constant_identifier_names
  MontserratSemiBold16Green500, // ignore: constant_identifier_names
  MontserratSemiBold18, // ignore: constant_identifier_names
  MontserratSemiBold2661, // ignore: constant_identifier_names
}
