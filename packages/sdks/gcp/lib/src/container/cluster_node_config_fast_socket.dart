// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ClusterNodeConfigFastSocket {
  /// Whether or not the NCCL Fast Socket is enabled
  final pulumi.Input<bool> enabled;

  /// Creates a new [ClusterNodeConfigFastSocket].
  /// [enabled] Whether or not the NCCL Fast Socket is enabled
  const ClusterNodeConfigFastSocket({
    required this.enabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enabled': enabled,
    };
  }

  factory ClusterNodeConfigFastSocket.fromMap(Map<String, dynamic> map) {
    return ClusterNodeConfigFastSocket(
      enabled: pulumi.Input.fromValue(map['enabled'] as bool),
    );
  }
}
