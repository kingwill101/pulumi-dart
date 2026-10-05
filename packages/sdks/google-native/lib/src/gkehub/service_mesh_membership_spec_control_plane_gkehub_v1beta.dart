import 'package:pulumi/pulumi.dart' as pulumi;

/// Deprecated: use `management` instead Enables automatic control plane management.
enum ServiceMeshMembershipSpecControlPlaneGkehubV1beta implements pulumi.PulumiEnum<String> {
  controlPlaneManagementUnspecified("CONTROL_PLANE_MANAGEMENT_UNSPECIFIED"),
  automatic("AUTOMATIC"),
  manual("MANUAL");

  const ServiceMeshMembershipSpecControlPlaneGkehubV1beta(this.wireValue);
  @override
  final String wireValue;

  static ServiceMeshMembershipSpecControlPlaneGkehubV1beta fromValue(String value) {
    for (final item in ServiceMeshMembershipSpecControlPlaneGkehubV1beta.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ServiceMeshMembershipSpecControlPlaneGkehubV1beta value: $value');
  }
}
