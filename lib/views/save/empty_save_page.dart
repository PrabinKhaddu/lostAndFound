import 'package:flutter/material.dart';
import 'package:grocery/core/components/product_tile_square.dart';
import 'package:grocery/core/constants/dummy_data.dart';
import 'package:grocery/core/models/dummy_product_model.dart';

import '../../core/components/network_image.dart';
import '../../core/constants/app_defaults.dart';

class EmptySavePage extends StatelessWidget {
  const EmptySavePage({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Spacer(flex: 2),
          SizedBox(
            width: MediaQuery.of(context).size.width * 0.7,
            child: const Padding(
              padding: EdgeInsets.all(AppDefaults.padding * 2),
              child: AspectRatio(
                aspectRatio: 1 / 1,
                child:
                    NetworkImageWithLoader('https://i.imgur.com/mbjap7k.png'),
              ),
            ),
          ),
          Text(
            'Oppss!',
            style: Theme.of(context)
                .textTheme
                .titleLarge
                ?.copyWith(fontWeight: FontWeight.bold, color: Colors.black),
          ),
          const SizedBox(height: 8),
          const Text('Sorry, you have no lost items'),
          const Spacer(),
        ],
      ),
    );
  }
}

class MyLostItemPage extends StatelessWidget {
  const MyLostItemPage({super.key});

  @override
  Widget build(BuildContext context) {
    List<ItemModel> rewardedItems = [];
    try {
      rewardedItems = Dummy.items.where((e) => e.id == 'me').toList();
    } catch (_) {}
    return Column(
      children: [
        const SizedBox(height: 32),
        Text(
          'Your Lost Items',
          style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                color: Colors.black,
                fontWeight: FontWeight.bold,
              ),
        ),
        const SizedBox(height: 16),
        rewardedItems.isNotEmpty
            ? Expanded(
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: AppDefaults.padding),
                  child: GridView.builder(
                    shrinkWrap: true,
                    padding: const EdgeInsets.only(top: AppDefaults.padding),
                    gridDelegate:
                        const SliverGridDelegateWithMaxCrossAxisExtent(
                      maxCrossAxisExtent: 200,
                      childAspectRatio: 0.71,
                      mainAxisSpacing: 16,
                    ),
                    itemCount: rewardedItems.length,
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
              )
            : const Expanded(
                child: Center(
                  child: EmptySavePage(),
                ),
              ),
      ],
    );
  }
}
