// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Configuration for NetworkPolicy. This only tracks whether the addon is enabled or not on the Master, it does not track whether network policy is enabled for the nodes.
class NetworkPolicyConfigResponseContainerV1beta1 {
  /// Whether NetworkPolicy is enabled for this cluster.
  final pulumi.Input<bool> disabled;

  /// Creates a new [NetworkPolicyConfigResponseContainerV1beta1].
  /// [disabled] Whether NetworkPolicy is enabled for this cluster.
  const NetworkPolicyConfigResponseContainerV1beta1({
    required this.disabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'disabled': disabled,
    };
  }

  factory NetworkPolicyConfigResponseContainerV1beta1.fromMap(Map<String, dynamic> map) {
    return NetworkPolicyConfigResponseContainerV1beta1(
      disabled: pulumi.Input.fromValue(map['disabled'] as bool),
    );
  }
}

