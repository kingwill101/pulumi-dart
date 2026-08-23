// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetHealthCheckHttpHealthCheck {
  /// The value of the host header in the HTTP health check request.
  /// If left empty (default value), the public IP on behalf of which this health
  /// check is performed will be used.
  final pulumi.Input<String> host;
  /// The TCP port number for the HTTP health check request.
  /// The default value is 80.
  final pulumi.Input<int> port;
  /// Port name as defined in InstanceGroup#NamedPort#name. If both port and
  /// portName are defined, port takes precedence.
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
  /// If not specified, HTTP health check follows behavior specified in 'port' and
  /// 'portName' fields. Possible values: ["USE_FIXED_PORT", "USE_NAMED_PORT", "USE_SERVING_PORT"]
  final pulumi.Input<String> portSpecification;
  /// Specifies the type of proxy header to append before sending data to the
  /// backend. Default value: "NONE" Possible values: ["NONE", "PROXY_V1"]
  final pulumi.Input<String> proxyHeader;
  /// The request path of the HTTP health check request.
  /// The default value is /.
  final pulumi.Input<String> requestPath;
  /// The bytes to match against the beginning of the response data. If left empty
  /// (the default value), any response will indicate health. The response data
  /// can only be ASCII.
  final pulumi.Input<String> response;

  /// Creates a new [GetHealthCheckHttpHealthCheck].
  /// [host] The value of the host header in the HTTP health check request.
  /// [port] The TCP port number for the HTTP health check request.
  /// [portName] Port name as defined in InstanceGroup#NamedPort#name. If both port and
  /// [portSpecification] Specifies how port is selected for health checking, can be one of the
  /// [proxyHeader] Specifies the type of proxy header to append before sending data to the
  /// [requestPath] The request path of the HTTP health check request.
  /// [response] The bytes to match against the beginning of the response data. If left empty
  const GetHealthCheckHttpHealthCheck({
    required this.host,
    required this.port,
    required this.portName,
    required this.portSpecification,
    required this.proxyHeader,
    required this.requestPath,
    required this.response,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'host': host,
      'port': port,
      'portName': portName,
      'portSpecification': portSpecification,
      'proxyHeader': proxyHeader,
      'requestPath': requestPath,
      'response': response,
    };
  }

  factory GetHealthCheckHttpHealthCheck.fromMap(Map<String, dynamic> map) {
    return GetHealthCheckHttpHealthCheck(
      host: pulumi.Input.fromValue(map['host'] as String),
      port: pulumi.Input.fromValue(map['port'] as int),
      portName: pulumi.Input.fromValue(map['portName'] as String),
      portSpecification: pulumi.Input.fromValue(map['portSpecification'] as String),
      proxyHeader: pulumi.Input.fromValue(map['proxyHeader'] as String),
      requestPath: pulumi.Input.fromValue(map['requestPath'] as String),
      response: pulumi.Input.fromValue(map['response'] as String),
    );
  }
}
