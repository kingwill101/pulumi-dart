// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class InstanceReadPoolConfig {
  /// Read capacity, i.e. number of nodes in a read pool instance.
  final pulumi.Input<int>? nodeCount;

  /// Creates a new [InstanceReadPoolConfig].
  /// [nodeCount] Read capacity, i.e. number of nodes in a read pool instance.
  InstanceReadPoolConfig({
    this.nodeCount,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'nodeCount': ?nodeCount,
    };
  }

  factory InstanceReadPoolConfig.fromMap(Map<String, dynamic> map) {
    return InstanceReadPoolConfig(
      nodeCount: (() { final guardedValue = map['nodeCount']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
    );
  }
}

