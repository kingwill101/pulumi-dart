/// Deprecated: use `management` instead Enables automatic control plane management.
enum ServiceMeshMembershipSpecControlPlane {
  controlPlaneManagementUnspecified("CONTROL_PLANE_MANAGEMENT_UNSPECIFIED"),
  automatic("AUTOMATIC"),
  manual("MANUAL");

  const ServiceMeshMembershipSpecControlPlane(this.wireValue);
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

