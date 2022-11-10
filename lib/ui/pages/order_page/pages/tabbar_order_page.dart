import 'package:agent/core/extensions/app_extensions.dart';
import 'package:agent/core/utils/colors.gen.dart';
import 'package:agent/ui/pages/order_page/order_page_widget/bottom_card_widget.dart';
import 'package:agent/ui/widgets/app_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:uikit/uikit.dart';

class TabbarOrderPage extends StatelessWidget {
  const TabbarOrderPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Container(
      child: Column(
        children: [
          Container(
            margin: EdgeInsets.only(bottom: 18.w),
            decoration: BoxDecoration(
              border: Border.all(
                  color: ColorName.gray),
            ),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment:
                  MainAxisAlignment
                      .spaceBetween,
                  children: [
                    AppWidgets.textLocale(
                        localeKey: "Общая объем",
                        fontWeight:
                        FontWeight.w400,
                        fontSize: 12.sp,
                        color: ColorName.gray2,
                        isRichText: true),
                    AppWidgets.textLocale(
                        localeKey: "1365 о",
                        fontWeight:
                        FontWeight.w400,
                        fontSize: 12.sp,
                        color: ColorName.black,
                        isRichText: true),
                  ],
                ).paddingSymmetric(
                    vertical: 12.w),
                Row(
                  mainAxisAlignment:
                  MainAxisAlignment
                      .spaceBetween,
                  children: [
                    AppWidgets.textLocale(
                        localeKey: "Общее кол-во",
                        fontWeight:
                        FontWeight.w400,
                        fontSize: 12.sp,
                        color: ColorName.gray2,
                        isRichText: true),
                    AppWidgets.textLocale(
                        localeKey: "1365 sht",
                        fontWeight:
                        FontWeight.w400,
                        fontSize: 12.sp,
                        color: ColorName.black,
                        isRichText: true),
                  ],
                ).paddingOnly(bottom: 12.w),
                Row(
                  mainAxisAlignment:
                  MainAxisAlignment
                      .spaceBetween,
                  children: [
                    AppWidgets.textLocale(
                        localeKey: "Общее summa",
                        fontWeight:
                        FontWeight.w400,
                        fontSize: 12.sp,
                        color: ColorName.gray2,
                        isRichText: true),
                    AppWidgets.textLocale(
                        localeKey:
                        "150 000 000 UZS",
                        fontWeight:
                        FontWeight.w600,
                        fontSize: 12.sp,
                        color: ColorName.button,
                        isRichText: true),
                  ],
                ).paddingOnly(bottom: 12.w),
              ],
            ).paddingSymmetric(horizontal: 20.w),
          ),
          Cards.cards_2(
            name: "Заказ в",
            time: "17:18",
            icon: PopupMenuTools(textName: const [
              "Редактрировать",
              "Комментария к заказу",
              "Дата отгрузки",
              "Срок Консигнация",
              "Закрепить фото",
              'Удалить',
            ], icons: [
              Icon(Icons.access_time),
              Icon(Icons.access_time),
              Icon(Icons.access_time),
              Icon(Icons.access_time),
              Icon(Icons.access_time),
              Icon(Icons.access_time),
            ]),
            nalichniy: "Наличный",
            bezbonus: "Без бонуса",
            dostavlen: "Доставлен",
            obem: "Обьем",
            obemNumber: "15",
            soni: "Кол-во",
            soniNumber: "15",
            summa: "Сумма",
            summaNumber: "150 000 000 ",
          ),
          SizedBox(height: 11,),
          Cards.cards_2(
            name: "Заказ в",
            time: "17:18",
            icon: Icon(
              Icons.more_vert,
              size: 17,
            ),
            nalichniy: "Наличный",
            bezbonus: "Без бонуса",
            dostavlen: "",
            obem: "Обьем",
            obemNumber: "15",
            soni: "Кол-во",
            soniNumber: "15",
            summa: "Сумма",
            summaNumber: "150 000 000 ",
          ),
          SizedBox(height: 11,),
          Cards.cards_2(
            name: "Заказ в",
            time: "17:18",
            icon: Icon(
              Icons.more_vert,
              size: 17,
            ),
            nalichniy: "Наличный",
            bezbonus: "Без бонуса",
            dostavlen: "Доставлен",
            obem: "Обьем",
            obemNumber: "15",
            soni: "Кол-во",
            soniNumber: "15",
            summa: "Сумма",
            summaNumber: "150 000 000 ",
          ),
          SizedBox(height: 11,),
          bottomCardWidget(
            fayl: "Прикреплён файл",
            komentariya: "Добавлена комментария",
            otgruzki: "Дата отгрузки",
            otgruzkiNumber: "21.22.2222",
            kostignatsiNumber: "21.20.2222",
            kostignatsi: "Дата костигнации",
            name: "Заказ в",
            time: "17:18",
            icon: Icon(
              Icons.more_vert,
              size: 17,
            ),
            nalichniy: "Наличный",
            bezbonus: "Без бонуса",
            dostavlen: "Доставлен",
            obem: "Обьем",
            obemNumber: "15",
            soni: "Кол-во",
            soniNumber: "15",
            summa: "Сумма",
            summaNumber: "150 000 000 ",
          ),
        ],
      ),
    );
  }
}
