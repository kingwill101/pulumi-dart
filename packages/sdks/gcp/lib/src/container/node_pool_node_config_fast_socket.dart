// ignore_for_file: unused_element, unnecessary_cast


class NodePoolNodeConfigFastSocket {
  /// Whether or not NCCL Fast Socket is enabled
  final bool enabled;

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
      enabled: map['enabled'] as bool,
    );
  }
}

