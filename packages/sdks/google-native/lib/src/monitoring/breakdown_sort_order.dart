/// Required. The sort order is applied to the values of the breakdown column.
enum BreakdownSortOrder {
  sortOrderUnspecified("SORT_ORDER_UNSPECIFIED"),
  sortOrderNone("SORT_ORDER_NONE"),
  sortOrderAscending("SORT_ORDER_ASCENDING"),
  sortOrderDescending("SORT_ORDER_DESCENDING");

  const BreakdownSortOrder(this.wireValue);
  final String wireValue;

  static BreakdownSortOrder fromValue(String value) {
    for (final item in BreakdownSortOrder.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown BreakdownSortOrder value: $value');
  }
}
