import 'package:agent/core/utils/assets.gen.dart';
import 'package:agent/core/utils/colors.gen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:uikit/uikit.dart';

class FloatingDialog extends StatelessWidget {
  const FloatingDialog({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 42.w,
      width: 42.w,
      child: FittedBox(
        child: FloatingActionButton(
          onPressed: () {
            showDialog(
              context: context,
              barrierDismissible: true,
              builder: ((context) {
                return Container(
                  margin:
                  EdgeInsets.only(left: 24, right: 16, top: 200),
                  width: double.infinity,
                  height: double.infinity,
                  child: Center(
                      child: ExchangeTools(
                        icons: [
                          InkWell(
                            child: SizedBox(
                              child: Assets.images.icons.zadachi.svg(
                                fit: BoxFit.cover,
                              ),
                              height: 14,
                              width: 14,
                            ),
                            onTap: () {},
                          ),
                          InkWell(
                            child: SizedBox(
                              child: Assets.images.icons.history.svg(),
                              height: 16,
                              width: 16,
                            ),
                            onTap: () {},
                          ),
                          InkWell(
                            child: SizedBox(
                              child: Assets.images.icons.fotoOtchot.svg(
                                fit: BoxFit.cover,
                              ),
                              height: 16,
                              width: 10,
                            ),
                            onTap: () {},
                          ),
                          InkWell(
                            child: SizedBox(
                              child: Assets.images.icons.otkaz.svg(
                                fit: BoxFit.cover,
                              ),
                              height: 17,
                              width: 17,
                            ),
                            onTap: () {},
                          ),
                          InkWell(
                            child: SizedBox(
                              child: Assets.images.icons.refresh.svg(
                                fit: BoxFit.cover,
                              ),
                              height: 13,
                              width: 13,
                            ),
                            onTap: () {},
                          ),
                          InkWell(
                            child: SizedBox(
                              child: Assets.images.icons.exchange.svg(
                                fit: BoxFit.cover,
                              ),
                              height: 18,
                              width: 18,
                            ),
                            onTap: () {},
                          ),
                          InkWell(
                            child: SizedBox(
                              child: Assets.images.icons.obmen.svg(
                                fit: BoxFit.cover,
                              ),
                              height: 16,
                              width: 16,
                            ),
                            onTap: () {},
                          ),
                          InkWell(
                            child: SizedBox(
                              child: Assets.images.icons.obmen.svg(
                                fit: BoxFit.cover,
                              ),
                              height: 16,
                              width: 16,
                            ),
                            onTap: () {},
                          ),
                        ],
                        textName: [
                          "Задачи",
                          "История",
                          "Фото отчёт",
                          "Отказ",
                          "Возврат \nс полки",
                          "Возврат \nтары",
                          "Обмен",
                          "Остатки",
                        ],
                      )),
                );
              }),
            );
          },
          child: Icon(
            Icons.more_vert,
            color: ColorName.white,
            size: 30,
          ),
          backgroundColor: ColorName.lightGreen,
        ),
      ),
    );
  }
}
