import 'dart:developer';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:grocery/core/components/network_image.dart';
import 'package:grocery/core/constants/dummy_data.dart';
import 'package:grocery/core/models/dummy_product_model.dart';

class ItemDetailsPage extends StatefulWidget {
  final ItemModel item;

  const ItemDetailsPage({super.key, required this.item});

  @override
  State<ItemDetailsPage> createState() => _ItemDetailsPageState();
}

class _ItemDetailsPageState extends State<ItemDetailsPage> {
  // bool _isClaimButtonVisible = true;

  void updateData() async {
    for (var i = 0; i < Dummy.items.length; i++) {
      var items = Dummy.items[i];
      if (items.id == widget.item.id) {
        Dummy.items[i] = items.copyWith(isClaimed: true);
      }
    }
  }

  void _showClaimBottomSheet({bool isClaim = true}) {
    String data = '';
    showModalBottomSheet(
      context: context,
      builder: (context) => Container(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            const Text(
              'Claim Item',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 16),
            const Text(
              'Please confirm that this item belongs to you.',
            ),
            const SizedBox(height: 16),
            TextFormField(
              decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: "Enter lost location"),
              onChanged: (value) {
                data = value;
              },
            ),
            const SizedBox(height: 24),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                TextButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  child: const Text('Cancel'),
                ),
                const SizedBox(width: 16),
                ElevatedButton(
                  onPressed: () {
                    if (data.toLowerCase() ==
                        widget.item.locationFound.toLowerCase()) {
                      setState(() {
                        updateData();
                        log(widget.item.isClaimed.toString());
                      });
                      String message = widget.item.rewardAmount != null
                          ? 'Congrats, \$${widget.item.rewardAmount} will be rewarded to you'
                          : 'Item Claimed!';
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(
                          content: Text(isClaim ? "Item Claimed" : message),
                          backgroundColor: Colors.green,
                        ),
                      );
                    } else {
                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(content: Text('Location not matched')),
                      );
                    }
                    Navigator.of(context).pop();
                  },
                  child: const Text('Confirm'),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  void _showRewardBottomSheet() {
    showModalBottomSheet(
      context: context,
      builder: (context) {
        String data = '';
        return Container(
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              const Text(
                'Offer Reward',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 16),
              const Text(
                'Please enter the reward amount you would like to offer.',
              ),
              const SizedBox(height: 16),
              TextField(
                decoration: const InputDecoration(
                  hintText: 'Enter reward amount',
                  border: OutlineInputBorder(),
                ),
                onChanged: (value) {
                  if ((value.isEmpty) || double.tryParse(value) == null) {
                    return;
                  }
                  data = value;
                },
              ),
              const SizedBox(height: 24),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  TextButton(
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                    child: const Text('Cancel'),
                  ),
                  const SizedBox(width: 16),
                  ElevatedButton(
                    onPressed: () {
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(
                          content: Text('You will be rewared: \$$data'),
                          backgroundColor: Colors.green,
                        ),
                      );
                      // Handle reward submission logic here
                      Navigator.of(context).pop();
                    },
                    child: const Text('Submit'),
                  ),
                ],
              ),
            ],
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    bool isClaimed = Dummy.items.firstWhere(
      (element) {
        return element.id == widget.item.id;
      },
    ).isClaimed;
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.item.name),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 250,
              child: NetworkImageWithLoader(
                widget.item.cover,
                fit: BoxFit.cover,
              ),
            ),
            const SizedBox(height: 16),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    widget.item.name,
                    style: const TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 8),
                  Text(
                    widget.item.description,
                    style: const TextStyle(
                      fontSize: 16,
                    ),
                  ),
                  const SizedBox(height: 16),
                  // if (kDebugMode) ...[
                  //   Text(
                  //     'Location Found: ${widget.item.locationFound}',
                  //     style: const TextStyle(
                  //       fontSize: 16,
                  //     ),
                  //   ),
                  //   const SizedBox(height: 8),
                  // ],
                  Text(
                    'Date Found: ${widget.item.dateFound}',
                    style: const TextStyle(
                      fontSize: 16,
                    ),
                  ),
                  const SizedBox(height: 8),
                  Text(
                    'Contact Number: ${widget.item.contactNumber}',
                    style: const TextStyle(
                      fontSize: 16,
                    ),
                  ),
                  const SizedBox(height: 24),
                  widget.item.type == ItemType.found
                      ? Row(
                          children: [
                            if (!isClaimed)
                              Expanded(
                                child: ElevatedButton(
                                  onPressed: () {
                                    _showClaimBottomSheet();
                                  },
                                  child: const Text('Claim Item'),
                                ),
                              ),
                            const SizedBox(width: 10),
                            if (widget.item.rewardAmount != null)
                              Expanded(
                                child: ElevatedButton(
                                  onPressed: () {
                                    _showRewardBottomSheet();
                                  },
                                  child: const Text('Offer Reward'),
                                ),
                              ),
                          ],
                        )
                      : Row(
                          children: [
                            if (!isClaimed)
                              Expanded(
                                child: ElevatedButton(
                                  onPressed: () {
                                    _showClaimBottomSheet(isClaim: false);
                                  },
                                  child: const Text('I Found It'),
                                ),
                              ),
                          ],
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
