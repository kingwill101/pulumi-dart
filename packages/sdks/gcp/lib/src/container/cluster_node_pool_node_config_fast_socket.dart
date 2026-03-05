// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ClusterNodePoolNodeConfigFastSocket {
  /// Whether or not the NCCL Fast Socket is enabled
  final pulumi.Input<bool> enabled;

  /// Creates a new [ClusterNodePoolNodeConfigFastSocket].
  /// [enabled] Whether or not the NCCL Fast Socket is enabled
  ClusterNodePoolNodeConfigFastSocket({
    required this.enabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enabled': enabled,
    };
  }

  factory ClusterNodePoolNodeConfigFastSocket.fromMap(Map<String, dynamic> map) {
    return ClusterNodePoolNodeConfigFastSocket(
      enabled: pulumi.Input.fromValue(map['enabled'] as bool),
    );
  }
}

