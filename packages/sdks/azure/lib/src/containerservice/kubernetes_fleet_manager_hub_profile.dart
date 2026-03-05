// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class KubernetesFleetManagerHubProfile {
  final pulumi.Input<String> dnsPrefix;
  final pulumi.Input<String>? fqdn;
  final pulumi.Input<String>? kubernetesVersion;

  /// Creates a new [KubernetesFleetManagerHubProfile].
  /// [dnsPrefix] Required.
  /// [fqdn] Optional.
  /// [kubernetesVersion] Optional.
  KubernetesFleetManagerHubProfile({
    required this.dnsPrefix,
    this.fqdn,
    this.kubernetesVersion,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dnsPrefix': dnsPrefix,
      'fqdn': ?fqdn,
      'kubernetesVersion': ?kubernetesVersion,
    };
  }

  factory KubernetesFleetManagerHubProfile.fromMap(Map<String, dynamic> map) {
    return KubernetesFleetManagerHubProfile(
      dnsPrefix: pulumi.Input.fromValue(map['dnsPrefix'] as String),
      fqdn: (() { final guardedValue = map['fqdn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      kubernetesVersion: (() { final guardedValue = map['kubernetesVersion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

