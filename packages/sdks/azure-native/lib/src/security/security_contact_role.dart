/// A possible role to configure sending security notification alerts to
enum SecurityContactRole {
  valueAccountAdmin("AccountAdmin"),
  valueServiceAdmin("ServiceAdmin"),
  valueOwner("Owner"),
  valueContributor("Contributor");

  const SecurityContactRole(this.value);
  final String value;

  static SecurityContactRole fromValue(String value) {
    for (final item in SecurityContactRole.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown SecurityContactRole value: $value');
  }
}

