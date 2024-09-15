import 'package:flutter/material.dart';
import 'package:grocery/core/models/dummy_product_model.dart';
import 'package:grocery/core/utils/date_utils.dart';

import '../constants/constants.dart';
import '../routes/app_routes.dart';
import 'network_image.dart';

class BundleTileSquare extends StatelessWidget {
  const BundleTileSquare({
    super.key,
    required this.data,
  });

  final ItemModel data;

  @override
  Widget build(BuildContext context) {
    return Material(
      color: AppColors.scaffoldBackground,
      borderRadius: AppDefaults.borderRadius,
      child: InkWell(
        onTap: () {
          Navigator.pushNamed(context, AppRoutes.bundleDetailsPage,
              arguments: {'item': data});
        },
        borderRadius: AppDefaults.borderRadius,
        child: Container(
          width: 186,
          padding: const EdgeInsets.symmetric(horizontal: AppDefaults.padding),
          decoration: BoxDecoration(
            border: Border.all(width: 0.1, color: AppColors.placeholder),
            borderRadius: AppDefaults.borderRadius,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                child: AspectRatio(
                  aspectRatio: 1 / 1,
                  child: NetworkImageWithLoader(
                    data.cover,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              const SizedBox(height: 8),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    data.name,
                    style: Theme.of(context)
                        .textTheme
                        .titleMedium
                        ?.copyWith(color: Colors.black),
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  ),
                  Text(
                    'Item ${data.type.name}',
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  ),
                ],
              ),
              const SizedBox(height: 4),
              Text(
                DateTime.parse(data.dateFound).timeAgo(),
                style: Theme.of(context).textTheme.titleMedium,
              ),
              const SizedBox(height: 16),
            ],
          ),
        ),
      ),
    );
  }
}
