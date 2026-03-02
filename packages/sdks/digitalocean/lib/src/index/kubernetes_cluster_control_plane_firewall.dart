// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class KubernetesClusterControlPlaneFirewall {
  /// A list of addresses allowed (CIDR notation).
  final pulumi.Input<List<String>> allowedAddresses;
  /// Boolean flag whether the firewall should be enabled or not.
  final pulumi.Input<bool> enabled;

  /// Creates a new [KubernetesClusterControlPlaneFirewall].
  /// [allowedAddresses] A list of addresses allowed (CIDR notation).
  /// [enabled] Boolean flag whether the firewall should be enabled or not.
  KubernetesClusterControlPlaneFirewall({
    required this.allowedAddresses,
    required this.enabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allowedAddresses': allowedAddresses,
      'enabled': enabled,
    };
  }

  factory KubernetesClusterControlPlaneFirewall.fromMap(Map<String, dynamic> map) {
    return KubernetesClusterControlPlaneFirewall(
      allowedAddresses: ((map['allowedAddresses'] as List).cast<String>()).input(),
      enabled: (map['enabled'] as bool).input(),
    );
  }
}

