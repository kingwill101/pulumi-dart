// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Configuration options for the NetworkPolicy feature. https://kubernetes.io/docs/concepts/services-networking/networkpolicies/
class NetworkPolicyResponseContainerV1beta1 {
  /// Whether network policy is enabled on the cluster.
  final pulumi.Input<bool> enabled;

  /// The selected network policy provider.
  final pulumi.Input<String> provider;

  /// Creates a new [NetworkPolicyResponseContainerV1beta1].
  /// [enabled] Whether network policy is enabled on the cluster.
  /// [provider] The selected network policy provider.
  NetworkPolicyResponseContainerV1beta1({
    required this.enabled,
    required this.provider,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'enabled': enabled, 'provider': provider};
  }

  factory NetworkPolicyResponseContainerV1beta1.fromMap(
    Map<String, dynamic> map,
  ) {
    return NetworkPolicyResponseContainerV1beta1(
      enabled: pulumi.Input.fromValue(map['enabled'] as bool),
      provider: pulumi.Input.fromValue(map['provider'] as String),
    );
  }
}
