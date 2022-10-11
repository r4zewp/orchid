import 'package:flutter/material.dart';
import 'package:orchid/features/feature/common/colors.dart';
import 'package:orchid/features/feature/common/consts.dart';

import 'banner/header_banner_button.dart';
import 'catalog/catalog_item_tile.dart';

class LandingCatalog extends StatefulWidget {
  const LandingCatalog({super.key});

  @override
  State<LandingCatalog> createState() => _LandingCatalogState();
}

class _LandingCatalogState extends State<LandingCatalog> {
  SliverGridDelegateWithFixedCrossAxisCount gridDlgt =
      const SliverGridDelegateWithFixedCrossAxisCount(
    crossAxisCount: 3,
    crossAxisSpacing: 20,
    mainAxisSpacing: 20,
    childAspectRatio: 380 / 608,
  );

  final items = ['a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a'];

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.only(bottom: 60.0),
      child: Wrap(
        crossAxisAlignment: WrapCrossAlignment.center,
        alignment: WrapAlignment.center,
        spacing: 40,
        direction: Axis.vertical,
        children: [
          const Text(
            Consts.catalogTitle,
            style: TextStyle(
              color: AppColors.bannerTitleColor,
              fontFamily: Consts.primaryFont,
              fontWeight: FontWeight.w700,
              fontSize: 36,
            ),
          ),
          SizedBox(
            width: size.width * (1230 / 1920),
            child: Wrap(
              alignment: WrapAlignment.center,
              children: [
                for (var item in items)
                  Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 10.0,
                      vertical: 20,
                    ),
                    child: CatalogItemTile(title: item),
                  ),
              ],
            ),
          ),
          BannerButton(
            backgroundColor: AppColors.accentColor,
            title: 'Смотреть каталог',
            onPressed: () {},
            foregroundColor: Colors.white,
          ),
        ],
      ),
    );
  }
}
