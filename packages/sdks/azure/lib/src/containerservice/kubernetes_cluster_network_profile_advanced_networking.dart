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

  factory KubernetesClusterNetworkProfileAdvancedNetworking.fromMap(
    Map<String, dynamic> map,
  ) {
    return KubernetesClusterNetworkProfileAdvancedNetworking(
      observabilityEnabled: (() {
        final guardedValue = map['observabilityEnabled'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      securityEnabled: (() {
        final guardedValue = map['securityEnabled'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
    );
  }
}
