// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Defines IP configuration where this Certificate Map is serving.
class IpConfigResponse {
  /// An external IP address.
  final pulumi.Input<String> ipAddress;
  /// Ports.
  final pulumi.Input<List<int>> ports;

  /// Creates a new [IpConfigResponse].
  /// [ipAddress] An external IP address.
  /// [ports] Ports.
  IpConfigResponse({
    required this.ipAddress,
    required this.ports,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ipAddress': ipAddress,
      'ports': ports,
    };
  }

  factory IpConfigResponse.fromMap(Map<String, dynamic> map) {
    return IpConfigResponse(
      ipAddress: (map['ipAddress'] as String).input(),
      ports: ((map['ports'] as List).cast<int>()).input(),
    );
  }
}

