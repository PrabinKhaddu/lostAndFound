class ItemModel {
  final int id;
  final String name;
  final String description;
  final String cover;
  final List<String> images;
  final String locationFound;
  final String dateFound;
  final String contactNumber;
  final bool isClaimed;
  final ItemType type;
  final double? rewardAmount;
  final String? uploadedBy;

  ItemModel({
    required this.name,
    required this.description,
    required this.cover,
    required this.images,
    required this.locationFound,
    required this.dateFound,
    required this.contactNumber,
    required this.type,
    this.isClaimed = false,
    this.rewardAmount,
    required this.id,
    this.uploadedBy,
  });

  ItemModel copyWith({bool? isClaimed}) {
    return ItemModel(
      name: name,
      description: description,
      cover: cover,
      images: images,
      locationFound: locationFound,
      dateFound: dateFound,
      contactNumber: contactNumber,
      type: type,
      isClaimed: isClaimed ?? this.isClaimed,
      rewardAmount: rewardAmount,
      uploadedBy: uploadedBy,
      id: id,
    );
  }
}

enum ItemType { lost, found }
