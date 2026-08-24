// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetLoadBalancerMonitorsResult {
  /// Do not validate the certificate when monitor use HTTPS. This parameter is currently only valid for HTTP and HTTPS monitors.
  final pulumi.Input<bool> allowInsecure;
  /// To be marked unhealthy the monitored origin must fail this healthcheck N consecutive times.
  final pulumi.Input<int> consecutiveDown;
  /// To be marked healthy the monitored origin must pass this healthcheck N consecutive times.
  final pulumi.Input<int> consecutiveUp;
  final pulumi.Input<String> createdOn;
  /// Object description.
  final pulumi.Input<String> description;
  /// A case-insensitive sub-string to look for in the response body. If this string is not found, the origin will be marked as unhealthy. This parameter is only valid for HTTP and HTTPS monitors.
  final pulumi.Input<String> expectedBody;
  /// The expected HTTP response code or code range of the health check. This parameter is only valid for HTTP and HTTPS monitors.
  final pulumi.Input<String> expectedCodes;
  /// Follow redirects if returned by the origin. This parameter is only valid for HTTP and HTTPS monitors.
  final pulumi.Input<bool> followRedirects;
  /// The HTTP request headers to send in the health check. It is recommended you set a Host header by default. The User-Agent header cannot be overridden. This parameter is only valid for HTTP and HTTPS monitors.
  final pulumi.Input<Map<String, List<String>>> header;
  final pulumi.Input<String> id;
  /// The interval between each health check. Shorter intervals may improve failover time, but will increase load on the origins as we check from multiple locations.
  final pulumi.Input<int> interval;
  /// The method to use for the health check. This defaults to 'GET' for HTTP/HTTPS based checks and 'connection_established' for TCP based health checks.
  final pulumi.Input<String> method;
  final pulumi.Input<String> modifiedOn;
  /// The endpoint path you want to conduct a health check against. This parameter is only valid for HTTP and HTTPS monitors.
  final pulumi.Input<String> path;
  /// The port number to connect to for the health check. Required for TCP, UDP, and SMTP checks. HTTP and HTTPS checks should only define the port when using a non-standard port (HTTP: default 80, HTTPS: default 443).
  final pulumi.Input<int> port;
  /// Assign this monitor to emulate the specified zone while probing. This parameter is only valid for HTTP and HTTPS monitors.
  final pulumi.Input<String> probeZone;
  /// The number of retries to attempt in case of a timeout before marking the origin as unhealthy. Retries are attempted immediately.
  final pulumi.Input<int> retries;
  /// The timeout (in seconds) before marking the health check as failed.
  final pulumi.Input<int> timeout;
  /// The protocol to use for the health check. Currently supported protocols are 'HTTP','HTTPS', 'TCP', 'ICMP-PING', 'UDP-ICMP', and 'SMTP'.
  /// Available values: "http", "https", "tcp", "udp*icmp", "icmp*ping", "smtp".
  final pulumi.Input<String> type;

  /// Creates a new [GetLoadBalancerMonitorsResult].
  /// [allowInsecure] Do not validate the certificate when monitor use HTTPS. This parameter is currently only valid for HTTP and HTTPS monitors.
  /// [consecutiveDown] To be marked unhealthy the monitored origin must fail this healthcheck N consecutive times.
  /// [consecutiveUp] To be marked healthy the monitored origin must pass this healthcheck N consecutive times.
  /// [createdOn] Required.
  /// [description] Object description.
  /// [expectedBody] A case-insensitive sub-string to look for in the response body. If this string is not found, the origin will be marked as unhealthy. This parameter is only valid for HTTP and HTTPS monitors.
  /// [expectedCodes] The expected HTTP response code or code range of the health check. This parameter is only valid for HTTP and HTTPS monitors.
  /// [followRedirects] Follow redirects if returned by the origin. This parameter is only valid for HTTP and HTTPS monitors.
  /// [header] The HTTP request headers to send in the health check. It is recommended you set a Host header by default. The User-Agent header cannot be overridden. This parameter is only valid for HTTP and HTTPS monitors.
  /// [id] Required.
  /// [interval] The interval between each health check. Shorter intervals may improve failover time, but will increase load on the origins as we check from multiple locations.
  /// [method] The method to use for the health check. This defaults to 'GET' for HTTP/HTTPS based checks and 'connection_established' for TCP based health checks.
  /// [modifiedOn] Required.
  /// [path] The endpoint path you want to conduct a health check against. This parameter is only valid for HTTP and HTTPS monitors.
  /// [port] The port number to connect to for the health check. Required for TCP, UDP, and SMTP checks. HTTP and HTTPS checks should only define the port when using a non-standard port (HTTP: default 80, HTTPS: default 443).
  /// [probeZone] Assign this monitor to emulate the specified zone while probing. This parameter is only valid for HTTP and HTTPS monitors.
  /// [retries] The number of retries to attempt in case of a timeout before marking the origin as unhealthy. Retries are attempted immediately.
  /// [timeout] The timeout (in seconds) before marking the health check as failed.
  /// [type] The protocol to use for the health check. Currently supported protocols are 'HTTP','HTTPS', 'TCP', 'ICMP-PING', 'UDP-ICMP', and 'SMTP'.
  const GetLoadBalancerMonitorsResult({
    required this.allowInsecure,
    required this.consecutiveDown,
    required this.consecutiveUp,
    required this.createdOn,
    required this.description,
    required this.expectedBody,
    required this.expectedCodes,
    required this.followRedirects,
    required this.header,
    required this.id,
    required this.interval,
    required this.method,
    required this.modifiedOn,
    required this.path,
    required this.port,
    required this.probeZone,
    required this.retries,
    required this.timeout,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allowInsecure': allowInsecure,
      'consecutiveDown': consecutiveDown,
      'consecutiveUp': consecutiveUp,
      'createdOn': createdOn,
      'description': description,
      'expectedBody': expectedBody,
      'expectedCodes': expectedCodes,
      'followRedirects': followRedirects,
      'header': header,
      'id': id,
      'interval': interval,
      'method': method,
      'modifiedOn': modifiedOn,
      'path': path,
      'port': port,
      'probeZone': probeZone,
      'retries': retries,
      'timeout': timeout,
      'type': type,
    };
  }

  factory GetLoadBalancerMonitorsResult.fromMap(Map<String, dynamic> map) {
    return GetLoadBalancerMonitorsResult(
      allowInsecure: pulumi.Input.fromValue(map['allowInsecure'] as bool),
      consecutiveDown: pulumi.Input.fromValue((map['consecutiveDown'] as num).toInt()),
      consecutiveUp: pulumi.Input.fromValue((map['consecutiveUp'] as num).toInt()),
      createdOn: pulumi.Input.fromValue(map['createdOn'] as String),
      description: pulumi.Input.fromValue(map['description'] as String),
      expectedBody: pulumi.Input.fromValue(map['expectedBody'] as String),
      expectedCodes: pulumi.Input.fromValue(map['expectedCodes'] as String),
      followRedirects: pulumi.Input.fromValue(map['followRedirects'] as bool),
      header: pulumi.Input.fromValue(pulumi.Input.decodeMapValues<List<String>>(map['header']!, (value) => (value as List).cast<String>())),
      id: pulumi.Input.fromValue(map['id'] as String),
      interval: pulumi.Input.fromValue((map['interval'] as num).toInt()),
      method: pulumi.Input.fromValue(map['method'] as String),
      modifiedOn: pulumi.Input.fromValue(map['modifiedOn'] as String),
      path: pulumi.Input.fromValue(map['path'] as String),
      port: pulumi.Input.fromValue((map['port'] as num).toInt()),
      probeZone: pulumi.Input.fromValue(map['probeZone'] as String),
      retries: pulumi.Input.fromValue((map['retries'] as num).toInt()),
      timeout: pulumi.Input.fromValue((map['timeout'] as num).toInt()),
      type: pulumi.Input.fromValue(map['type'] as String),
    );
  }
}
