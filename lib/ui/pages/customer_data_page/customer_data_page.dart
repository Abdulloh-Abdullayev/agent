import 'package:agent/core/extensions/app_extensions.dart';
import 'package:agent/core/utils/colors.gen.dart';
import 'package:agent/ui/pages/customer_data_page/customer_page_widgets/customer_row_widget.dart';
import 'package:agent/ui/pages/order_page/order_page_widget/order_appbar_icon_widget.dart';
import 'package:agent/ui/widgets/app_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomerDataPageModule extends Module {
  @override
  List<ModularRoute> get routes => [
        ChildRoute(
          CustomerDataPage.routeName,
          child: (context, args) => const CustomerDataPage(),
        ),
      ];
}

class CustomerDataPage extends StatefulWidget {
  const CustomerDataPage({Key? key}) : super(key: key);
  static const String routeName = "/CustomerDataPage";

  @override
  State<CustomerDataPage> createState() => _CustomerDataPageState();
}

class _CustomerDataPageState extends State<CustomerDataPage> {

  ScrollController singleChildScrolController = ScrollController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Stack(
          children: [
            SingleChildScrollView(
              controller: singleChildScrolController,
              child: Column(
                children: [
                  Container(
                    height: 306.w,
                    child: ClipRRect(
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(12),
                        bottomRight: Radius.circular(12),
                      ),
                      child: Image.network(
                        "https://img.freepik.com/premium-photo/astronaut-outer-open-space-planet-earth-stars-provide-background-erforming-space-planet-earth-sunrise-sunset-our-home-iss-elements-this-image-furnished-by-nasa_150455-16829.jpg?w=2000",
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(bottom: 12.w, top: 18.w),
                    width: double.infinity,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        color: ColorName.white),
                    child: Column(
                      children: [
                        Align(
                          alignment: Alignment.centerLeft,
                          child: AppWidgets.textLocale(
                              localeKey: "?????????? ????????????",
                              fontSize: 16.sp,
                              fontWeight: FontWeight.w500,
                              color: ColorName.gray3,
                              isRichText: true),
                        ).paddingOnly(bottom: 16.w),
                        rowWidget("??????. ???????????????? ??????????", "Osiyo market")
                            .paddingOnly(bottom: 16.w),
                        Divider(),
                        rowWidget("??????????????????", "??????????????")
                            .paddingOnly(bottom: 16.w, top: 16.w),
                        Divider(),
                        rowWidget("????????????????????", "Toshkent, Yunusobod")
                            .paddingOnly(bottom: 16.w, top: 16.w),
                        Divider(),
                        rowWidget("?????? ??????????????", "Lorem ipsum")
                            .paddingOnly(bottom: 16.w, top: 16.w),
                        Divider(),
                        rowWidget("?????????? ??????????", "Lorem ipsum")
                            .paddingOnly(bottom: 16.w, top: 16.w),
                      ],
                    ).paddingSymmetric(horizontal: 20.w, vertical: 18.w),
                  ),
                  Container(
                    margin: EdgeInsets.only(
                      bottom: 12.w,
                    ),
                    width: double.infinity,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        color: ColorName.white),
                    child: Column(
                      children: [
                        Align(
                          alignment: Alignment.centerLeft,
                          child: AppWidgets.textLocale(
                              localeKey: "???????????????????? ????????????",
                              fontSize: 16.sp,
                              fontWeight: FontWeight.w500,
                              color: ColorName.gray3,
                              isRichText: true),
                        ).paddingOnly(bottom: 16.w),
                        rowWidget("??????????", "Toshkent yunusobod")
                            .paddingOnly(bottom: 16.w),
                        Divider(),
                        rowWidget("????????????????", "64-avtobaza")
                            .paddingOnly(bottom: 16.w, top: 16.w),
                        Divider(),
                        rowWidget("???????????????????? ????????", "Faxxriyorbek")
                            .paddingOnly(bottom: 16.w, top: 16.w),
                        Divider(),
                        rowWidget("????????????????????", "Lorem ipsum")
                            .paddingOnly(bottom: 16.w, top: 16.w),
                        Divider(),
                        rowWidget("?????????? ????????????????", "+998 97 628 28 82")
                            .paddingOnly(bottom: 16.w, top: 16.w),
                        Divider(),
                        rowWidget("?????? ??????????????????", "????. ????. ????")
                            .paddingOnly(bottom: 16.w, top: 16.w),
                        Divider(),
                        rowWidget("????????????????????????????", "???????????????????? ???? ??????????",
                                ColorName.button)
                            .paddingOnly(bottom: 16.w, top: 16.w),
                      ],
                    ).paddingSymmetric(horizontal: 20.w, vertical: 18.w),
                  ),
                  Container(
                    margin: EdgeInsets.only(bottom: 35.w),
                    width: double.infinity,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        color: ColorName.white),
                    child: Column(
                      children: [
                        Align(
                          alignment: Alignment.centerLeft,
                          child: AppWidgets.textLocale(
                              localeKey: "?????????????????? ??????????????",
                              fontSize: 16.sp,
                              fontWeight: FontWeight.w500,
                              color: ColorName.gray3,
                              isRichText: true),
                        ).paddingOnly(bottom: 16.w),
                        rowWidget("??????", "465894132").paddingOnly(bottom: 16.w),
                        Divider(),
                        rowWidget("??/C", "465894132")
                            .paddingOnly(bottom: 16.w, top: 16.w),
                        Divider(),
                        rowWidget("????????", "Hamkorbank")
                            .paddingOnly(bottom: 16.w, top: 16.w),
                        Divider(),
                        rowWidget("??????", "Lorem ipsum")
                            .paddingOnly(bottom: 16.w, top: 16.w),
                        Divider(),
                        rowWidget("????????", "465894132")
                            .paddingOnly(bottom: 16.w, top: 16.w),
                      ],
                    ).paddingSymmetric(horizontal: 20.w, vertical: 18.w),
                  ),
                ],
              ),
            ),
            Container(
              decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(
                    bottomRight: Radius.circular(12),
                    bottomLeft: Radius.circular(12),
                  ),
                  color:  Colors.black38),
              height: 82.h,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  AppBarIcon.backButton(() {}),
                  AppBarIcon.editeButton(() {})
                ],
              ).paddingSymmetric(horizontal: 20.w),
            ),
          ],
        ),
      ),
    );
  }
}
