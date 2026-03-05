/// Ascending is the default sort order
enum SortOptionsSortOrder {
  ascending("ASCENDING"),
  descending("DESCENDING");

  const SortOptionsSortOrder(this.wireValue);
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

