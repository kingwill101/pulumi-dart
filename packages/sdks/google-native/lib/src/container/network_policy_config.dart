// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Configuration for NetworkPolicy. This only tracks whether the addon is enabled or not on the Master, it does not track whether network policy is enabled for the nodes.
class NetworkPolicyConfig {
  /// Whether NetworkPolicy is enabled for this cluster.
  final pulumi.Input<bool>? disabled;

  /// Creates a new [NetworkPolicyConfig].
  /// [disabled] Whether NetworkPolicy is enabled for this cluster.
  NetworkPolicyConfig({
    this.disabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'disabled': ?disabled,
    };
  }

  factory NetworkPolicyConfig.fromMap(Map<String, dynamic> map) {
    return NetworkPolicyConfig(
      disabled: map['disabled'] == null ? null : (map['disabled'] as bool).input(),
    );
  }
}

