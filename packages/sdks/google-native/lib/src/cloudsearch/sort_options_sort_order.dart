import 'package:pulumi/pulumi.dart' as pulumi;

/// Ascending is the default sort order
enum SortOptionsSortOrder implements pulumi.PulumiEnum<String> {
  ascending("ASCENDING"),
  descending("DESCENDING");

  const SortOptionsSortOrder(this.wireValue);
  @override
  final String wireValue;

  static SortOptionsSortOrder fromValue(String value) {
    for (final item in SortOptionsSortOrder.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown SortOptionsSortOrder value: $value');
  }
}
