// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GoldengateDeploymentPropertiesIngressIp {
  /// The ingress IP.
  final pulumi.Input<String>? ingressIpAddress;

  /// Creates a new [GoldengateDeploymentPropertiesIngressIp].
  /// [ingressIpAddress] The ingress IP.
  const GoldengateDeploymentPropertiesIngressIp({
    this.ingressIpAddress,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ingressIpAddress': ?ingressIpAddress,
    };
  }

  factory GoldengateDeploymentPropertiesIngressIp.fromMap(Map<String, dynamic> map) {
    return GoldengateDeploymentPropertiesIngressIp(
      ingressIpAddress: (() { final guardedValue = map['ingressIpAddress']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
