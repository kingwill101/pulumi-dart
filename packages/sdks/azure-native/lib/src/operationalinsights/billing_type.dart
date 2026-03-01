/// The cluster's billing type.
enum BillingType {
  valueCluster("Cluster"),
  valueWorkspaces("Workspaces");

  const BillingType(this.value);
  final String value;

  static BillingType fromValue(String value) {
    for (final item in BillingType.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown BillingType value: $value');
  }
}

