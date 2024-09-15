import 'package:flutter/material.dart';

import '../../core/components/app_back_button.dart';
import '../../core/components/bundle_tile_square.dart';
import '../../core/constants/constants.dart';

class PopularPackPage extends StatelessWidget {
  const PopularPackPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Popular Packs'),
        leading: const AppBackButton(),
      ),
      body: SafeArea(
        child: Stack(
          children: [
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: AppDefaults.padding),
              child: GridView.builder(
                padding: const EdgeInsets.only(top: AppDefaults.padding),
                gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                  maxCrossAxisExtent: 200,
                  childAspectRatio: 0.73,
                  crossAxisSpacing: 16,
                  mainAxisSpacing: 16,
                ),
                itemCount: Dummy.items.length,
                reverse: true,
                itemBuilder: (context, index) {
                  return BundleTileSquare(
                    data: Dummy.items[index],
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
