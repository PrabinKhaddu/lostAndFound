import 'package:flutter/material.dart';

import '../../core/components/app_back_button.dart';
import '../../core/components/product_tile_square.dart';
import '../../core/constants/constants.dart';

class NewItemsPage extends StatelessWidget {
  const NewItemsPage({super.key});

  @override
  Widget build(BuildContext context) {
    final rewardedItems =
        Dummy.items.where((e) => e.rewardAmount != null).toList();
    return Scaffold(
      appBar: AppBar(
        title: const Text('Reward Items'),
        leading: const AppBackButton(),
      ),
      body: SafeArea(
        child: 
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: AppDefaults.padding),
          child: GridView.builder(
            padding: const EdgeInsets.only(top: AppDefaults.padding),
            gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
              maxCrossAxisExtent: 200,
              childAspectRatio: 0.64,
              mainAxisSpacing: 16,
            ),
            itemCount: rewardedItems.length,
            reverse: true,
            itemBuilder: (context, index) {
              final items = rewardedItems[index];
              return items.rewardAmount != null
                  ? ProductTileSquare(
                      data: rewardedItems[index],
                    )
                  : const SizedBox();
            },
          ),
        ),
      ),
    );
  }
}
