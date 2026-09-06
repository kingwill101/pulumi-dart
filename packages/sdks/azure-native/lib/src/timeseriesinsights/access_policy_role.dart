import 'package:pulumi/pulumi.dart' as pulumi;

/// A role defining the data plane operations that a principal can perform on a Time Series Insights client.
enum AccessPolicyRole implements pulumi.PulumiEnum<String> {
  valueReader("Reader"),
  valueContributor("Contributor");

  const AccessPolicyRole(this.wireValue);
  @override
  final String wireValue;

  static AccessPolicyRole fromValue(String value) {
    for (final item in AccessPolicyRole.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown AccessPolicyRole value: $value');
  }
}
