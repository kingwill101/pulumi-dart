// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// **Service Mesh**: Spec for a single Membership for the servicemesh feature
class ServiceMeshMembershipSpecResponse {
  /// Deprecated: use `management` instead Enables automatic control plane management.
  final pulumi.Input<String> controlPlane;

  /// Enables automatic Service Mesh management.
  final pulumi.Input<String> management;

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
      controlPlane: pulumi.Input.fromValue(map['controlPlane'] as String),
      management: pulumi.Input.fromValue(map['management'] as String),
    );
  }
}
