import 'package:pulumi/pulumi.dart' as pulumi;

/// Enables automatic Service Mesh management.
enum ServiceMeshMembershipSpecManagementGkehubV1alpha implements pulumi.PulumiEnum<String> {
  managementUnspecified("MANAGEMENT_UNSPECIFIED"),
  managementAutomatic("MANAGEMENT_AUTOMATIC"),
  managementManual("MANAGEMENT_MANUAL");

  const ServiceMeshMembershipSpecManagementGkehubV1alpha(this.wireValue);
  @override
  final String wireValue;

  static ServiceMeshMembershipSpecManagementGkehubV1alpha fromValue(String value) {
    for (final item in ServiceMeshMembershipSpecManagementGkehubV1alpha.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ServiceMeshMembershipSpecManagementGkehubV1alpha value: $value');
  }
}
