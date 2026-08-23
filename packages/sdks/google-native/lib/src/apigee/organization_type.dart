/// Not used by Apigee.
enum OrganizationType {
  typeUnspecified("TYPE_UNSPECIFIED"),
  typeTrial("TYPE_TRIAL"),
  typePaid("TYPE_PAID"),
  typeInternal("TYPE_INTERNAL");

  const OrganizationType(this.wireValue);
  final String wireValue;

  static OrganizationType fromValue(String value) {
    for (final item in OrganizationType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown OrganizationType value: $value');
  }
}
