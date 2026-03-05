// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetInstanceNode {
  /// Node identifying string. e.g. 'node-0', 'node-1'
  final pulumi.Input<String> id;
  /// Location of the node.
  final pulumi.Input<String> zone;

  /// Creates a new [GetInstanceNode].
  /// [id] Node identifying string. e.g. 'node-0', 'node-1'
  /// [zone] Location of the node.
  GetInstanceNode({
    required this.id,
    required this.zone,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'zone': zone,
    };
  }

  factory GetInstanceNode.fromMap(Map<String, dynamic> map) {
    return GetInstanceNode(
      id: pulumi.Input.fromValue(map['id'] as String),
      zone: pulumi.Input.fromValue(map['zone'] as String),
    );
  }
}

