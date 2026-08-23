/// The multi cloud account's membership type in the organization
enum OrganizationMembershipType {
  member("Member"),
  organization("Organization");

  const OrganizationMembershipType(this.wireValue);
  final String wireValue;

  static OrganizationMembershipType fromValue(String value) {
    for (final item in OrganizationMembershipType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown OrganizationMembershipType value: $value');
  }
}
