// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetHealthCheckSslHealthCheck {
  /// The TCP port number for the SSL health check request.
  /// The default value is 443.
  final pulumi.Input<int> port;
  /// Port name as defined in InstanceGroup#NamedPort#name. If both port and
  /// port_name are defined, port takes precedence.
  final pulumi.Input<String> portName;
  /// Specifies how port is selected for health checking, can be one of the
  /// following values:
  ///
  /// * 'USE_FIXED_PORT': The port number in 'port' is used for health checking.
  ///
  /// * 'USE_NAMED_PORT': The 'portName' is used for health checking.
  ///
  /// * 'USE_SERVING_PORT': For NetworkEndpointGroup, the port specified for each
  /// network endpoint is used for health checking. For other backends, the
  /// port or named port specified in the Backend Service is used for health
  /// checking.
  ///
  /// If not specified, SSL health check follows behavior specified in 'port' and
  /// 'portName' fields. Possible values: ["USE_FIXED_PORT", "USE_NAMED_PORT", "USE_SERVING_PORT"]
  final pulumi.Input<String> portSpecification;
  /// Specifies the type of proxy header to append before sending data to the
  /// backend. Default value: "NONE" Possible values: ["NONE", "PROXY_V1"]
  final pulumi.Input<String> proxyHeader;
  /// The application data to send once the SSL connection has been
  /// established (default value is empty). If both request and response are
  /// empty, the connection establishment alone will indicate health. The request
  /// data can only be ASCII.
  final pulumi.Input<String> request;
  /// The bytes to match against the beginning of the response data. If left empty
  /// (the default value), any response will indicate health. The response data
  /// can only be ASCII.
  final pulumi.Input<String> response;

  /// Creates a new [GetHealthCheckSslHealthCheck].
  /// [port] The TCP port number for the SSL health check request.
  /// [portName] Port name as defined in InstanceGroup#NamedPort#name. If both port and
  /// [portSpecification] Specifies how port is selected for health checking, can be one of the
  /// [proxyHeader] Specifies the type of proxy header to append before sending data to the
  /// [request] The application data to send once the SSL connection has been
  /// [response] The bytes to match against the beginning of the response data. If left empty
  GetHealthCheckSslHealthCheck({
    required this.port,
    required this.portName,
    required this.portSpecification,
    required this.proxyHeader,
    required this.request,
    required this.response,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'port': port,
      'portName': portName,
      'portSpecification': portSpecification,
      'proxyHeader': proxyHeader,
      'request': request,
      'response': response,
    };
  }

  factory GetHealthCheckSslHealthCheck.fromMap(Map<String, dynamic> map) {
    return GetHealthCheckSslHealthCheck(
      port: (map['port'] as int).input(),
      portName: (map['portName'] as String).input(),
      portSpecification: (map['portSpecification'] as String).input(),
      proxyHeader: (map['proxyHeader'] as String).input(),
      request: (map['request'] as String).input(),
      response: (map['response'] as String).input(),
    );
  }
}

