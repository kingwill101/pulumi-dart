// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class FeatureFleetDefaultMemberConfigMesh {
  /// Whether to automatically manage Service Mesh
  /// Possible values are: `MANAGEMENT_UNSPECIFIED`, `MANAGEMENT_AUTOMATIC`, `MANAGEMENT_MANUAL`.
  final pulumi.Input<String> management;

  /// Creates a new [FeatureFleetDefaultMemberConfigMesh].
  /// [management] Whether to automatically manage Service Mesh
  FeatureFleetDefaultMemberConfigMesh({required this.management});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'management': management};
  }

  factory FeatureFleetDefaultMemberConfigMesh.fromMap(
    Map<String, dynamic> map,
  ) {
    return FeatureFleetDefaultMemberConfigMesh(
      management: pulumi.Input.fromValue(map['management'] as String),
    );
  }
}
