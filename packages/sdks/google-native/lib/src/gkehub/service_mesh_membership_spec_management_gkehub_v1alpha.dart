/// Enables automatic Service Mesh management.
enum ServiceMeshMembershipSpecManagementGkehubV1alpha {
  managementUnspecified("MANAGEMENT_UNSPECIFIED"),
  managementAutomatic("MANAGEMENT_AUTOMATIC"),
  managementManual("MANAGEMENT_MANUAL");

  const ServiceMeshMembershipSpecManagementGkehubV1alpha(this.wireValue);
  final String wireValue;

  static ServiceMeshMembershipSpecManagementGkehubV1alpha fromValue(
    String value,
  ) {
    for (final item
        in ServiceMeshMembershipSpecManagementGkehubV1alpha.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError(
      'Unknown ServiceMeshMembershipSpecManagementGkehubV1alpha value: $value',
    );
  }
}
