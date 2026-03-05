// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetClusterNodeConfigFastSocket {
  /// Whether or not NCCL Fast Socket is enabled
  final pulumi.Input<bool> enabled;

  /// Creates a new [GetClusterNodeConfigFastSocket].
  /// [enabled] Whether or not NCCL Fast Socket is enabled
  GetClusterNodeConfigFastSocket({
    required this.enabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enabled': enabled,
    };
  }

  factory GetClusterNodeConfigFastSocket.fromMap(Map<String, dynamic> map) {
    return GetClusterNodeConfigFastSocket(
      enabled: pulumi.Input.fromValue(map['enabled'] as bool),
    );
  }
}

