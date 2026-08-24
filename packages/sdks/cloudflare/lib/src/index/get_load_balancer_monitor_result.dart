// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Result data returned by getLoadBalancerMonitor.
class GetLoadBalancerMonitorResult {
  /// Identifier.
  final String? accountId;
  /// Do not validate the certificate when monitor use HTTPS. This parameter is currently only valid for HTTP and HTTPS monitors.
  final bool? allowInsecure;
  /// To be marked unhealthy the monitored origin must fail this healthcheck N consecutive times.
  final int? consecutiveDown;
  /// To be marked healthy the monitored origin must pass this healthcheck N consecutive times.
  final int? consecutiveUp;
  final String? createdOn;
  /// Object description.
  final String? description;
  /// A case-insensitive sub-string to look for in the response body. If this string is not found, the origin will be marked as unhealthy. This parameter is only valid for HTTP and HTTPS monitors.
  final String? expectedBody;
  /// The expected HTTP response code or code range of the health check. This parameter is only valid for HTTP and HTTPS monitors.
  final String? expectedCodes;
  /// Follow redirects if returned by the origin. This parameter is only valid for HTTP and HTTPS monitors.
  final bool? followRedirects;
  /// The HTTP request headers to send in the health check. It is recommended you set a Host header by default. The User-Agent header cannot be overridden. This parameter is only valid for HTTP and HTTPS monitors.
  final Map<String, List<String>>? header;
  /// The ID of this resource.
  final String? id;
  /// The interval between each health check. Shorter intervals may improve failover time, but will increase load on the origins as we check from multiple locations.
  final int? interval;
  /// The method to use for the health check. This defaults to 'GET' for HTTP/HTTPS based checks and 'connection_established' for TCP based health checks.
  final String? method;
  final String? modifiedOn;
  final String? monitorId;
  /// The endpoint path you want to conduct a health check against. This parameter is only valid for HTTP and HTTPS monitors.
  final String? path;
  /// The port number to connect to for the health check. Required for TCP, UDP, and SMTP checks. HTTP and HTTPS checks should only define the port when using a non-standard port (HTTP: default 80, HTTPS: default 443).
  final int? port;
  /// Assign this monitor to emulate the specified zone while probing. This parameter is only valid for HTTP and HTTPS monitors.
  final String? probeZone;
  /// The number of retries to attempt in case of a timeout before marking the origin as unhealthy. Retries are attempted immediately.
  final int? retries;
  /// The timeout (in seconds) before marking the health check as failed.
  final int? timeout;
  /// The protocol to use for the health check. Currently supported protocols are 'HTTP','HTTPS', 'TCP', 'ICMP-PING', 'UDP-ICMP', and 'SMTP'.
  /// Available values: "http", "https", "tcp", "udp*icmp", "icmp*ping", "smtp".
  final String? type;

  /// Creates a new [GetLoadBalancerMonitorResult].
  /// [accountId] Identifier.
  /// [allowInsecure] Do not validate the certificate when monitor use HTTPS. This parameter is currently only valid for HTTP and HTTPS monitors.
  /// [consecutiveDown] To be marked unhealthy the monitored origin must fail this healthcheck N consecutive times.
  /// [consecutiveUp] To be marked healthy the monitored origin must pass this healthcheck N consecutive times.
  /// [createdOn] Optional.
  /// [description] Object description.
  /// [expectedBody] A case-insensitive sub-string to look for in the response body. If this string is not found, the origin will be marked as unhealthy. This parameter is only valid for HTTP and HTTPS monitors.
  /// [expectedCodes] The expected HTTP response code or code range of the health check. This parameter is only valid for HTTP and HTTPS monitors.
  /// [followRedirects] Follow redirects if returned by the origin. This parameter is only valid for HTTP and HTTPS monitors.
  /// [header] The HTTP request headers to send in the health check. It is recommended you set a Host header by default. The User-Agent header cannot be overridden. This parameter is only valid for HTTP and HTTPS monitors.
  /// [id] The ID of this resource.
  /// [interval] The interval between each health check. Shorter intervals may improve failover time, but will increase load on the origins as we check from multiple locations.
  /// [method] The method to use for the health check. This defaults to 'GET' for HTTP/HTTPS based checks and 'connection_established' for TCP based health checks.
  /// [modifiedOn] Optional.
  /// [monitorId] Optional.
  /// [path] The endpoint path you want to conduct a health check against. This parameter is only valid for HTTP and HTTPS monitors.
  /// [port] The port number to connect to for the health check. Required for TCP, UDP, and SMTP checks. HTTP and HTTPS checks should only define the port when using a non-standard port (HTTP: default 80, HTTPS: default 443).
  /// [probeZone] Assign this monitor to emulate the specified zone while probing. This parameter is only valid for HTTP and HTTPS monitors.
  /// [retries] The number of retries to attempt in case of a timeout before marking the origin as unhealthy. Retries are attempted immediately.
  /// [timeout] The timeout (in seconds) before marking the health check as failed.
  /// [type] The protocol to use for the health check. Currently supported protocols are 'HTTP','HTTPS', 'TCP', 'ICMP-PING', 'UDP-ICMP', and 'SMTP'.
  const GetLoadBalancerMonitorResult({
    this.accountId,
    this.allowInsecure,
    this.consecutiveDown,
    this.consecutiveUp,
    this.createdOn,
    this.description,
    this.expectedBody,
    this.expectedCodes,
    this.followRedirects,
    this.header,
    this.id,
    this.interval,
    this.method,
    this.modifiedOn,
    this.monitorId,
    this.path,
    this.port,
    this.probeZone,
    this.retries,
    this.timeout,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': ?accountId,
      'allowInsecure': ?allowInsecure,
      'consecutiveDown': ?consecutiveDown,
      'consecutiveUp': ?consecutiveUp,
      'createdOn': ?createdOn,
      'description': ?description,
      'expectedBody': ?expectedBody,
      'expectedCodes': ?expectedCodes,
      'followRedirects': ?followRedirects,
      'header': ?header,
      'id': ?id,
      'interval': ?interval,
      'method': ?method,
      'modifiedOn': ?modifiedOn,
      'monitorId': ?monitorId,
      'path': ?path,
      'port': ?port,
      'probeZone': ?probeZone,
      'retries': ?retries,
      'timeout': ?timeout,
      'type': ?type,
    };
  }

  factory GetLoadBalancerMonitorResult.fromMap(Map<String, dynamic> map) {
    return GetLoadBalancerMonitorResult(
      accountId: (() { final guardedValue = map['accountId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      allowInsecure: (() { final guardedValue = map['allowInsecure']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      consecutiveDown: (() { final guardedValue = map['consecutiveDown']; if (guardedValue == null) return null; return (guardedValue as num).toInt(); })(),
      consecutiveUp: (() { final guardedValue = map['consecutiveUp']; if (guardedValue == null) return null; return (guardedValue as num).toInt(); })(),
      createdOn: (() { final guardedValue = map['createdOn']; if (guardedValue == null) return null; return guardedValue as String; })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return guardedValue as String; })(),
      expectedBody: (() { final guardedValue = map['expectedBody']; if (guardedValue == null) return null; return guardedValue as String; })(),
      expectedCodes: (() { final guardedValue = map['expectedCodes']; if (guardedValue == null) return null; return guardedValue as String; })(),
      followRedirects: (() { final guardedValue = map['followRedirects']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      header: (() { final guardedValue = map['header']; if (guardedValue == null) return null; return pulumi.Input.decodeMapValues<List<String>>(guardedValue, (value) => (value as List).cast<String>()); })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      interval: (() { final guardedValue = map['interval']; if (guardedValue == null) return null; return (guardedValue as num).toInt(); })(),
      method: (() { final guardedValue = map['method']; if (guardedValue == null) return null; return guardedValue as String; })(),
      modifiedOn: (() { final guardedValue = map['modifiedOn']; if (guardedValue == null) return null; return guardedValue as String; })(),
      monitorId: (() { final guardedValue = map['monitorId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      path: (() { final guardedValue = map['path']; if (guardedValue == null) return null; return guardedValue as String; })(),
      port: (() { final guardedValue = map['port']; if (guardedValue == null) return null; return (guardedValue as num).toInt(); })(),
      probeZone: (() { final guardedValue = map['probeZone']; if (guardedValue == null) return null; return guardedValue as String; })(),
      retries: (() { final guardedValue = map['retries']; if (guardedValue == null) return null; return (guardedValue as num).toInt(); })(),
      timeout: (() { final guardedValue = map['timeout']; if (guardedValue == null) return null; return (guardedValue as num).toInt(); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
