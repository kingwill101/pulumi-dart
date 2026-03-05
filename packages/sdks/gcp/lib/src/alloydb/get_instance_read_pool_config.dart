// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetInstanceReadPoolConfig {
  /// Read capacity, i.e. number of nodes in a read pool instance.
  final pulumi.Input<int> nodeCount;

  /// Creates a new [GetInstanceReadPoolConfig].
  /// [nodeCount] Read capacity, i.e. number of nodes in a read pool instance.
  GetInstanceReadPoolConfig({
    required this.nodeCount,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'nodeCount': nodeCount,
    };
  }

  factory GetInstanceReadPoolConfig.fromMap(Map<String, dynamic> map) {
    return GetInstanceReadPoolConfig(
      nodeCount: pulumi.Input.fromValue(map['nodeCount'] as int),
    );
  }
}

