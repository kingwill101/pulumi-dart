import 'package:pulumi/pulumi.dart' as pulumi;

/// Deprecated: use `management` instead Enables automatic control plane management.
enum ServiceMeshMembershipSpecControlPlane implements pulumi.PulumiEnum<String> {
  controlPlaneManagementUnspecified("CONTROL_PLANE_MANAGEMENT_UNSPECIFIED"),
  automatic("AUTOMATIC"),
  manual("MANUAL");

  const ServiceMeshMembershipSpecControlPlane(this.wireValue);
  @override
  final String wireValue;

  static ServiceMeshMembershipSpecControlPlane fromValue(String value) {
    for (final item in ServiceMeshMembershipSpecControlPlane.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ServiceMeshMembershipSpecControlPlane value: $value');
  }
}
