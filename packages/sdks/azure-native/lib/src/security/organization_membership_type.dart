import 'package:pulumi/pulumi.dart' as pulumi;

/// The multi cloud account's membership type in the organization
enum OrganizationMembershipType implements pulumi.PulumiEnum<String> {
  member("Member"),
  organization("Organization");

  const OrganizationMembershipType(this.wireValue);
  @override
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
