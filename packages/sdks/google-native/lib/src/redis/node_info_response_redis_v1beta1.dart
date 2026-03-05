// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Node specific properties.
class NodeInfoResponseRedisV1beta1 {
  /// Location of the node.
  final pulumi.Input<String> zone;

  /// Creates a new [NodeInfoResponseRedisV1beta1].
  /// [zone] Location of the node.
  NodeInfoResponseRedisV1beta1({
    required this.zone,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'zone': zone,
    };
  }

  factory NodeInfoResponseRedisV1beta1.fromMap(Map<String, dynamic> map) {
    return NodeInfoResponseRedisV1beta1(
      zone: pulumi.Input.fromValue(map['zone'] as String),
    );
  }
}

