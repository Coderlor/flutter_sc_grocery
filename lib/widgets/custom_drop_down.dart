// ignore_for_file: unused_import, unnecessary_import

import 'package:flutter/material.dart';

import '/core/app_export.dart';
import '../core/utils/color_constant.dart';
import '../core/utils/math_utils.dart';
import '../data/models/selectionPopupModel/selection_popup_model.dart';

// ignore: must_be_immutable
class CustomDropDown extends StatelessWidget {
  // ignore: use_key_in_widget_constructors
  CustomDropDown(
      {this.shape,
      this.padding,
      this.variant,
      this.fontStyle,
      this.alignment,
      this.width,
      this.margin,
      this.focusNode,
      this.icon,
      this.hintText,
      this.prefix,
      this.prefixConstraints,
      this.items,
      this.onChanged,
      this.validator});

  DropDownShape? shape;

  DropDownPadding? padding;

  DropDownVariant? variant;

  DropDownFontStyle? fontStyle;

  Alignment? alignment;

  double? width;

  EdgeInsetsGeometry? margin;

  FocusNode? focusNode;

  Widget? icon;

  String? hintText;

  Widget? prefix;

  BoxConstraints? prefixConstraints;

  List<SelectionPopupModel>? items;

  Function(SelectionPopupModel)? onChanged;

  FormFieldValidator<SelectionPopupModel>? validator;

  @override
  Widget build(BuildContext context) {
    return alignment != null
        ? Align(
            alignment: alignment ?? Alignment.center,
            child: _buildDropDownWidget(),
          )
        : _buildDropDownWidget();
  }

  _buildDropDownWidget() {
    return Container(
      width: getHorizontalSize(width ?? 0),
      margin: margin,
      child: DropdownButtonFormField<SelectionPopupModel>(
        focusNode: focusNode,
        icon: icon,
        style: _setFontStyle(),
        decoration: _buildDecoration(),
        items: items?.map((SelectionPopupModel item) {
          return DropdownMenuItem<SelectionPopupModel>(
            value: item,
            child: Text(
              item.title,
              overflow: TextOverflow.ellipsis,
            ),
          );
        }).toList(),
        onChanged: (value) {
          onChanged!(value!);
        },
        validator: validator,
      ),
    );
  }

  _buildDecoration() {
    return InputDecoration(
      hintText: hintText ?? "",
      hintStyle: _setFontStyle(),
      border: _setBorderStyle(),
      focusedBorder: _setBorderStyle(),
      prefixIcon: prefix,
      prefixIconConstraints: prefixConstraints,
      fillColor: _setFillColor(),
      filled: _setFilled(),
      isDense: true,
      contentPadding: _setPadding(),
    );
  }

  _setFontStyle() {
    switch (fontStyle) {
      case DropDownFontStyle.MontserratRegular18:
        return TextStyle(
          color: ColorConstant.gray500,
          fontSize: getFontSize(
            18,
          ),
          fontFamily: 'Montserrat',
          fontWeight: FontWeight.w400,
        );
      default:
        return TextStyle(
          color: ColorConstant.gray604,
          fontSize: getFontSize(
            16,
          ),
          fontFamily: 'Montserrat',
          fontWeight: FontWeight.w400,
        );
    }
  }

  _setOutlineBorderRadius() {
    switch (shape) {
      default:
        return BorderRadius.circular(
          getHorizontalSize(
            10.00,
          ),
        );
    }
  }

  _setBorderStyle() {
    switch (variant) {
      case DropDownVariant.FillGray102:
        return OutlineInputBorder(
          borderRadius: _setOutlineBorderRadius(),
          borderSide: BorderSide.none,
        );
      case DropDownVariant.FillGray101:
        return OutlineInputBorder(
          borderRadius: _setOutlineBorderRadius(),
          borderSide: BorderSide.none,
        );
      default:
        return OutlineInputBorder(
          borderRadius: _setOutlineBorderRadius(),
          borderSide: BorderSide.none,
        );
    }
  }

  _setFillColor() {
    switch (variant) {
      case DropDownVariant.FillGray101:
        return ColorConstant.gray101;
      default:
        return ColorConstant.gray102;
    }
  }

  _setFilled() {
    switch (variant) {
      case DropDownVariant.FillGray101:
        return true;
      default:
        return true;
    }
  }

  _setPadding() {
    switch (padding) {
      case DropDownPadding.PaddingT18:
        return getPadding(
          left: 11,
          top: 18,
          right: 11,
          bottom: 11,
        );
      case DropDownPadding.PaddingTB21:
        return getPadding(
          left: 19,
          top: 19,
          right: 19,
          bottom: 21,
        );
      default:
        return getPadding(
          left: 16,
          top: 24,
          right: 16,
          bottom: 16,
        );
    }
  }
}

enum DropDownShape {
  // ignore: constant_identifier_names
  RoundedBorder10,
}

enum DropDownPadding {
  PaddingT24, // ignore: constant_identifier_names
  PaddingT18, // ignore: constant_identifier_names
  PaddingTB21, // ignore: constant_identifier_names
}

enum DropDownVariant {
  FillGray102, // ignore: constant_identifier_names
  FillGray101, // ignore: constant_identifier_names
}

enum DropDownFontStyle {
  MontserratRegular16, // ignore: constant_identifier_names
  MontserratRegular18, // ignore: constant_identifier_names
}
