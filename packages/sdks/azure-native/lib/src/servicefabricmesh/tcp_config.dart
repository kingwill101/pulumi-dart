// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'gateway_destination.dart';

/// Describes the tcp configuration for external connectivity for this network.
class TcpConfig {
  /// Describes destination endpoint for routing traffic.
  final pulumi.Input<GatewayDestination> destination;

  /// tcp gateway config name.
  final pulumi.Input<String> name;

  /// Specifies the port at which the service endpoint below needs to be exposed.
  final pulumi.Input<int> port;

  /// Creates a new [TcpConfig].
  /// [destination] Describes destination endpoint for routing traffic.
  /// [name] tcp gateway config name.
  /// [port] Specifies the port at which the service endpoint below needs to be exposed.
  TcpConfig({
    required this.destination,
    required this.name,
    required this.port,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'destination':
          pulumi.Input.mapInputValue<GatewayDestination, Map<String, dynamic>>(
            destination,
            (value) => value.toMap(),
          ),
      'name': name,
      'port': port,
    };
  }

  factory TcpConfig.fromMap(Map<String, dynamic> map) {
    return TcpConfig(
      destination: pulumi.Input.fromValue(
        GatewayDestination.fromMap(
          (map['destination']! as Map).cast<String, dynamic>(),
        ),
      ),
      name: pulumi.Input.fromValue(map['name'] as String),
      port: pulumi.Input.fromValue(map['port'] as int),
    );
  }
}
