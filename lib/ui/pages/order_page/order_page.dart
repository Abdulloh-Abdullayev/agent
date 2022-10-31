import 'package:agent/core/extensions/app_extensions.dart';
import 'package:agent/core/utils/assets.gen.dart';
import 'package:agent/core/utils/colors.gen.dart';
import 'package:agent/ui/widgets/app_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class OrderPageModule extends Module {
  @override
  List<ModularRoute> get routes => [
        ChildRoute(
          OrderPage.routeName,
          child: (context, args) =>  OrderPage(),
        ),
      ];
}

class OrderPage extends StatefulWidget{
  const OrderPage({Key? key}) : super(key: key);
  static const String routeName = "/OrderPage";

   @override
   State<OrderPage> createState() => _OrderPageState();
}

class _OrderPageState extends State<OrderPage> with TickerProviderStateMixin{

  late TabController tabController;

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        body: SingleChildScrollView(
          child: Stack(
            children: [
              Column(
                children: [
                  Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                          bottomRight: Radius.circular(12),
                          bottomLeft: Radius.circular(12),
                        ),
                        color: ColorName.primaryColor),
                    height: 133.h,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
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
                        Row(
                          children: [
                            Container(
                              height: 28.w,
                              width: 28.w,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(4),
                                color: Color.fromRGBO(255, 255, 255, 0.1),
                              ),
                              child: Center(
                                child: Assets.images.icons.telephoneButton.svg(
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ).paddingOnly(right: 12),
                            Container(
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
                            )
                          ],
                        )
                      ],
                    ).paddingSymmetric(horizontal: 20.w),
                  ),
                  Container(
                    margin: EdgeInsets.only(bottom: 18.w),
                    decoration: BoxDecoration(
                      color: ColorName.white,
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(12),
                        bottomRight: Radius.circular(12),
                      ),
                    ),
                    child: Column(
                      children: [
                        Align(
                          alignment: Alignment.centerLeft,
                          child: AppWidgets.textLocale(
                              localeKey: "Osiyo Market",
                              fontSize: 24.sp,
                              color: Colors.black,
                              fontWeight: FontWeight.w600,
                              isRichText: true),
                        ).paddingOnly(top: 50.w),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            AppWidgets.textLocale(
                                localeKey: "Supermarket",
                                fontSize: 12.sp,
                                color: ColorName.gray2,
                                fontWeight: FontWeight.w400,
                                isRichText: true
                            ),
                            AppWidgets.textLocale(
                                localeKey: "Визиты:  Пн, Ср, Сб",
                                fontSize: 12.sp,
                                color: ColorName.gray2,
                                fontWeight: FontWeight.w400,
                                isRichText: true
                            ),
                          ],
                        ).paddingOnly(top: 12.w),
                        Row(
                          children: [
                            AppWidgets.textLocale(
                                localeKey: "Teritoriya  : ",
                                fontSize: 12.sp,
                                color: ColorName.gray2,
                                fontWeight: FontWeight.w400,
                                isRichText: true
                            ),
                            AppWidgets.textLocale(
                                localeKey: "Yunusobod rayoni",
                                fontSize: 12.sp,
                                color: ColorName.black,
                                fontWeight: FontWeight.w600,
                                isRichText: true
                            ),
                          ],
                        ).paddingOnly(top: 12.w),
                        Row(
                          children: [
                            AppWidgets.textLocale(
                                localeKey: "Задолженности : ",
                                fontSize: 12.sp,
                                color: ColorName.gray2,
                                fontWeight: FontWeight.w400,
                                isRichText: true
                            ),
                            AppWidgets.textLocale(
                                localeKey: "0 UZS",
                                fontSize: 12.sp,
                                color: ColorName.green,
                                fontWeight: FontWeight.w700,
                                isRichText: true
                            ),
                          ],
                        ).paddingOnly(top: 12.w,bottom: 18.w),
                      ],
                    ).paddingSymmetric(horizontal: 20),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      color: ColorName.white,
                      borderRadius: BorderRadius.only(
                        topRight: Radius.circular(8),
                        topLeft: Radius.circular(8),
                      ),
                    ),
                    child: Column(
                      children: [
                        TabBar(
                          tabs: [
                            Tab(
                              child: AppWidgets.textLocale(
                                localeKey: "Заказы",
                                fontWeight: FontWeight.w600,
                                fontSize: 14.sp,
                                color: ColorName.button,
                                isRichText: true
                              ),
                            ),
                            Tab(
                              child: AppWidgets.textLocale(
                                  localeKey: "Фото отчёт",
                                  fontWeight: FontWeight.w600,
                                  fontSize: 14.sp,
                                  color: ColorName.button,
                                  isRichText: true
                              ),
                            )
                          ],
                          padding: EdgeInsets.only(right: 166),
                          indicatorWeight: 3,
                          indicatorPadding: EdgeInsets.symmetric(horizontal: 7),
                          indicatorColor: ColorName.button,
                        ).paddingOnly(left: 20.w),

                        Container(
                          height: 600,
                          child: TabBarView(
                            children: [
                              Container(
                                child: Column(
                                  children: [
                                    Container(
                                      margin: EdgeInsets.only(bottom: 18.w),
                                      decoration: BoxDecoration(
                                        border: Border.all(color: ColorName.gray),
                                      ),
                                      child: Column(
                                        children: [
                                          Row(
                                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                            children: [
                                              AppWidgets.textLocale(
                                                  localeKey: "Общая объем",
                                                  fontWeight: FontWeight.w400,
                                                  fontSize: 12.sp,
                                                  color: ColorName.gray2,
                                                  isRichText: true
                                              ),
                                              AppWidgets.textLocale(
                                                  localeKey: "1365 о",
                                                  fontWeight: FontWeight.w400,
                                                  fontSize: 12.sp,
                                                  color: ColorName.black,
                                                  isRichText: true
                                              ),
                                            ],
                                          ).paddingSymmetric(vertical: 12.w),
                                          Row(
                                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                            children: [
                                              AppWidgets.textLocale(
                                                  localeKey: "Общее кол-во",
                                                  fontWeight: FontWeight.w400,
                                                  fontSize: 12.sp,
                                                  color: ColorName.gray2,
                                                  isRichText: true
                                              ),
                                              AppWidgets.textLocale(
                                                  localeKey: "1365 sht",
                                                  fontWeight: FontWeight.w400,
                                                  fontSize: 12.sp,
                                                  color: ColorName.black,
                                                  isRichText: true
                                              ),
                                            ],
                                          ).paddingOnly(bottom: 12.w),
                                          Row(
                                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                            children: [
                                              AppWidgets.textLocale(
                                                  localeKey: "Общее summa",
                                                  fontWeight: FontWeight.w400,
                                                  fontSize: 12.sp,
                                                  color: ColorName.gray2,
                                                  isRichText: true
                                              ),
                                              AppWidgets.textLocale(
                                                  localeKey: "150 000 000 UZS",
                                                  fontWeight: FontWeight.w600,
                                                  fontSize: 12.sp,
                                                  color: ColorName.button,
                                                  isRichText: true
                                              ),
                                            ],
                                          ).paddingOnly(bottom: 12.w),
                                        ],
                                      ).paddingSymmetric(horizontal: 20.w),
                                    ),
                                  ],
                                ),
                              ),
                              Container(
                                height: 400,
                                color: Colors.yellow,
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
              Container(
                height: 90,
                width: 90,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    color: ColorName.primaryDark,
                ),
                child: Container(
                  height: 37,
                  width: 43,
                  child: Image.asset("assets/images/market.png"),
                ),
              ).paddingOnly(top: 70.w, left: 140.w)
            ],
          ),
        ),
      ),
    );
  }
}
