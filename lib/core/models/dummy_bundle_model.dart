class BundleModel {
  final String name;
  final String description;
  final String cover;
  final List<String> itemNames;
  final String locationFound;
  final String dateFound;

  BundleModel({
    required this.name,
    required this.description,
    required this.cover,
    required this.itemNames,
    required this.locationFound,
    required this.dateFound,
  });
}
