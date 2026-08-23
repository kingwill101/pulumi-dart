// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class FeatureMembershipMesh {
  /// **DEPRECATED** Whether to automatically manage Service Mesh control planes. Possible values: CONTROL_PLANE_MANAGEMENT_UNSPECIFIED, AUTOMATIC, MANUAL
  final pulumi.Input<String>? controlPlane;
  /// Whether to automatically manage Service Mesh. Can either be `MANAGEMENT_AUTOMATIC` or `MANAGEMENT_MANUAL`.
  final pulumi.Input<String>? management;

  /// Creates a new [FeatureMembershipMesh].
  /// [controlPlane] **DEPRECATED** Whether to automatically manage Service Mesh control planes. Possible values: CONTROL_PLANE_MANAGEMENT_UNSPECIFIED, AUTOMATIC, MANUAL
  /// [management] Whether to automatically manage Service Mesh. Can either be `MANAGEMENT_AUTOMATIC` or `MANAGEMENT_MANUAL`.
  const FeatureMembershipMesh({
    this.controlPlane,
    this.management,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'controlPlane': ?controlPlane,
      'management': ?management,
    };
  }

  factory FeatureMembershipMesh.fromMap(Map<String, dynamic> map) {
    return FeatureMembershipMesh(
      controlPlane: (() { final guardedValue = map['controlPlane']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      management: (() { final guardedValue = map['management']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
