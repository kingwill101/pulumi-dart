import 'package:pulumi/pulumi.dart' as pulumi;

/// Enables automatic Service Mesh management.
enum ServiceMeshMembershipSpecManagementGkehubV1beta implements pulumi.PulumiEnum<String> {
  managementUnspecified("MANAGEMENT_UNSPECIFIED"),
  managementAutomatic("MANAGEMENT_AUTOMATIC"),
  managementManual("MANAGEMENT_MANUAL");

  const ServiceMeshMembershipSpecManagementGkehubV1beta(this.wireValue);
  @override
  final String wireValue;

  static ServiceMeshMembershipSpecManagementGkehubV1beta fromValue(String value) {
    for (final item in ServiceMeshMembershipSpecManagementGkehubV1beta.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ServiceMeshMembershipSpecManagementGkehubV1beta value: $value');
  }
}
