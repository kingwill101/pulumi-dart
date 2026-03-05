// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// A network endpoint over which a TPU worker can be reached.
class NetworkEndpointResponse {
  /// The IP address of this network endpoint.
  final pulumi.Input<String> ipAddress;
  /// The port of this network endpoint.
  final pulumi.Input<int> port;

  /// Creates a new [NetworkEndpointResponse].
  /// [ipAddress] The IP address of this network endpoint.
  /// [port] The port of this network endpoint.
  NetworkEndpointResponse({
    required this.ipAddress,
    required this.port,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ipAddress': ipAddress,
      'port': port,
    };
  }

  factory NetworkEndpointResponse.fromMap(Map<String, dynamic> map) {
    return NetworkEndpointResponse(
      ipAddress: pulumi.Input.fromValue(map['ipAddress'] as String),
      port: pulumi.Input.fromValue(map['port'] as int),
    );
  }
}

