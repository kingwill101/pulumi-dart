// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetClusterNodePoolNodeConfigFastSocket {
  /// Whether or not NCCL Fast Socket is enabled
  final pulumi.Input<bool> enabled;

  /// Creates a new [GetClusterNodePoolNodeConfigFastSocket].
  /// [enabled] Whether or not NCCL Fast Socket is enabled
  const GetClusterNodePoolNodeConfigFastSocket({
    required this.enabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enabled': enabled,
    };
  }

  factory GetClusterNodePoolNodeConfigFastSocket.fromMap(Map<String, dynamic> map) {
    return GetClusterNodePoolNodeConfigFastSocket(
      enabled: pulumi.Input.fromValue(map['enabled'] as bool),
    );
  }
}

