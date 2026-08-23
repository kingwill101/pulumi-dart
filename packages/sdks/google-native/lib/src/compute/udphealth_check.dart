// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class UDPHealthCheck {
  /// The UDP port number to which the health check prober sends packets. Valid values are 1 through 65535.
  final pulumi.Input<int>? port;
  /// Not supported.
  final pulumi.Input<String>? portName;
  /// Raw data of request to send in payload of UDP packet. It is an error if this is empty. The request data can only be ASCII.
  final pulumi.Input<String>? request;
  /// The bytes to match against the beginning of the response data. It is an error if this is empty. The response data can only be ASCII.
  final pulumi.Input<String>? response;

  /// Creates a new [UDPHealthCheck].
  /// [port] The UDP port number to which the health check prober sends packets. Valid values are 1 through 65535.
  /// [portName] Not supported.
  /// [request] Raw data of request to send in payload of UDP packet. It is an error if this is empty. The request data can only be ASCII.
  /// [response] The bytes to match against the beginning of the response data. It is an error if this is empty. The response data can only be ASCII.
  const UDPHealthCheck({
    this.port,
    this.portName,
    this.request,
    this.response,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'port': ?port,
      'portName': ?portName,
      'request': ?request,
      'response': ?response,
    };
  }

  factory UDPHealthCheck.fromMap(Map<String, dynamic> map) {
    return UDPHealthCheck(
      port: (() { final guardedValue = map['port']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      portName: (() { final guardedValue = map['portName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      request: (() { final guardedValue = map['request']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      response: (() { final guardedValue = map['response']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
