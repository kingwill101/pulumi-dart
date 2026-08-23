// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'network_policy_provider_container_v1beta1.dart';

/// Configuration options for the NetworkPolicy feature. https://kubernetes.io/docs/concepts/services-networking/networkpolicies/
class NetworkPolicyContainerV1beta1 {
  /// Whether network policy is enabled on the cluster.
  final pulumi.Input<bool>? enabled;
  /// The selected network policy provider.
  final pulumi.Input<NetworkPolicyProviderContainerV1beta1>? provider;

  /// Creates a new [NetworkPolicyContainerV1beta1].
  /// [enabled] Whether network policy is enabled on the cluster.
  /// [provider] The selected network policy provider.
  const NetworkPolicyContainerV1beta1({
    this.enabled,
    this.provider,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enabled': ?enabled,
      'provider': ?pulumi.Input.mapOptionalInputValue<NetworkPolicyProviderContainerV1beta1, String>(provider, (value) => value.wireValue),
    };
  }

  factory NetworkPolicyContainerV1beta1.fromMap(Map<String, dynamic> map) {
    return NetworkPolicyContainerV1beta1(
      enabled: (() { final guardedValue = map['enabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      provider: (() { final guardedValue = map['provider']; if (guardedValue == null) return null; return pulumi.Input.fromValue(NetworkPolicyProviderContainerV1beta1.fromValue(guardedValue as String)); })(),
    );
  }
}
