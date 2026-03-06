// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class NodeGroupShareSettingsProjectMap {
  /// The identifier for this object. Format specified above.
  final pulumi.Input<String> id;
  /// The project id/number should be the same as the key of this project config in the project map.
  final pulumi.Input<String> projectId;

  /// Creates a new [NodeGroupShareSettingsProjectMap].
  /// [id] The identifier for this object. Format specified above.
  /// [projectId] The project id/number should be the same as the key of this project config in the project map.
  const NodeGroupShareSettingsProjectMap({
    required this.id,
    required this.projectId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'projectId': projectId,
    };
  }

  factory NodeGroupShareSettingsProjectMap.fromMap(Map<String, dynamic> map) {
    return NodeGroupShareSettingsProjectMap(
      id: pulumi.Input.fromValue(map['id'] as String),
      projectId: pulumi.Input.fromValue(map['projectId'] as String),
    );
  }
}

