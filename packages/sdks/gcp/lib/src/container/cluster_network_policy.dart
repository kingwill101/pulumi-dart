// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ClusterNetworkPolicy {
  /// Whether network policy is enabled on the cluster.
  final pulumi.Input<bool> enabled;
  /// The selected network policy provider. Defaults to PROVIDER_UNSPECIFIED.
  final pulumi.Input<String?>? provider;

  /// Creates a new [ClusterNetworkPolicy].
  /// [enabled] Whether network policy is enabled on the cluster.
  /// [provider] The selected network policy provider. Defaults to PROVIDER_UNSPECIFIED.
  const ClusterNetworkPolicy({
    required this.enabled,
    this.provider,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enabled': enabled,
      'provider': ?provider,
    };
  }

  factory ClusterNetworkPolicy.fromMap(Map<String, dynamic> map) {
    return ClusterNetworkPolicy(
      enabled: pulumi.Input.fromValue(map['enabled'] as bool),
      provider: (() { final guardedValue = map['provider']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
