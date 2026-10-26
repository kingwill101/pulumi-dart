import 'package:pulumi/pulumi.dart' as pulumi;

/// The sort order applied to the sort column.
enum DimensionSortOrder implements pulumi.PulumiEnum<String> {
  sortOrderUnspecified("SORT_ORDER_UNSPECIFIED"),
  sortOrderNone("SORT_ORDER_NONE"),
  sortOrderAscending("SORT_ORDER_ASCENDING"),
  sortOrderDescending("SORT_ORDER_DESCENDING");

  const DimensionSortOrder(this.wireValue);
  @override
  final String wireValue;

  static DimensionSortOrder fromValue(String value) {
    for (final item in DimensionSortOrder.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown DimensionSortOrder value: $value');
  }
}
