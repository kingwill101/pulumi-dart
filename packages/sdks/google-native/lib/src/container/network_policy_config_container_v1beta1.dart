// ignore_for_file: unused_element, unnecessary_cast


/// Configuration for NetworkPolicy. This only tracks whether the addon is enabled or not on the Master, it does not track whether network policy is enabled for the nodes.
class NetworkPolicyConfigContainerV1beta1 {
  /// Whether NetworkPolicy is enabled for this cluster.
  final bool? disabled;

  /// Creates a new [NetworkPolicyConfigContainerV1beta1].
  /// [disabled] Whether NetworkPolicy is enabled for this cluster.
  NetworkPolicyConfigContainerV1beta1({
    this.disabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'disabled': ?disabled,
    };
  }

  factory NetworkPolicyConfigContainerV1beta1.fromMap(Map<String, dynamic> map) {
    return NetworkPolicyConfigContainerV1beta1(
      disabled: map['disabled'] == null ? null : map['disabled'] as bool,
    );
  }
}

