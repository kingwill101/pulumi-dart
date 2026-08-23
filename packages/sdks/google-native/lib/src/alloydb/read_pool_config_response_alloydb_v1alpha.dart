// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Configuration for a read pool instance.
class ReadPoolConfigResponseAlloydbV1alpha {
  /// Read capacity, i.e. number of nodes in a read pool instance.
  final pulumi.Input<int> nodeCount;

  /// Creates a new [ReadPoolConfigResponseAlloydbV1alpha].
  /// [nodeCount] Read capacity, i.e. number of nodes in a read pool instance.
  const ReadPoolConfigResponseAlloydbV1alpha({
    required this.nodeCount,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'nodeCount': nodeCount,
    };
  }

  factory ReadPoolConfigResponseAlloydbV1alpha.fromMap(Map<String, dynamic> map) {
    return ReadPoolConfigResponseAlloydbV1alpha(
      nodeCount: pulumi.Input.fromValue(map['nodeCount'] as int),
    );
  }
}
