import 'package:flutter/material.dart';
import 'package:grocery/core/models/dummy_product_model.dart';

import '../../../core/components/bundle_tile_square.dart';
import '../../../core/components/title_and_action_button.dart';
import '../../../core/constants/constants.dart';
import '../../../core/routes/app_routes.dart';

class PopularPacks extends StatelessWidget {
  const PopularPacks({
    super.key,
  });

  List<ItemModel> sortItemsByDate(List<ItemModel> items) {
    items.sort((a, b) {
      DateTime dateA = DateTime.parse(a.dateFound);
      DateTime dateB = DateTime.parse(b.dateFound);
      return dateB.compareTo(dateA); // Sort in descending order (recent first)
    });
    return items;
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TitleAndActionButton(
          title: 'Recent Items',
          onTap: () => Navigator.pushNamed(context, AppRoutes.popularItems),
        ),
        SingleChildScrollView(
          padding: const EdgeInsets.only(left: AppDefaults.padding),
          scrollDirection: Axis.horizontal,
          child: Row(
            children: sortItemsByDate(Dummy.items.toList()).map((e) {
              return Padding(
                padding: const EdgeInsets.only(right: AppDefaults.padding),
                child: BundleTileSquare(data: e),
              );
            }).toList(),
          ),
        ),
      ],
    );
  }
}
