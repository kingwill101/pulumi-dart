// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Defines the SAP Gateway Server properties.
class GatewayServerPropertiesResponse {
  /// Defines the health of SAP Instances.
  final pulumi.Input<String> health;
  /// Gateway Port.
  final pulumi.Input<double> port;

  /// Creates a new [GatewayServerPropertiesResponse].
  /// [health] Defines the health of SAP Instances.
  /// [port] Gateway Port.
  GatewayServerPropertiesResponse({
    required this.health,
    required this.port,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'health': health,
      'port': port,
    };
  }

  factory GatewayServerPropertiesResponse.fromMap(Map<String, dynamic> map) {
    return GatewayServerPropertiesResponse(
      health: pulumi.Input.fromValue(map['health'] as String),
      port: pulumi.Input.fromValue(map['port'] as double),
    );
  }
}

