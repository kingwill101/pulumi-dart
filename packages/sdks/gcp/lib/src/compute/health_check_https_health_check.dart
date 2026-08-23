// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class HealthCheckHttpsHealthCheck {
  /// The value of the host header in the HTTPS health check request.
  /// If left empty (default value), the public IP on behalf of which this health
  /// check is performed will be used.
  final pulumi.Input<String>? host;
  /// The TCP port number for the HTTPS health check request.
  /// The default value is 443.
  final pulumi.Input<int>? port;
  /// Port name as defined in InstanceGroup#NamedPort#name. If both port and
  /// portName are defined, port takes precedence.
  final pulumi.Input<String>? portName;
  /// Specifies how port is selected for health checking, can be one of the
  /// following values:
  /// * `USE_FIXED_PORT`: The port number in `port` is used for health checking.
  /// * `USE_NAMED_PORT`: The `portName` is used for health checking.
  /// * `USE_SERVING_PORT`: For NetworkEndpointGroup, the port specified for each
  /// network endpoint is used for health checking. For other backends, the
  /// port or named port specified in the Backend Service is used for health
  /// checking.
  /// If not specified, HTTPS health check follows behavior specified in `port` and
  /// `portName` fields.
  /// Possible values are: `USE_FIXED_PORT`, `USE_NAMED_PORT`, `USE_SERVING_PORT`.
  final pulumi.Input<String>? portSpecification;
  /// Specifies the type of proxy header to append before sending data to the
  /// backend.
  /// Default value is `NONE`.
  /// Possible values are: `NONE`, `PROXY_V1`.
  final pulumi.Input<String>? proxyHeader;
  /// The request path of the HTTPS health check request.
  /// The default value is /.
  final pulumi.Input<String>? requestPath;
  /// The bytes to match against the beginning of the response data. If left empty
  /// (the default value), any response will indicate health. The response data
  /// can only be ASCII.
  final pulumi.Input<String>? response;

  /// Creates a new [HealthCheckHttpsHealthCheck].
  /// [host] The value of the host header in the HTTPS health check request.
  /// [port] The TCP port number for the HTTPS health check request.
  /// [portName] Port name as defined in InstanceGroup#NamedPort#name. If both port and
  /// [portSpecification] Specifies how port is selected for health checking, can be one of the
  /// [proxyHeader] Specifies the type of proxy header to append before sending data to the
  /// [requestPath] The request path of the HTTPS health check request.
  /// [response] The bytes to match against the beginning of the response data. If left empty
  const HealthCheckHttpsHealthCheck({
    this.host,
    this.port,
    this.portName,
    this.portSpecification,
    this.proxyHeader,
    this.requestPath,
    this.response,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'host': ?host,
      'port': ?port,
      'portName': ?portName,
      'portSpecification': ?portSpecification,
      'proxyHeader': ?proxyHeader,
      'requestPath': ?requestPath,
      'response': ?response,
    };
  }

  factory HealthCheckHttpsHealthCheck.fromMap(Map<String, dynamic> map) {
    return HealthCheckHttpsHealthCheck(
      host: (() { final guardedValue = map['host']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      port: (() { final guardedValue = map['port']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      portName: (() { final guardedValue = map['portName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      portSpecification: (() { final guardedValue = map['portSpecification']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      proxyHeader: (() { final guardedValue = map['proxyHeader']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      requestPath: (() { final guardedValue = map['requestPath']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      response: (() { final guardedValue = map['response']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
