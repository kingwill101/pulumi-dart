/// Describes if results should be in ascending/descending order
enum FirewallPolicyIDPSQuerySortOrder {
  valueAscending("Ascending"),
  valueDescending("Descending");

  const FirewallPolicyIDPSQuerySortOrder(this.wireValue);
  final String wireValue;

  static FirewallPolicyIDPSQuerySortOrder fromValue(String value) {
    for (final item in FirewallPolicyIDPSQuerySortOrder.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError(
      'Unknown FirewallPolicyIDPSQuerySortOrder value: $value',
    );
  }
}
