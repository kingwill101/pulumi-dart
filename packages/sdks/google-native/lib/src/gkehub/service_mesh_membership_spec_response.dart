// ignore_for_file: unused_element, unnecessary_cast


/// **Service Mesh**: Spec for a single Membership for the servicemesh feature
class ServiceMeshMembershipSpecResponse {
  /// Deprecated: use `management` instead Enables automatic control plane management.
  final String controlPlane;
  /// Enables automatic Service Mesh management.
  final String management;

  /// Creates a new [ServiceMeshMembershipSpecResponse].
  /// [controlPlane] Deprecated: use `management` instead Enables automatic control plane management.
  /// [management] Enables automatic Service Mesh management.
  ServiceMeshMembershipSpecResponse({
    required this.controlPlane,
    required this.management,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'controlPlane': controlPlane,
      'management': management,
    };
  }

  factory ServiceMeshMembershipSpecResponse.fromMap(Map<String, dynamic> map) {
    return ServiceMeshMembershipSpecResponse(
      controlPlane: map['controlPlane'] as String,
      management: map['management'] as String,
    );
  }
}

