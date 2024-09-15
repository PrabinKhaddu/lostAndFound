import 'package:flutter/material.dart';
import 'package:grocery/core/utils/date_utils.dart';

import '../constants/constants.dart';
import '../models/dummy_product_model.dart';
import '../routes/app_routes.dart';
import 'network_image.dart';

class ProductTileSquare extends StatelessWidget {
  const ProductTileSquare({
    super.key,
    required this.data,
  });

  final ItemModel data;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: AppDefaults.padding / 2),
      child: Material(
        borderRadius: AppDefaults.borderRadius,
        color: AppColors.scaffoldBackground,
        child: InkWell(
          borderRadius: AppDefaults.borderRadius,
          onTap: () => Navigator.pushNamed(
            context,
            AppRoutes.bundleDetailsPage,
            arguments: {
              'item': data,
            },
          ),
          child: Container(
            width: 176,
            height: 290,
            padding: const EdgeInsets.all(AppDefaults.padding),
            decoration: BoxDecoration(
              border: Border.all(width: 0.1, color: AppColors.placeholder),
              borderRadius: AppDefaults.borderRadius,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.all(AppDefaults.padding / 2),
                  child: AspectRatio(
                    aspectRatio: 1 / 1,
                    child: NetworkImageWithLoader(
                      data.cover,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                const SizedBox(height: 8),
                Text(
                  data.name,
                  style: Theme.of(context)
                      .textTheme
                      .titleMedium
                      ?.copyWith(color: Colors.black),
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                ),
                const SizedBox(height: 4),
                Text(
                  '\$${data.rewardAmount?.toString() ?? 'N/A'} Reward',
                ),
                const SizedBox(height: 4),
                Text(
                  'Item ${data.type.name.toString()}',
                ),
                const SizedBox(height: 4),
                Row(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text(
                      DateTime.parse(data.dateFound).timeAgo(),
                      style: Theme.of(context)
                          .textTheme
                          .titleMedium
                          ?.copyWith(color: Colors.black),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
