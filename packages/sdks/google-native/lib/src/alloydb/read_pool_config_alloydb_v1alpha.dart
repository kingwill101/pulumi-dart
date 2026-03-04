// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Configuration for a read pool instance.
class ReadPoolConfigAlloydbV1alpha {
  /// Read capacity, i.e. number of nodes in a read pool instance.
  final pulumi.Input<int>? nodeCount;

  /// Creates a new [ReadPoolConfigAlloydbV1alpha].
  /// [nodeCount] Read capacity, i.e. number of nodes in a read pool instance.
  ReadPoolConfigAlloydbV1alpha({this.nodeCount});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'nodeCount': ?nodeCount};
  }

  factory ReadPoolConfigAlloydbV1alpha.fromMap(Map<String, dynamic> map) {
    return ReadPoolConfigAlloydbV1alpha(
      nodeCount: (() {
        final guardedValue = map['nodeCount'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
    );
  }
}
