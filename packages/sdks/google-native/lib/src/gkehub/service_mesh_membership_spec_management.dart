import 'package:pulumi/pulumi.dart' as pulumi;

/// Enables automatic Service Mesh management.
enum ServiceMeshMembershipSpecManagement implements pulumi.PulumiEnum<String> {
  managementUnspecified("MANAGEMENT_UNSPECIFIED"),
  managementAutomatic("MANAGEMENT_AUTOMATIC"),
  managementManual("MANAGEMENT_MANUAL");

  const ServiceMeshMembershipSpecManagement(this.wireValue);
  @override
  final String wireValue;

  static ServiceMeshMembershipSpecManagement fromValue(String value) {
    for (final item in ServiceMeshMembershipSpecManagement.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ServiceMeshMembershipSpecManagement value: $value');
  }
}
