/// A possible role to configure sending security notification alerts to
enum SecurityContactRole {
  accountAdmin("AccountAdmin"),
  serviceAdmin("ServiceAdmin"),
  owner("Owner"),
  contributor("Contributor");

  const SecurityContactRole(this.wireValue);
  final String wireValue;

  static SecurityContactRole fromValue(String value) {
    for (final item in SecurityContactRole.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown SecurityContactRole value: $value');
  }
}
