// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Node configuration for the connection.
class NodeConfigResponse {
  /// Maximum number of nodes in the runtime nodes.
  final pulumi.Input<int> maxNodeCount;
  /// Minimum number of nodes in the runtime nodes.
  final pulumi.Input<int> minNodeCount;

  /// Creates a new [NodeConfigResponse].
  /// [maxNodeCount] Maximum number of nodes in the runtime nodes.
  /// [minNodeCount] Minimum number of nodes in the runtime nodes.
  const NodeConfigResponse({
    required this.maxNodeCount,
    required this.minNodeCount,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'maxNodeCount': maxNodeCount,
      'minNodeCount': minNodeCount,
    };
  }

  factory NodeConfigResponse.fromMap(Map<String, dynamic> map) {
    return NodeConfigResponse(
      maxNodeCount: pulumi.Input.fromValue(map['maxNodeCount'] as int),
      minNodeCount: pulumi.Input.fromValue(map['minNodeCount'] as int),
    );
  }
}

