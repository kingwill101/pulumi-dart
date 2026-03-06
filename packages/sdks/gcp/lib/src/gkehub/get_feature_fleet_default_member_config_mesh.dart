// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetFeatureFleetDefaultMemberConfigMesh {
  /// Whether to automatically manage Service Mesh Possible values: ["MANAGEMENT_UNSPECIFIED", "MANAGEMENT_AUTOMATIC", "MANAGEMENT_MANUAL"]
  final pulumi.Input<String> management;

  /// Creates a new [GetFeatureFleetDefaultMemberConfigMesh].
  /// [management] Whether to automatically manage Service Mesh Possible values: ["MANAGEMENT_UNSPECIFIED", "MANAGEMENT_AUTOMATIC", "MANAGEMENT_MANUAL"]
  const GetFeatureFleetDefaultMemberConfigMesh({
    required this.management,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'management': management,
    };
  }

  factory GetFeatureFleetDefaultMemberConfigMesh.fromMap(Map<String, dynamic> map) {
    return GetFeatureFleetDefaultMemberConfigMesh(
      management: pulumi.Input.fromValue(map['management'] as String),
    );
  }
}

