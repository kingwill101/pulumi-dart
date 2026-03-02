// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Node configuration for the connection.
class NodeConfig {
  /// Maximum number of nodes in the runtime nodes.
  final pulumi.Input<int>? maxNodeCount;
  /// Minimum number of nodes in the runtime nodes.
  final pulumi.Input<int>? minNodeCount;

  /// Creates a new [NodeConfig].
  /// [maxNodeCount] Maximum number of nodes in the runtime nodes.
  /// [minNodeCount] Minimum number of nodes in the runtime nodes.
  NodeConfig({
    this.maxNodeCount,
    this.minNodeCount,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'maxNodeCount': ?maxNodeCount,
      'minNodeCount': ?minNodeCount,
    };
  }

  factory NodeConfig.fromMap(Map<String, dynamic> map) {
    return NodeConfig(
      maxNodeCount: map['maxNodeCount'] == null ? null : (map['maxNodeCount'] as int).input(),
      minNodeCount: map['minNodeCount'] == null ? null : (map['minNodeCount'] as int).input(),
    );
  }
}

