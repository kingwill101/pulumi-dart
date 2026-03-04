// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Configuration for a read pool instance.
class ReadPoolConfigResponseAlloydbV1beta {
  /// Read capacity, i.e. number of nodes in a read pool instance.
  final pulumi.Input<int> nodeCount;

  /// Creates a new [ReadPoolConfigResponseAlloydbV1beta].
  /// [nodeCount] Read capacity, i.e. number of nodes in a read pool instance.
  ReadPoolConfigResponseAlloydbV1beta({required this.nodeCount});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'nodeCount': nodeCount};
  }

  factory ReadPoolConfigResponseAlloydbV1beta.fromMap(
    Map<String, dynamic> map,
  ) {
    return ReadPoolConfigResponseAlloydbV1beta(
      nodeCount: pulumi.Input.fromValue(map['nodeCount'] as int),
    );
  }
}
