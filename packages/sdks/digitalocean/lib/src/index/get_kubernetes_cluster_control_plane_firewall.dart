// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetKubernetesClusterControlPlaneFirewall {
  final pulumi.Input<List<String>> allowedAddresses;
  final pulumi.Input<bool> enabled;

  /// Creates a new [GetKubernetesClusterControlPlaneFirewall].
  /// [allowedAddresses] Required.
  /// [enabled] Required.
  GetKubernetesClusterControlPlaneFirewall({
    required this.allowedAddresses,
    required this.enabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allowedAddresses': allowedAddresses,
      'enabled': enabled,
    };
  }

  factory GetKubernetesClusterControlPlaneFirewall.fromMap(Map<String, dynamic> map) {
    return GetKubernetesClusterControlPlaneFirewall(
      allowedAddresses: ((map['allowedAddresses'] as List).cast<String>()).input(),
      enabled: (map['enabled'] as bool).input(),
    );
  }
}

