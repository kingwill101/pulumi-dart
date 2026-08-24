// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering LoadBalancerMonitor resources.
class LoadBalancerMonitorState {
  /// Identifier.
  final pulumi.Input<String?>? accountId;
  /// Do not validate the certificate when monitor use HTTPS. This parameter is currently only valid for HTTP and HTTPS monitors.
  final pulumi.Input<bool?>? allowInsecure;
  /// To be marked unhealthy the monitored origin must fail this healthcheck N consecutive times.
  final pulumi.Input<int?>? consecutiveDown;
  /// To be marked healthy the monitored origin must pass this healthcheck N consecutive times.
  final pulumi.Input<int?>? consecutiveUp;
  final pulumi.Input<String?>? createdOn;
  /// Object description.
  final pulumi.Input<String?>? description;
  /// A case-insensitive sub-string to look for in the response body. If this string is not found, the origin will be marked as unhealthy. This parameter is only valid for HTTP and HTTPS monitors.
  final pulumi.Input<String?>? expectedBody;
  /// The expected HTTP response code or code range of the health check. This parameter is only valid for HTTP and HTTPS monitors.
  final pulumi.Input<String?>? expectedCodes;
  /// Follow redirects if returned by the origin. This parameter is only valid for HTTP and HTTPS monitors.
  final pulumi.Input<bool?>? followRedirects;
  /// The HTTP request headers to send in the health check. It is recommended you set a Host header by default. The User-Agent header cannot be overridden. This parameter is only valid for HTTP and HTTPS monitors.
  final pulumi.Input<Map<String, List<String>>?>? header;
  /// The interval between each health check. Shorter intervals may improve failover time, but will increase load on the origins as we check from multiple locations.
  final pulumi.Input<int?>? interval;
  /// The method to use for the health check. This defaults to 'GET' for HTTP/HTTPS based checks and 'connection_established' for TCP based health checks.
  final pulumi.Input<String?>? method;
  final pulumi.Input<String?>? modifiedOn;
  /// The endpoint path you want to conduct a health check against. This parameter is only valid for HTTP and HTTPS monitors.
  final pulumi.Input<String?>? path;
  /// The port number to connect to for the health check. Required for TCP, UDP, and SMTP checks. HTTP and HTTPS checks should only define the port when using a non-standard port (HTTP: default 80, HTTPS: default 443).
  final pulumi.Input<int?>? port;
  /// Assign this monitor to emulate the specified zone while probing. This parameter is only valid for HTTP and HTTPS monitors.
  final pulumi.Input<String?>? probeZone;
  /// The number of retries to attempt in case of a timeout before marking the origin as unhealthy. Retries are attempted immediately.
  final pulumi.Input<int?>? retries;
  /// The timeout (in seconds) before marking the health check as failed.
  final pulumi.Input<int?>? timeout;
  /// The protocol to use for the health check. Currently supported protocols are 'HTTP','HTTPS', 'TCP', 'ICMP-PING', 'UDP-ICMP', and 'SMTP'.
  /// Available values: "http", "https", "tcp", "udp*icmp", "icmp*ping", "smtp".
  final pulumi.Input<String?>? type;

  /// Creates a new [LoadBalancerMonitorState].
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
  /// [interval] The interval between each health check. Shorter intervals may improve failover time, but will increase load on the origins as we check from multiple locations.
  /// [method] The method to use for the health check. This defaults to 'GET' for HTTP/HTTPS based checks and 'connection_established' for TCP based health checks.
  /// [modifiedOn] Optional.
  /// [path] The endpoint path you want to conduct a health check against. This parameter is only valid for HTTP and HTTPS monitors.
  /// [port] The port number to connect to for the health check. Required for TCP, UDP, and SMTP checks. HTTP and HTTPS checks should only define the port when using a non-standard port (HTTP: default 80, HTTPS: default 443).
  /// [probeZone] Assign this monitor to emulate the specified zone while probing. This parameter is only valid for HTTP and HTTPS monitors.
  /// [retries] The number of retries to attempt in case of a timeout before marking the origin as unhealthy. Retries are attempted immediately.
  /// [timeout] The timeout (in seconds) before marking the health check as failed.
  /// [type] The protocol to use for the health check. Currently supported protocols are 'HTTP','HTTPS', 'TCP', 'ICMP-PING', 'UDP-ICMP', and 'SMTP'.
  const LoadBalancerMonitorState({
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
    this.interval,
    this.method,
    this.modifiedOn,
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
      'interval': ?interval,
      'method': ?method,
      'modifiedOn': ?modifiedOn,
      'path': ?path,
      'port': ?port,
      'probeZone': ?probeZone,
      'retries': ?retries,
      'timeout': ?timeout,
      'type': ?type,
    };
  }

  factory LoadBalancerMonitorState.fromMap(Map<String, dynamic> map) {
    return LoadBalancerMonitorState(
      accountId: (() { final guardedValue = map['accountId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      allowInsecure: (() { final guardedValue = map['allowInsecure']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      consecutiveDown: (() { final guardedValue = map['consecutiveDown']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
      consecutiveUp: (() { final guardedValue = map['consecutiveUp']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
      createdOn: (() { final guardedValue = map['createdOn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      expectedBody: (() { final guardedValue = map['expectedBody']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      expectedCodes: (() { final guardedValue = map['expectedCodes']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      followRedirects: (() { final guardedValue = map['followRedirects']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      header: (() { final guardedValue = map['header']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeMapValues<List<String>>(guardedValue, (value) => (value as List).cast<String>())); })(),
      interval: (() { final guardedValue = map['interval']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
      method: (() { final guardedValue = map['method']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      modifiedOn: (() { final guardedValue = map['modifiedOn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      path: (() { final guardedValue = map['path']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      port: (() { final guardedValue = map['port']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
      probeZone: (() { final guardedValue = map['probeZone']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      retries: (() { final guardedValue = map['retries']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
      timeout: (() { final guardedValue = map['timeout']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
