// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class CertificateMapGclbTargetIpConfig {
  /// An external IP address
  final pulumi.Input<String>? ipAddress;
  /// A list of ports
  final pulumi.Input<List<int>>? ports;

  /// Creates a new [CertificateMapGclbTargetIpConfig].
  /// [ipAddress] An external IP address
  /// [ports] A list of ports
  CertificateMapGclbTargetIpConfig({
    this.ipAddress,
    this.ports,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ipAddress': ?ipAddress,
      'ports': ?ports,
    };
  }

  factory CertificateMapGclbTargetIpConfig.fromMap(Map<String, dynamic> map) {
    return CertificateMapGclbTargetIpConfig(
      ipAddress: (() { final guardedValue = map['ipAddress']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      ports: (() { final guardedValue = map['ports']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<int>()); })(),
    );
  }
}

