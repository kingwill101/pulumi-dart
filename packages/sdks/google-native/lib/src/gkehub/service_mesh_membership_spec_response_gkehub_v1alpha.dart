// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// **Service Mesh**: Spec for a single Membership for the servicemesh feature
class ServiceMeshMembershipSpecResponseGkehubV1alpha {
  /// Deprecated: use `management` instead Enables automatic control plane management.
  final pulumi.Input<String> controlPlane;
  /// Determines which release channel to use for default injection and service mesh APIs.
  final pulumi.Input<String> defaultChannel;
  /// Enables automatic Service Mesh management.
  final pulumi.Input<String> management;

  /// Creates a new [ServiceMeshMembershipSpecResponseGkehubV1alpha].
  /// [controlPlane] Deprecated: use `management` instead Enables automatic control plane management.
  /// [defaultChannel] Determines which release channel to use for default injection and service mesh APIs.
  /// [management] Enables automatic Service Mesh management.
  const ServiceMeshMembershipSpecResponseGkehubV1alpha({
    required this.controlPlane,
    required this.defaultChannel,
    required this.management,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'controlPlane': controlPlane,
      'defaultChannel': defaultChannel,
      'management': management,
    };
  }

  factory ServiceMeshMembershipSpecResponseGkehubV1alpha.fromMap(Map<String, dynamic> map) {
    return ServiceMeshMembershipSpecResponseGkehubV1alpha(
      controlPlane: pulumi.Input.fromValue(map['controlPlane'] as String),
      defaultChannel: pulumi.Input.fromValue(map['defaultChannel'] as String),
      management: pulumi.Input.fromValue(map['management'] as String),
    );
  }
}
