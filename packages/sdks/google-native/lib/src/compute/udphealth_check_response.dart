// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class UDPHealthCheckResponse {
  /// The UDP port number to which the health check prober sends packets. Valid values are 1 through 65535.
  final pulumi.Input<int> port;
  /// Not supported.
  final pulumi.Input<String> portName;
  /// Raw data of request to send in payload of UDP packet. It is an error if this is empty. The request data can only be ASCII.
  final pulumi.Input<String> request;
  /// The bytes to match against the beginning of the response data. It is an error if this is empty. The response data can only be ASCII.
  final pulumi.Input<String> response;

  /// Creates a new [UDPHealthCheckResponse].
  /// [port] The UDP port number to which the health check prober sends packets. Valid values are 1 through 65535.
  /// [portName] Not supported.
  /// [request] Raw data of request to send in payload of UDP packet. It is an error if this is empty. The request data can only be ASCII.
  /// [response] The bytes to match against the beginning of the response data. It is an error if this is empty. The response data can only be ASCII.
  UDPHealthCheckResponse({
    required this.port,
    required this.portName,
    required this.request,
    required this.response,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'port': port,
      'portName': portName,
      'request': request,
      'response': response,
    };
  }

  factory UDPHealthCheckResponse.fromMap(Map<String, dynamic> map) {
    return UDPHealthCheckResponse(
      port: (map['port'] as int).input(),
      portName: (map['portName'] as String).input(),
      request: (map['request'] as String).input(),
      response: (map['response'] as String).input(),
    );
  }
}

