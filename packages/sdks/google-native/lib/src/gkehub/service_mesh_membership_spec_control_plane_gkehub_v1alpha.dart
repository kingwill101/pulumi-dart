/// Deprecated: use `management` instead Enables automatic control plane management.
enum ServiceMeshMembershipSpecControlPlaneGkehubV1alpha {
  controlPlaneManagementUnspecified("CONTROL_PLANE_MANAGEMENT_UNSPECIFIED"),
  automatic("AUTOMATIC"),
  manual("MANUAL");

  const ServiceMeshMembershipSpecControlPlaneGkehubV1alpha(this.value);
  final String value;

  static ServiceMeshMembershipSpecControlPlaneGkehubV1alpha fromValue(String value) {
    for (final item in ServiceMeshMembershipSpecControlPlaneGkehubV1alpha.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ServiceMeshMembershipSpecControlPlaneGkehubV1alpha value: $value');
  }
}

