import 'package:pulumi/pulumi.dart' as pulumi;

/// The cluster's billing type.
enum BillingType implements pulumi.PulumiEnum<String> {
  valueCluster("Cluster"),
  valueWorkspaces("Workspaces");

  const BillingType(this.wireValue);
  @override
  final String wireValue;

  static BillingType fromValue(String value) {
    for (final item in BillingType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown BillingType value: $value');
  }
}
