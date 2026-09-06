// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Defines the SAP Enqueue Server properties.
class EnqueueServerPropertiesResponse {
  /// Defines the health of SAP Instances.
  final pulumi.Input<String> health;
  /// Enqueue Server SAP Hostname.
  final pulumi.Input<String> hostname;
  /// Enqueue Server SAP IP Address.
  final pulumi.Input<String> ipAddress;
  /// Enqueue Server Port.
  final pulumi.Input<double> port;

  /// Creates a new [EnqueueServerPropertiesResponse].
  /// [health] Defines the health of SAP Instances.
  /// [hostname] Enqueue Server SAP Hostname.
  /// [ipAddress] Enqueue Server SAP IP Address.
  /// [port] Enqueue Server Port.
  const EnqueueServerPropertiesResponse({
    required this.health,
    required this.hostname,
    required this.ipAddress,
    required this.port,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'health': health,
      'hostname': hostname,
      'ipAddress': ipAddress,
      'port': port,
    };
  }

  factory EnqueueServerPropertiesResponse.fromMap(Map<String, dynamic> map) {
    return EnqueueServerPropertiesResponse(
      health: pulumi.Input.fromValue(map['health'] as String),
      hostname: pulumi.Input.fromValue(map['hostname'] as String),
      ipAddress: pulumi.Input.fromValue(map['ipAddress'] as String),
      port: pulumi.Input.fromValue((map['port'] as num).toDouble()),
    );
  }
}
