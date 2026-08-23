// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class SSLHealthCheckResponseComputeBeta {
  /// The TCP port number to which the health check prober sends packets. The default value is 443. Valid values are 1 through 65535.
  final pulumi.Input<int> port;
  /// Not supported.
  final pulumi.Input<String> portName;
  /// Specifies how a port is selected for health checking. Can be one of the following values: USE_FIXED_PORT: Specifies a port number explicitly using the port field in the health check. Supported by backend services for pass-through load balancers and backend services for proxy load balancers. Not supported by target pools. The health check supports all backends supported by the backend service provided the backend can be health checked. For example, GCE_VM_IP network endpoint groups, GCE_VM_IP_PORT network endpoint groups, and instance group backends. USE_NAMED_PORT: Not supported. USE_SERVING_PORT: Provides an indirect method of specifying the health check port by referring to the backend service. Only supported by backend services for proxy load balancers. Not supported by target pools. Not supported by backend services for pass-through load balancers. Supports all backends that can be health checked; for example, GCE_VM_IP_PORT network endpoint groups and instance group backends. For GCE_VM_IP_PORT network endpoint group backends, the health check uses the port number specified for each endpoint in the network endpoint group. For instance group backends, the health check uses the port number determined by looking up the backend service's named port in the instance group's list of named ports.
  final pulumi.Input<String> portSpecification;
  /// Specifies the type of proxy header to append before sending data to the backend, either NONE or PROXY_V1. The default is NONE.
  final pulumi.Input<String> proxyHeader;
  /// Instructs the health check prober to send this exact ASCII string, up to 1024 bytes in length, after establishing the TCP connection and SSL handshake.
  final pulumi.Input<String> request;
  /// Creates a content-based SSL health check. In addition to establishing a TCP connection and the TLS handshake, you can configure the health check to pass only when the backend sends this exact response ASCII string, up to 1024 bytes in length. For details, see: https://cloud.google.com/load-balancing/docs/health-check-concepts#criteria-protocol-ssl-tcp
  final pulumi.Input<String> response;

  /// Creates a new [SSLHealthCheckResponseComputeBeta].
  /// [port] The TCP port number to which the health check prober sends packets. The default value is 443. Valid values are 1 through 65535.
  /// [portName] Not supported.
  /// [portSpecification] Specifies how a port is selected for health checking. Can be one of the following values: USE_FIXED_PORT: Specifies a port number explicitly using the port field in the health check. Supported by backend services for pass-through load balancers and backend services for proxy load balancers. Not supported by target pools. The health check supports all backends supported by the backend service provided the backend can be health checked. For example, GCE_VM_IP network endpoint groups, GCE_VM_IP_PORT network endpoint groups, and instance group backends. USE_NAMED_PORT: Not supported. USE_SERVING_PORT: Provides an indirect method of specifying the health check port by referring to the backend service. Only supported by backend services for proxy load balancers. Not supported by target pools. Not supported by backend services for pass-through load balancers. Supports all backends that can be health checked; for example, GCE_VM_IP_PORT network endpoint groups and instance group backends. For GCE_VM_IP_PORT network endpoint group backends, the health check uses the port number specified for each endpoint in the network endpoint group. For instance group backends, the health check uses the port number determined by looking up the backend service's named port in the instance group's list of named ports.
  /// [proxyHeader] Specifies the type of proxy header to append before sending data to the backend, either NONE or PROXY_V1. The default is NONE.
  /// [request] Instructs the health check prober to send this exact ASCII string, up to 1024 bytes in length, after establishing the TCP connection and SSL handshake.
  /// [response] Creates a content-based SSL health check. In addition to establishing a TCP connection and the TLS handshake, you can configure the health check to pass only when the backend sends this exact response ASCII string, up to 1024 bytes in length. For details, see: https://cloud.google.com/load-balancing/docs/health-check-concepts#criteria-protocol-ssl-tcp
  const SSLHealthCheckResponseComputeBeta({
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

  factory SSLHealthCheckResponseComputeBeta.fromMap(Map<String, dynamic> map) {
    return SSLHealthCheckResponseComputeBeta(
      port: pulumi.Input.fromValue(map['port'] as int),
      portName: pulumi.Input.fromValue(map['portName'] as String),
      portSpecification: pulumi.Input.fromValue(map['portSpecification'] as String),
      proxyHeader: pulumi.Input.fromValue(map['proxyHeader'] as String),
      request: pulumi.Input.fromValue(map['request'] as String),
      response: pulumi.Input.fromValue(map['response'] as String),
    );
  }
}
