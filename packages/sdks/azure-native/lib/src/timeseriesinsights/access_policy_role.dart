/// A role defining the data plane operations that a principal can perform on a Time Series Insights client.
enum AccessPolicyRole {
  valueReader("Reader"),
  valueContributor("Contributor");

  const AccessPolicyRole(this.wireValue);
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

