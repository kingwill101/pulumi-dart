// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class KubernetesClusterNetworkProfileAdvancedNetworking {
  /// Is observability enabled? Defaults to `false`.
  final pulumi.Input<bool>? observabilityEnabled;
  /// Is security enabled? Defaults to `false`.
  final pulumi.Input<bool>? securityEnabled;

  /// Creates a new [KubernetesClusterNetworkProfileAdvancedNetworking].
  /// [observabilityEnabled] Is observability enabled? Defaults to `false`.
  /// [securityEnabled] Is security enabled? Defaults to `false`.
  KubernetesClusterNetworkProfileAdvancedNetworking({
    this.observabilityEnabled,
    this.securityEnabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'observabilityEnabled': ?observabilityEnabled,
      'securityEnabled': ?securityEnabled,
    };
  }

  factory KubernetesClusterNetworkProfileAdvancedNetworking.fromMap(Map<String, dynamic> map) {
    return KubernetesClusterNetworkProfileAdvancedNetworking(
      observabilityEnabled: map['observabilityEnabled'] == null ? null : (map['observabilityEnabled'] as bool).input(),
      securityEnabled: map['securityEnabled'] == null ? null : (map['securityEnabled'] as bool).input(),
    );
  }
}

