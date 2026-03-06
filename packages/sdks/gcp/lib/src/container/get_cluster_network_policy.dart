// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetClusterNetworkPolicy {
  /// Whether network policy is enabled on the cluster.
  final pulumi.Input<bool> enabled;
  /// The selected network policy provider.
  final pulumi.Input<String> provider;

  /// Creates a new [GetClusterNetworkPolicy].
  /// [enabled] Whether network policy is enabled on the cluster.
  /// [provider] The selected network policy provider.
  const GetClusterNetworkPolicy({
    required this.enabled,
    required this.provider,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enabled': enabled,
      'provider': provider,
    };
  }

  factory GetClusterNetworkPolicy.fromMap(Map<String, dynamic> map) {
    return GetClusterNetworkPolicy(
      enabled: pulumi.Input.fromValue(map['enabled'] as bool),
      provider: pulumi.Input.fromValue(map['provider'] as String),
    );
  }
}

