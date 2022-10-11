import 'package:flutter/material.dart';
import 'package:orchid/features/feature/common/colors.dart';

import '../../../../common/consts.dart';
import 'catalog_order_button.dart';

class CatalogItemTile extends StatelessWidget {
  const CatalogItemTile({super.key, required this.title});

  final String title;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SizedBox(
      width: size.width * (380 / 1920),
      child: DecoratedBox(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: const BorderRadius.all(Radius.circular(10)),
          border: Border.all(
            color: const Color(0xffF2F6FA),
          ),
        ),
        child: Wrap(
          children: [
            Image.asset('assets/img/filler_item_tile.png'),
            Padding(
              padding: EdgeInsets.only(
                left: size.width * (30.0 / 1920),
                right: size.width * (30.0 / 1080),
                top: size.height * (50.0 / 1080),
                bottom: size.height * (50.0 / 1080),
              ),
              child: Wrap(
                direction: Axis.horizontal,
                runSpacing: 12,
                children: [
                  const Text(
                    'Пион',
                    style: TextStyle(
                      overflow: TextOverflow.ellipsis,
                      color: AppColors.bannerTitleColor,
                      fontFamily: Consts.primaryFont,
                      fontWeight: FontWeight.w700,
                      fontSize: 24,
                    ),
                  ),
                  Wrap(
                    children: const [
                      Text(
                        'Мин. закупка - 3 шт',
                        style: TextStyle(
                          color: AppColors.bannerTitleColor,
                          fontFamily: Consts.primaryFont,
                          fontWeight: FontWeight.w400,
                          fontSize: 16,
                        ),
                      ),
                      Text(
                        'Длина цветка - 30 см',
                        style: TextStyle(
                          color: AppColors.bannerTitleColor,
                          fontFamily: Consts.primaryFont,
                          fontWeight: FontWeight.w400,
                          fontSize: 16,
                        ),
                      ),
                    ],
                  ),
                  const Text(
                    '150 ₽/шт.',
                    style: TextStyle(
                      overflow: TextOverflow.ellipsis,
                      color: AppColors.bannerTitleColor,
                      fontFamily: Consts.primaryFont,
                      fontWeight: FontWeight.w500,
                      fontSize: 24,
                    ),
                  ),
                  CatalogButton(
                    onPressed: () {},
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
