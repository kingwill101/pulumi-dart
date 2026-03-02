// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Defines the SAP message server properties.
class MessageServerPropertiesResponse {
  /// Defines the health of SAP Instances.
  final pulumi.Input<String> health;
  /// message server SAP Hostname.
  final pulumi.Input<String> hostname;
  /// message server HTTP Port.
  final pulumi.Input<double> httpPort;
  /// message server HTTPS Port.
  final pulumi.Input<double> httpsPort;
  /// message server internal MS port.
  final pulumi.Input<double> internalMsPort;
  /// message server IP Address.
  final pulumi.Input<String> ipAddress;
  /// message server port.
  final pulumi.Input<double> msPort;

  /// Creates a new [MessageServerPropertiesResponse].
  /// [health] Defines the health of SAP Instances.
  /// [hostname] message server SAP Hostname.
  /// [httpPort] message server HTTP Port.
  /// [httpsPort] message server HTTPS Port.
  /// [internalMsPort] message server internal MS port.
  /// [ipAddress] message server IP Address.
  /// [msPort] message server port.
  MessageServerPropertiesResponse({
    required this.health,
    required this.hostname,
    required this.httpPort,
    required this.httpsPort,
    required this.internalMsPort,
    required this.ipAddress,
    required this.msPort,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'health': health,
      'hostname': hostname,
      'httpPort': httpPort,
      'httpsPort': httpsPort,
      'internalMsPort': internalMsPort,
      'ipAddress': ipAddress,
      'msPort': msPort,
    };
  }

  factory MessageServerPropertiesResponse.fromMap(Map<String, dynamic> map) {
    return MessageServerPropertiesResponse(
      health: (map['health'] as String).input(),
      hostname: (map['hostname'] as String).input(),
      httpPort: (map['httpPort'] as double).input(),
      httpsPort: (map['httpsPort'] as double).input(),
      internalMsPort: (map['internalMsPort'] as double).input(),
      ipAddress: (map['ipAddress'] as String).input(),
      msPort: (map['msPort'] as double).input(),
    );
  }
}

