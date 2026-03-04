// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Configuration for a read pool instance.
class ReadPoolConfig {
  /// Read capacity, i.e. number of nodes in a read pool instance.
  final pulumi.Input<int>? nodeCount;

  /// Creates a new [ReadPoolConfig].
  /// [nodeCount] Read capacity, i.e. number of nodes in a read pool instance.
  ReadPoolConfig({this.nodeCount});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'nodeCount': ?nodeCount};
  }

  factory ReadPoolConfig.fromMap(Map<String, dynamic> map) {
    return ReadPoolConfig(
      nodeCount: (() {
        final guardedValue = map['nodeCount'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
    );
  }
}
