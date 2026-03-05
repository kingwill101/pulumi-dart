/// Deprecated: use `management` instead Enables automatic control plane management.
enum ServiceMeshMembershipSpecControlPlaneGkehubV1alpha {
  controlPlaneManagementUnspecified("CONTROL_PLANE_MANAGEMENT_UNSPECIFIED"),
  automatic("AUTOMATIC"),
  manual("MANUAL");

  const ServiceMeshMembershipSpecControlPlaneGkehubV1alpha(this.wireValue);
  final String wireValue;

  static ServiceMeshMembershipSpecControlPlaneGkehubV1alpha fromValue(String value) {
    for (final item in ServiceMeshMembershipSpecControlPlaneGkehubV1alpha.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ServiceMeshMembershipSpecControlPlaneGkehubV1alpha value: $value');
  }
}

