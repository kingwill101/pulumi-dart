// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'network_policy_provider.dart';

/// Configuration options for the NetworkPolicy feature. https://kubernetes.io/docs/concepts/services-networking/networkpolicies/
class NetworkPolicy {
  /// Whether network policy is enabled on the cluster.
  final pulumi.Input<bool>? enabled;
  /// The selected network policy provider.
  final pulumi.Input<NetworkPolicyProvider>? provider;

  /// Creates a new [NetworkPolicy].
  /// [enabled] Whether network policy is enabled on the cluster.
  /// [provider] The selected network policy provider.
  const NetworkPolicy({
    this.enabled,
    this.provider,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enabled': ?enabled,
      'provider': ?pulumi.Input.mapOptionalInputValue<NetworkPolicyProvider, String>(provider, (value) => value.wireValue),
    };
  }

  factory NetworkPolicy.fromMap(Map<String, dynamic> map) {
    return NetworkPolicy(
      enabled: (() { final guardedValue = map['enabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      provider: (() { final guardedValue = map['provider']; if (guardedValue == null) return null; return pulumi.Input.fromValue(NetworkPolicyProvider.fromValue(guardedValue as String)); })(),
    );
  }
}
