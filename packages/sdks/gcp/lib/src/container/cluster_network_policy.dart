// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ClusterNetworkPolicy {
  /// Whether network policy is enabled on the cluster.
  final pulumi.Input<bool> enabled;
  /// The selected network policy provider. Defaults to PROVIDER_UNSPECIFIED.
  final pulumi.Input<String>? provider;

  /// Creates a new [ClusterNetworkPolicy].
  /// [enabled] Whether network policy is enabled on the cluster.
  /// [provider] The selected network policy provider. Defaults to PROVIDER_UNSPECIFIED.
  ClusterNetworkPolicy({
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
      enabled: (map['enabled'] as bool).input(),
      provider: map['provider'] == null ? null : (map['provider']! as String).input(),
    );
  }
}

