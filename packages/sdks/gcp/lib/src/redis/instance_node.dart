// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class InstanceNode {
  /// (Output)
  /// Node identifying string. e.g. 'node-0', 'node-1'
  final pulumi.Input<String>? id;
  /// (Output)
  /// Location of the node.
  final pulumi.Input<String>? zone;

  /// Creates a new [InstanceNode].
  /// [id] (Output)
  /// [zone] (Output)
  const InstanceNode({
    this.id,
    this.zone,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': ?id,
      'zone': ?zone,
    };
  }

  factory InstanceNode.fromMap(Map<String, dynamic> map) {
    return InstanceNode(
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      zone: (() { final guardedValue = map['zone']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
