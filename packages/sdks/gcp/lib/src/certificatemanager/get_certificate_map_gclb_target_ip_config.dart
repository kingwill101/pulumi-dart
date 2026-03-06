// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetCertificateMapGclbTargetIpConfig {
  /// An external IP address
  final pulumi.Input<String> ipAddress;
  /// A list of ports
  final pulumi.Input<List<int>> ports;

  /// Creates a new [GetCertificateMapGclbTargetIpConfig].
  /// [ipAddress] An external IP address
  /// [ports] A list of ports
  const GetCertificateMapGclbTargetIpConfig({
    required this.ipAddress,
    required this.ports,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ipAddress': ipAddress,
      'ports': ports,
    };
  }

  factory GetCertificateMapGclbTargetIpConfig.fromMap(Map<String, dynamic> map) {
    return GetCertificateMapGclbTargetIpConfig(
      ipAddress: pulumi.Input.fromValue(map['ipAddress'] as String),
      ports: pulumi.Input.fromValue((map['ports'] as List).cast<int>()),
    );
  }
}

