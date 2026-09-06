import 'package:pulumi/pulumi.dart' as pulumi;

/// Describes if results should be in ascending/descending order
enum FirewallPolicyIDPSQuerySortOrder implements pulumi.PulumiEnum<String> {
  valueAscending("Ascending"),
  valueDescending("Descending");

  const FirewallPolicyIDPSQuerySortOrder(this.wireValue);
  @override
  final String wireValue;

  static FirewallPolicyIDPSQuerySortOrder fromValue(String value) {
    for (final item in FirewallPolicyIDPSQuerySortOrder.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown FirewallPolicyIDPSQuerySortOrder value: $value');
  }
}
