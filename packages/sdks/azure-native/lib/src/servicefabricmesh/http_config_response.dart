// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'http_host_config_response.dart';

/// Describes the http configuration for external connectivity for this network.
class HttpConfigResponse {
  /// description for routing.
  final pulumi.Input<List<HttpHostConfigResponse>> hosts;
  /// http gateway config name.
  final pulumi.Input<String> name;
  /// Specifies the port at which the service endpoint below needs to be exposed.
  final pulumi.Input<int> port;

  /// Creates a new [HttpConfigResponse].
  /// [hosts] description for routing.
  /// [name] http gateway config name.
  /// [port] Specifies the port at which the service endpoint below needs to be exposed.
  const HttpConfigResponse({
    required this.hosts,
    required this.name,
    required this.port,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'hosts': pulumi.Input.mapInputValue<List<HttpHostConfigResponse>, List<Map<String, dynamic>>>(hosts, (value) => pulumi.Input.encodeList<HttpHostConfigResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'name': name,
      'port': port,
    };
  }

  factory HttpConfigResponse.fromMap(Map<String, dynamic> map) {
    return HttpConfigResponse(
      hosts: pulumi.Input.fromValue(pulumi.Input.decodeList<HttpHostConfigResponse>(map['hosts']!, (value) => HttpHostConfigResponse.fromMap((value as Map).cast<String, dynamic>()))),
      name: pulumi.Input.fromValue(map['name'] as String),
      port: pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(map['port'])),
    );
  }
}
