import 'controller/register_controller.dart';
import 'package:flutter/material.dart';
import 'package:mahadev_s_application19/core/app_export.dart';
import 'package:mahadev_s_application19/core/utils/validation_functions.dart';
import 'package:mahadev_s_application19/widgets/custom_button.dart';
import 'package:mahadev_s_application19/widgets/custom_icon_button.dart';
import 'package:mahadev_s_application19/widgets/custom_text_form_field.dart';

// ignore_for_file: must_be_immutable
class RegisterScreen extends GetWidget<RegisterController> {
  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.whiteA700,
            body: Container(
                width: size.width,
                child: SingleChildScrollView(
                    child: Form(
                        key: _formKey,
                        autovalidateMode: AutovalidateMode.onUserInteraction,
                        child: Container(
                            child: Column(
                                mainAxisSize: MainAxisSize.min,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                              Align(
                                  alignment: Alignment.center,
                                  child: Container(
                                      width: size.width,
                                      margin: getMargin(
                                          left: 20, top: 12, right: 14),
                                      child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                          mainAxisSize: MainAxisSize.max,
                                          children: [
                                            Padding(
                                                padding: getPadding(
                                                    left: 12,
                                                    top: 5,
                                                    bottom: 4),
                                                child: ClipRRect(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            getHorizontalSize(
                                                                5.54)),
                                                    child: CommonImageView(
                                                        svgPath: ImageConstant
                                                            .imgTimelight,
                                                        height: getVerticalSize(
                                                            11.00),
                                                        width:
                                                            getHorizontalSize(
                                                                28.00)))),
                                            Padding(
                                                padding: getPadding(
                                                    top: 5, bottom: 4),
                                                child: Row(
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .center,
                                                    mainAxisSize:
                                                        MainAxisSize.min,
                                                    children: [
                                                      Padding(
                                                          padding: getPadding(
                                                              top: 1,
                                                              bottom: 1),
                                                          child: CommonImageView(
                                                              svgPath: ImageConstant
                                                                  .imgMobilesignal,
                                                              height:
                                                                  getVerticalSize(
                                                                      10.00),
                                                              width:
                                                                  getHorizontalSize(
                                                                      17.00))),
                                                      Padding(
                                                          padding: getPadding(
                                                              left: 5,
                                                              bottom: 1),
                                                          child: CommonImageView(
                                                              svgPath:
                                                                  ImageConstant
                                                                      .imgWifi,
                                                              height:
                                                                  getVerticalSize(
                                                                      10.00),
                                                              width:
                                                                  getHorizontalSize(
                                                                      15.00))),
                                                      Padding(
                                                          padding: getPadding(
                                                              left: 5),
                                                          child: Container(
                                                              height:
                                                                  getVerticalSize(
                                                                      11.00),
                                                              width:
                                                                  getHorizontalSize(
                                                                      22.00),
                                                              child: ClipRRect(
                                                                  borderRadius:
                                                                      BorderRadius.circular(
                                                                          getHorizontalSize(
                                                                              3.00)),
                                                                  child: LinearProgressIndicator(
                                                                      value:
                                                                          0.82,
                                                                      valueColor:
                                                                          AlwaysStoppedAnimation<Color>(
                                                                              ColorConstant.black900))))),
                                                      Padding(
                                                          padding: getPadding(
                                                              left: 1,
                                                              top: 3,
                                                              bottom: 3),
                                                          child: CommonImageView(
                                                              svgPath: ImageConstant
                                                                  .imgCombinedshape,
                                                              height:
                                                                  getVerticalSize(
                                                                      4.00),
                                                              width:
                                                                  getHorizontalSize(
                                                                      1.00)))
                                                    ]))
                                          ]))),
                              CustomIconButton(
                                  height: 41,
                                  width: 41,
                                  margin:
                                      getMargin(left: 36, top: 38, right: 36),
                                  onTap: () {
                                    onTapBtntf();
                                  },
                                  child: CommonImageView(
                                      svgPath: ImageConstant.imgArrowleft)),
                              Container(
                                  width: getHorizontalSize(270.00),
                                  margin:
                                      getMargin(left: 22, top: 40, right: 22),
                                  child: Text("msg_welcome_back_g".tr,
                                      maxLines: null,
                                      textAlign: TextAlign.left,
                                      style: AppStyle.txtUrbanistRomanBold30
                                          .copyWith())),
                              CustomTextFormField(
                                  width: 330,
                                  focusNode: FocusNode(),
                                  controller:
                                      controller.registerButtoController2,
                                  hintText: "lbl_username".tr,
                                  margin:
                                      getMargin(left: 20, top: 57, right: 20),
                                  alignment: Alignment.center,
                                  validator: (value) {
                                    if (!isText(value)) {
                                      return "Please enter valid text";
                                    }
                                    return null;
                                  }),
                              CustomTextFormField(
                                  width: 330,
                                  focusNode: FocusNode(),
                                  controller:
                                      controller.registerButtoOneController1,
                                  hintText: "lbl_email".tr,
                                  margin:
                                      getMargin(left: 20, top: 15, right: 20),
                                  alignment: Alignment.center,
                                  validator: (value) {
                                    if (value == null ||
                                        (!isValidEmail(value,
                                            isRequired: true))) {
                                      return "Please enter valid email";
                                    }
                                    return null;
                                  }),
                              CustomTextFormField(
                                  width: 330,
                                  focusNode: FocusNode(),
                                  controller:
                                      controller.registerButtoTwoController,
                                  hintText: "lbl_password".tr,
                                  margin:
                                      getMargin(left: 20, top: 15, right: 20),
                                  alignment: Alignment.center,
                                  validator: (value) {
                                    if (value == null ||
                                        (!isValidPassword(value,
                                            isRequired: true))) {
                                      return "Please enter valid password";
                                    }
                                    return null;
                                  },
                                  isObscureText: true),
                              CustomTextFormField(
                                  width: 330,
                                  focusNode: FocusNode(),
                                  controller:
                                      controller.registerButtoThreeController,
                                  hintText: "msg_confirm_passwor".tr,
                                  margin:
                                      getMargin(left: 20, top: 15, right: 20),
                                  textInputAction: TextInputAction.done,
                                  alignment: Alignment.center,
                                  validator: (value) {
                                    if (value == null ||
                                        (!isValidPassword(value,
                                            isRequired: true))) {
                                      return "Please enter valid password";
                                    }
                                    return null;
                                  },
                                  isObscureText: true),
                              CustomButton(
                                  width: 330,
                                  text: "msg_agree_and_regis".tr,
                                  margin:
                                      getMargin(left: 20, top: 20, right: 20),
                                  onTap: onTapBtnAgreeandregis,
                                  alignment: Alignment.center),
                              Align(
                                  alignment: Alignment.center,
                                  child: Container(
                                      margin: getMargin(
                                          left: 20,
                                          top: 30,
                                          right: 20,
                                          bottom: 62),
                                      child: Column(
                                          mainAxisSize: MainAxisSize.min,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          children: [
                                            Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                mainAxisSize: MainAxisSize.max,
                                                children: [
                                                  Container(
                                                      height:
                                                          getVerticalSize(1.00),
                                                      width: getHorizontalSize(
                                                          111.00),
                                                      margin: getMargin(
                                                          top: 9, bottom: 7),
                                                      decoration: BoxDecoration(
                                                          color: ColorConstant
                                                              .indigo50)),
                                                  Text("lbl_or_login_with".tr,
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                      textAlign: TextAlign.left,
                                                      style: AppStyle
                                                          .txtUrbanistRomanSemiBold14
                                                          .copyWith()),
                                                  Container(
                                                      height:
                                                          getVerticalSize(1.00),
                                                      width: getHorizontalSize(
                                                          110.00),
                                                      margin: getMargin(
                                                          top: 9, bottom: 7),
                                                      decoration: BoxDecoration(
                                                          color: ColorConstant
                                                              .indigo50))
                                                ]),
                                            Padding(
                                                padding: getPadding(top: 22),
                                                child: Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .spaceBetween,
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .center,
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    children: [
                                                      Container(
                                                          height:
                                                              getVerticalSize(
                                                                  56.00),
                                                          width:
                                                              getHorizontalSize(
                                                                  105.00),
                                                          child: Card(
                                                              clipBehavior: Clip
                                                                  .antiAlias,
                                                              elevation: 0,
                                                              margin:
                                                                  EdgeInsets
                                                                      .all(0),
                                                              shape: RoundedRectangleBorder(
                                                                  side: BorderSide(
                                                                      color: ColorConstant
                                                                          .gray300,
                                                                      width: getHorizontalSize(
                                                                          1.00)),
                                                                  borderRadius:
                                                                      BorderRadius.circular(
                                                                          getHorizontalSize(
                                                                              8.00))),
                                                              child: Stack(
                                                                  children: [
                                                                    Align(
                                                                        alignment:
                                                                            Alignment
                                                                                .center,
                                                                        child: Padding(
                                                                            padding: getPadding(
                                                                                left: 40,
                                                                                top: 16,
                                                                                right: 40,
                                                                                bottom: 16),
                                                                            child: CommonImageView(svgPath: ImageConstant.imgFacebook, height: getVerticalSize(24.00), width: getHorizontalSize(12.00))))
                                                                  ]))),
                                                      Container(
                                                          height:
                                                              getVerticalSize(
                                                                  56.00),
                                                          width:
                                                              getHorizontalSize(
                                                                  105.00),
                                                          child: Card(
                                                              clipBehavior: Clip
                                                                  .antiAlias,
                                                              elevation: 0,
                                                              margin:
                                                                  EdgeInsets
                                                                      .all(0),
                                                              shape: RoundedRectangleBorder(
                                                                  side: BorderSide(
                                                                      color: ColorConstant
                                                                          .gray300,
                                                                      width: getHorizontalSize(
                                                                          1.00)),
                                                                  borderRadius:
                                                                      BorderRadius.circular(
                                                                          getHorizontalSize(
                                                                              8.00))),
                                                              child: Stack(
                                                                  children: [
                                                                    Align(
                                                                        alignment:
                                                                            Alignment
                                                                                .center,
                                                                        child: Padding(
                                                                            padding: getPadding(
                                                                                left: 40,
                                                                                top: 16,
                                                                                right: 40,
                                                                                bottom: 16),
                                                                            child: CommonImageView(svgPath: ImageConstant.imgGoogle, height: getSize(23.00), width: getSize(23.00))))
                                                                  ]))),
                                                      Container(
                                                          height:
                                                              getVerticalSize(
                                                                  56.00),
                                                          width:
                                                              getHorizontalSize(
                                                                  105.00),
                                                          child: Card(
                                                              clipBehavior: Clip
                                                                  .antiAlias,
                                                              elevation: 0,
                                                              margin:
                                                                  EdgeInsets
                                                                      .all(0),
                                                              shape: RoundedRectangleBorder(
                                                                  side: BorderSide(
                                                                      color: ColorConstant
                                                                          .gray300,
                                                                      width: getHorizontalSize(
                                                                          1.00)),
                                                                  borderRadius:
                                                                      BorderRadius.circular(
                                                                          getHorizontalSize(
                                                                              8.00))),
                                                              child: Stack(
                                                                  children: [
                                                                    Align(
                                                                        alignment:
                                                                            Alignment
                                                                                .center,
                                                                        child: Padding(
                                                                            padding: getPadding(
                                                                                left: 40,
                                                                                top: 15,
                                                                                right: 40,
                                                                                bottom: 14),
                                                                            child: CommonImageView(svgPath: ImageConstant.imgFire, height: getVerticalSize(26.00), width: getHorizontalSize(21.00))))
                                                                  ])))
                                                    ]))
                                          ])))
                            ])))))));
  }

  onTapBtntf() {
    Get.back();
  }

  onTapBtnAgreeandregis() {
    Get.toNamed(AppRoutes.loginScreen);
  }
}
