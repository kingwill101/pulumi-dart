// ignore_for_file: unused_element, unnecessary_cast


/// Configuration of Shielded Nodes feature.
class ShieldedNodesResponseContainerV1beta1 {
  /// Whether Shielded Nodes features are enabled on all nodes in this cluster.
  final bool enabled;

  /// Creates a new [ShieldedNodesResponseContainerV1beta1].
  /// [enabled] Whether Shielded Nodes features are enabled on all nodes in this cluster.
  ShieldedNodesResponseContainerV1beta1({
    required this.enabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enabled': enabled,
    };
  }

  factory ShieldedNodesResponseContainerV1beta1.fromMap(Map<String, dynamic> map) {
    return ShieldedNodesResponseContainerV1beta1(
      enabled: map['enabled'] as bool,
    );
  }
}

