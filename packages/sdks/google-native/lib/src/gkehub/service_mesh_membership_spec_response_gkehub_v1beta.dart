// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// **Service Mesh**: Spec for a single Membership for the servicemesh feature
class ServiceMeshMembershipSpecResponseGkehubV1beta {
  /// Deprecated: use `management` instead Enables automatic control plane management.
  final pulumi.Input<String> controlPlane;
  /// Enables automatic Service Mesh management.
  final pulumi.Input<String> management;

  /// Creates a new [ServiceMeshMembershipSpecResponseGkehubV1beta].
  /// [controlPlane] Deprecated: use `management` instead Enables automatic control plane management.
  /// [management] Enables automatic Service Mesh management.
  ServiceMeshMembershipSpecResponseGkehubV1beta({
    required this.controlPlane,
    required this.management,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'controlPlane': controlPlane,
      'management': management,
    };
  }

  factory ServiceMeshMembershipSpecResponseGkehubV1beta.fromMap(Map<String, dynamic> map) {
    return ServiceMeshMembershipSpecResponseGkehubV1beta(
      controlPlane: (map['controlPlane'] as String).input(),
      management: (map['management'] as String).input(),
    );
  }
}

