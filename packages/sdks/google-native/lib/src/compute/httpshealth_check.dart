// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'httpshealth_check_port_specification.dart';
import 'httpshealth_check_proxy_header.dart';
import 'httpshealth_check_weight_report_mode.dart';

class HTTPSHealthCheck {
  /// The value of the host header in the HTTPS health check request. If left empty (default value), the host header is set to the destination IP address to which health check packets are sent. The destination IP address depends on the type of load balancer. For details, see: https://cloud.google.com/load-balancing/docs/health-check-concepts#hc-packet-dest
  final pulumi.Input<String>? host;
  /// The TCP port number to which the health check prober sends packets. The default value is 443. Valid values are 1 through 65535.
  final pulumi.Input<int>? port;
  /// Not supported.
  final pulumi.Input<String>? portName;
  /// Specifies how a port is selected for health checking. Can be one of the following values: USE_FIXED_PORT: Specifies a port number explicitly using the port field in the health check. Supported by backend services for pass-through load balancers and backend services for proxy load balancers. Not supported by target pools. The health check supports all backends supported by the backend service provided the backend can be health checked. For example, GCE_VM_IP network endpoint groups, GCE_VM_IP_PORT network endpoint groups, and instance group backends. USE_NAMED_PORT: Not supported. USE_SERVING_PORT: Provides an indirect method of specifying the health check port by referring to the backend service. Only supported by backend services for proxy load balancers. Not supported by target pools. Not supported by backend services for pass-through load balancers. Supports all backends that can be health checked; for example, GCE_VM_IP_PORT network endpoint groups and instance group backends. For GCE_VM_IP_PORT network endpoint group backends, the health check uses the port number specified for each endpoint in the network endpoint group. For instance group backends, the health check uses the port number determined by looking up the backend service's named port in the instance group's list of named ports.
  final pulumi.Input<HTTPSHealthCheckPortSpecification>? portSpecification;
  /// Specifies the type of proxy header to append before sending data to the backend, either NONE or PROXY_V1. The default is NONE.
  final pulumi.Input<HTTPSHealthCheckProxyHeader>? proxyHeader;
  /// The request path of the HTTPS health check request. The default value is /.
  final pulumi.Input<String>? requestPath;
  /// Creates a content-based HTTPS health check. In addition to the required HTTP 200 (OK) status code, you can configure the health check to pass only when the backend sends this specific ASCII response string within the first 1024 bytes of the HTTP response body. For details, see: https://cloud.google.com/load-balancing/docs/health-check-concepts#criteria-protocol-http
  final pulumi.Input<String>? response;
  /// Weight report mode. used for weighted Load Balancing.
  final pulumi.Input<HTTPSHealthCheckWeightReportMode>? weightReportMode;

  /// Creates a new [HTTPSHealthCheck].
  /// [host] The value of the host header in the HTTPS health check request. If left empty (default value), the host header is set to the destination IP address to which health check packets are sent. The destination IP address depends on the type of load balancer. For details, see: https://cloud.google.com/load-balancing/docs/health-check-concepts#hc-packet-dest
  /// [port] The TCP port number to which the health check prober sends packets. The default value is 443. Valid values are 1 through 65535.
  /// [portName] Not supported.
  /// [portSpecification] Specifies how a port is selected for health checking. Can be one of the following values: USE_FIXED_PORT: Specifies a port number explicitly using the port field in the health check. Supported by backend services for pass-through load balancers and backend services for proxy load balancers. Not supported by target pools. The health check supports all backends supported by the backend service provided the backend can be health checked. For example, GCE_VM_IP network endpoint groups, GCE_VM_IP_PORT network endpoint groups, and instance group backends. USE_NAMED_PORT: Not supported. USE_SERVING_PORT: Provides an indirect method of specifying the health check port by referring to the backend service. Only supported by backend services for proxy load balancers. Not supported by target pools. Not supported by backend services for pass-through load balancers. Supports all backends that can be health checked; for example, GCE_VM_IP_PORT network endpoint groups and instance group backends. For GCE_VM_IP_PORT network endpoint group backends, the health check uses the port number specified for each endpoint in the network endpoint group. For instance group backends, the health check uses the port number determined by looking up the backend service's named port in the instance group's list of named ports.
  /// [proxyHeader] Specifies the type of proxy header to append before sending data to the backend, either NONE or PROXY_V1. The default is NONE.
  /// [requestPath] The request path of the HTTPS health check request. The default value is /.
  /// [response] Creates a content-based HTTPS health check. In addition to the required HTTP 200 (OK) status code, you can configure the health check to pass only when the backend sends this specific ASCII response string within the first 1024 bytes of the HTTP response body. For details, see: https://cloud.google.com/load-balancing/docs/health-check-concepts#criteria-protocol-http
  /// [weightReportMode] Weight report mode. used for weighted Load Balancing.
  const HTTPSHealthCheck({
    this.host,
    this.port,
    this.portName,
    this.portSpecification,
    this.proxyHeader,
    this.requestPath,
    this.response,
    this.weightReportMode,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'host': ?host,
      'port': ?port,
      'portName': ?portName,
      'portSpecification': ?pulumi.Input.mapOptionalInputValue<HTTPSHealthCheckPortSpecification, String>(portSpecification, (value) => value.wireValue),
      'proxyHeader': ?pulumi.Input.mapOptionalInputValue<HTTPSHealthCheckProxyHeader, String>(proxyHeader, (value) => value.wireValue),
      'requestPath': ?requestPath,
      'response': ?response,
      'weightReportMode': ?pulumi.Input.mapOptionalInputValue<HTTPSHealthCheckWeightReportMode, String>(weightReportMode, (value) => value.wireValue),
    };
  }

  factory HTTPSHealthCheck.fromMap(Map<String, dynamic> map) {
    return HTTPSHealthCheck(
      host: (() { final guardedValue = map['host']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      port: (() { final guardedValue = map['port']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      portName: (() { final guardedValue = map['portName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      portSpecification: (() { final guardedValue = map['portSpecification']; if (guardedValue == null) return null; return pulumi.Input.fromValue(HTTPSHealthCheckPortSpecification.fromValue(guardedValue as String)); })(),
      proxyHeader: (() { final guardedValue = map['proxyHeader']; if (guardedValue == null) return null; return pulumi.Input.fromValue(HTTPSHealthCheckProxyHeader.fromValue(guardedValue as String)); })(),
      requestPath: (() { final guardedValue = map['requestPath']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      response: (() { final guardedValue = map['response']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      weightReportMode: (() { final guardedValue = map['weightReportMode']; if (guardedValue == null) return null; return pulumi.Input.fromValue(HTTPSHealthCheckWeightReportMode.fromValue(guardedValue as String)); })(),
    );
  }
}

