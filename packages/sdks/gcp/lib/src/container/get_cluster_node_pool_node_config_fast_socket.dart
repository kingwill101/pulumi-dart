// ignore_for_file: unused_element, unnecessary_cast


class GetClusterNodePoolNodeConfigFastSocket {
  /// Whether or not NCCL Fast Socket is enabled
  final bool enabled;

  /// Creates a new [GetClusterNodePoolNodeConfigFastSocket].
  /// [enabled] Whether or not NCCL Fast Socket is enabled
  GetClusterNodePoolNodeConfigFastSocket({
    required this.enabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enabled': enabled,
    };
  }

  factory GetClusterNodePoolNodeConfigFastSocket.fromMap(Map<String, dynamic> map) {
    return GetClusterNodePoolNodeConfigFastSocket(
      enabled: map['enabled'] as bool,
    );
  }
}

