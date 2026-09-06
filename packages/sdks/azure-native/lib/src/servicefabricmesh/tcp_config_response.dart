// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'gateway_destination_response.dart';

/// Describes the tcp configuration for external connectivity for this network.
class TcpConfigResponse {
  /// Describes destination endpoint for routing traffic.
  final pulumi.Input<GatewayDestinationResponse> destination;
  /// tcp gateway config name.
  final pulumi.Input<String> name;
  /// Specifies the port at which the service endpoint below needs to be exposed.
  final pulumi.Input<int> port;

  /// Creates a new [TcpConfigResponse].
  /// [destination] Describes destination endpoint for routing traffic.
  /// [name] tcp gateway config name.
  /// [port] Specifies the port at which the service endpoint below needs to be exposed.
  const TcpConfigResponse({
    required this.destination,
    required this.name,
    required this.port,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'destination': pulumi.Input.mapInputValue<GatewayDestinationResponse, Map<String, dynamic>>(destination, (value) => value.toMap()),
      'name': name,
      'port': port,
    };
  }

  factory TcpConfigResponse.fromMap(Map<String, dynamic> map) {
    return TcpConfigResponse(
      destination: pulumi.Input.fromValue(GatewayDestinationResponse.fromMap((map['destination']! as Map).cast<String, dynamic>())),
      name: pulumi.Input.fromValue(map['name'] as String),
      port: pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(map['port'])),
    );
  }
}
