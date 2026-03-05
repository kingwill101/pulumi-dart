// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class NodePoolNodeConfigFastSocket {
  /// Whether or not NCCL Fast Socket is enabled
  final pulumi.Input<bool> enabled;

  /// Creates a new [NodePoolNodeConfigFastSocket].
  /// [enabled] Whether or not NCCL Fast Socket is enabled
  NodePoolNodeConfigFastSocket({
    required this.enabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enabled': enabled,
    };
  }

  factory NodePoolNodeConfigFastSocket.fromMap(Map<String, dynamic> map) {
    return NodePoolNodeConfigFastSocket(
      enabled: pulumi.Input.fromValue(map['enabled'] as bool),
    );
  }
}

