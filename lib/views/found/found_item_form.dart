import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:grocery/core/constants/dummy_data.dart';
import 'package:grocery/core/models/dummy_product_model.dart';

class FoundItemForm extends StatefulWidget {
  const FoundItemForm({super.key});

  @override
  State<FoundItemForm> createState() => _FoundItemFormState();
}

class _FoundItemFormState extends State<FoundItemForm> {
  int selectedTab = 0;
  String label = 'Lost';
  bool hasReward = false;
  final _formKey = GlobalKey<FormState>();
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _descriptionController = TextEditingController();
  final TextEditingController _coverController = TextEditingController();
  final TextEditingController _locationFoundController =
      TextEditingController();
  final TextEditingController _dateFoundController = TextEditingController();
  final TextEditingController _contactNumberController =
      TextEditingController();
  final TextEditingController _rewardController = TextEditingController();

  int generateId() {
    var id = Random().nextInt(100) + 20;
    bool isAlreadyAvailable = true;
    while (!isAlreadyAvailable) {
      isAlreadyAvailable = Dummy.items.any((e) => e.id == id);
    }
    return id;
  }

  void _submitForm() {
    if (_formKey.currentState!.validate()) {
      // Here you can handle the form submission logic
      // For example, you can create an ItemModel instance
      final item = ItemModel(
        name: _nameController.text,
        description: _descriptionController.text,
        cover: _coverController.text,
        images: [], // You can add image handling logic here
        locationFound: _locationFoundController.text,
        dateFound: _dateFoundController.text,
        contactNumber: _contactNumberController.text,
        rewardAmount: double.tryParse(_rewardController.text),
        uploadedBy: selectedTab == 0 ? 'me' : null,
        type: selectedTab == 0 ? ItemType.lost : ItemType.found,
        id: generateId(),
      );

      Dummy.items.add(item);

      // Display a success message or navigate to another page
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Item posted successfully!')),
      );

      // Clear the form
      _formKey.currentState!.reset();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const SizedBox(),
        title: const Text('Report Found Item'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              SizedBox(
                width: MediaQuery.sizeOf(context).width,
                child: CupertinoSlidingSegmentedControl(
                  children: {
                    0: Padding(
                      padding: const EdgeInsets.symmetric(vertical: 10),
                      child: Text(
                        'Lost Item',
                        style: Theme.of(context).textTheme.titleMedium,
                      ),
                    ),
                    1: Padding(
                      padding: const EdgeInsets.symmetric(vertical: 10),
                      child: Text(
                        'Found Item',
                        style: Theme.of(context).textTheme.titleMedium,
                      ),
                    ),
                  },
                  // backgroundColor: AppColors.tertiary.withOpacity(0.12),
                  groupValue: selectedTab,
                  onValueChanged: (value) {
                    if (value == null) return;
                    setState(() {
                      label = value == 0 ? 'Lost' : 'Found';
                      selectedTab = value;
                    });
                  },
                ),
              ),
              const SizedBox(height: 20),
              Expanded(
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      TextFormField(
                        controller: _nameController,
                        decoration:
                            const InputDecoration(labelText: 'Item Name'),
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Please enter the item name';
                          }
                          return null;
                        },
                      ),
                      const SizedBox(height: 20),
                      TextFormField(
                        controller: _descriptionController,
                        decoration:
                            const InputDecoration(labelText: 'Description'),
                        maxLines: 2,
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Please enter a description';
                          }
                          return null;
                        },
                      ),
                      const SizedBox(height: 20),
                      TextFormField(
                        controller: _coverController,
                        decoration:
                            const InputDecoration(labelText: 'Cover Image URL'),
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Please enter the cover image URL';
                          }
                          return null;
                        },
                      ),
                      const SizedBox(height: 20),
                      TextFormField(
                        controller: _locationFoundController,
                        decoration:
                            InputDecoration(labelText: '$label Location'),
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Please enter the location where you ${label.toLowerCase()} the item';
                          }
                          return null;
                        },
                      ),
                      const SizedBox(height: 20),
                      TextFormField(
                        controller: _dateFoundController,
                        decoration: InputDecoration(
                            labelText: '$label Date (YYYY-MM-DD)'),
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Please enter the date when you ${label.toLowerCase()} the item';
                          }
                          return null;
                        },
                      ),
                      const SizedBox(height: 20),
                      TextFormField(
                        controller: _contactNumberController,
                        decoration:
                            const InputDecoration(labelText: 'Contact Number'),
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Please enter your contact number';
                          }
                          return null;
                        },
                      ),
                      const SizedBox(height: 20),
                      if (selectedTab == 0)
                        ListTile(
                          contentPadding: const EdgeInsets.all(0),
                          leading: Text(
                            'Has Reward',
                            style: TextStyle(
                              color: Colors.black.withOpacity(0.7),
                              fontSize: 20,
                            ),
                          ),
                          trailing: CupertinoSwitch(
                            value: hasReward,
                            onChanged: (value) {
                              setState(() {
                                hasReward = value;
                              });
                            },
                          ),
                        ),
                      if (hasReward) const SizedBox(height: 20),
                      if (hasReward)
                        TextFormField(
                          controller: _rewardController,
                          decoration:
                              const InputDecoration(labelText: 'Reward Amount'),
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'Please enter reward amount';
                            } else if (double.tryParse(value) == null) {
                              return 'Please enter valid amount';
                            }
                            return null;
                          },
                        ),
                      const SizedBox(height: 40),
                      Row(
                        children: [
                          Expanded(
                            child: SizedBox(
                              height: 55,
                              child: ElevatedButton(
                                onPressed: _submitForm,
                                child: Text('Submit $label Item'),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
