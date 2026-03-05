// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Customer end point to store and retrieve data during a contact with the spacecraft.
class EndPointResponse {
  /// Name of an end point.
  final pulumi.Input<String> endPointName;
  /// IP Address (IPv4).
  final pulumi.Input<String> ipAddress;
  /// TCP port to listen on to receive data.
  final pulumi.Input<String> port;
  /// Protocol either UDP or TCP.
  final pulumi.Input<String> protocol;

  /// Creates a new [EndPointResponse].
  /// [endPointName] Name of an end point.
  /// [ipAddress] IP Address (IPv4).
  /// [port] TCP port to listen on to receive data.
  /// [protocol] Protocol either UDP or TCP.
  EndPointResponse({
    required this.endPointName,
    required this.ipAddress,
    required this.port,
    required this.protocol,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'endPointName': endPointName,
      'ipAddress': ipAddress,
      'port': port,
      'protocol': protocol,
    };
  }

  factory EndPointResponse.fromMap(Map<String, dynamic> map) {
    return EndPointResponse(
      endPointName: pulumi.Input.fromValue(map['endPointName'] as String),
      ipAddress: pulumi.Input.fromValue(map['ipAddress'] as String),
      port: pulumi.Input.fromValue(map['port'] as String),
      protocol: pulumi.Input.fromValue(map['protocol'] as String),
    );
  }
}

