// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_loadbalancer_monitor_monitor_args_doc}
/// The set of arguments for Monitor.
/// {@endtemplate}
/// {@macro pulumi_loadbalancer_monitor_monitor_args_doc}
class MonitorArgs {
  /// The administrative state of the monitor.
  /// A valid value is true (UP) or false (DOWN).
  final pulumi.Input<bool>? adminStateUp;
  /// The time, in seconds, between sending probes to members.
  final pulumi.Input<int> delay;
  /// The domain name to use in the HTTP host header
  /// health monitor requests. Supported in Octavia API version 2.10 or later.
  final pulumi.Input<String>? domainName;
  /// Required for HTTP(S) types. Expected HTTP codes
  /// for a passing HTTP(S) monitor. You can either specify a single status like
  /// "200", a list like "200, 202" or a range like "200-202". Default is "200".
  final pulumi.Input<String>? expectedCodes;
  /// Required for HTTP(S) types. The HTTP method that
  /// the health monitor uses for requests. One of CONNECT, DELETE, GET, HEAD,
  /// OPTIONS, PATCH, POST, PUT, or TRACE. The default is GET.
  final pulumi.Input<String>? httpMethod;
  /// Required for HTTP(S) types. The HTTP version that
  /// the health monitor uses for requests. One of `1.0` or 1.1` is supported
  /// for HTTP(S) monitors. The default is `1.0`. Supported in Octavia API version
  /// 2.10 or later.
  final pulumi.Input<String>? httpVersion;
  /// Number of permissible ping failures before
  /// changing the member's status to INACTIVE. Must be a number between 1
  /// and 10.
  final pulumi.Input<int> maxRetries;
  /// Number of permissible ping failures before
  /// changing the member's status to ERROR. Must be a number between 1 and 10.
  /// The default is 3. Changing this updates the max_retries_down of the
  /// existing monitor.
  final pulumi.Input<int>? maxRetriesDown;
  /// The Name of the Monitor.
  final pulumi.Input<String>? name;
  /// The id of the pool that this monitor will be assigned to.
  final pulumi.Input<String> poolId;
  /// The region in which to obtain the V2 Networking client.
  /// A Networking client is needed to create a monitor. If omitted, the
  /// `region` argument of the provider is used. Changing this creates a new
  /// monitor.
  final pulumi.Input<String>? region;
  /// Required for admins. The UUID of the tenant who owns
  /// the monitor.  Only administrative users can specify a tenant UUID
  /// other than their own. Changing this creates a new monitor.
  final pulumi.Input<String>? tenantId;
  /// Maximum number of seconds for a monitor to wait for a
  /// ping reply before it times out. The value must be less than the delay
  /// value.
  final pulumi.Input<int> timeout;
  /// The type of probe, which is PING, TCP, HTTP, HTTPS,
  /// TLS-HELLO, SCTP or UDP-CONNECT, that is sent by the loadbalancer to
  /// verify the member state. Changing this creates a new monitor.
  final pulumi.Input<String> type;
  /// Required for HTTP(S) types. URI path that will be
  /// accessed if monitor type is HTTP or HTTPS. Default is `/`.
  final pulumi.Input<String>? urlPath;

  /// Creates a new [MonitorArgs].
  /// [adminStateUp] The administrative state of the monitor.
  /// [delay] The time, in seconds, between sending probes to members.
  /// [domainName] The domain name to use in the HTTP host header
  /// [expectedCodes] Required for HTTP(S) types. Expected HTTP codes
  /// [httpMethod] Required for HTTP(S) types. The HTTP method that
  /// [httpVersion] Required for HTTP(S) types. The HTTP version that
  /// [maxRetries] Number of permissible ping failures before
  /// [maxRetriesDown] Number of permissible ping failures before
  /// [name] The Name of the Monitor.
  /// [poolId] The id of the pool that this monitor will be assigned to.
  /// [region] The region in which to obtain the V2 Networking client.
  /// [tenantId] Required for admins. The UUID of the tenant who owns
  /// [timeout] Maximum number of seconds for a monitor to wait for a
  /// [type] The type of probe, which is PING, TCP, HTTP, HTTPS,
  /// [urlPath] Required for HTTP(S) types. URI path that will be
  MonitorArgs({
    this.adminStateUp,
    required this.delay,
    this.domainName,
    this.expectedCodes,
    this.httpMethod,
    this.httpVersion,
    required this.maxRetries,
    this.maxRetriesDown,
    this.name,
    required this.poolId,
    this.region,
    this.tenantId,
    required this.timeout,
    required this.type,
    this.urlPath,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'adminStateUp': ?adminStateUp,
      'delay': delay,
      'domainName': ?domainName,
      'expectedCodes': ?expectedCodes,
      'httpMethod': ?httpMethod,
      'httpVersion': ?httpVersion,
      'maxRetries': maxRetries,
      'maxRetriesDown': ?maxRetriesDown,
      'name': ?name,
      'poolId': poolId,
      'region': ?region,
      'tenantId': ?tenantId,
      'timeout': timeout,
      'type': type,
      'urlPath': ?urlPath,
    };
  }

  factory MonitorArgs.fromMap(Map<String, dynamic> map) {
    return MonitorArgs(
      adminStateUp: map['adminStateUp'] == null ? null : (map['adminStateUp']! as bool).input(),
      delay: (map['delay'] as int).input(),
      domainName: map['domainName'] == null ? null : (map['domainName']! as String).input(),
      expectedCodes: map['expectedCodes'] == null ? null : (map['expectedCodes']! as String).input(),
      httpMethod: map['httpMethod'] == null ? null : (map['httpMethod']! as String).input(),
      httpVersion: map['httpVersion'] == null ? null : (map['httpVersion']! as String).input(),
      maxRetries: (map['maxRetries'] as int).input(),
      maxRetriesDown: map['maxRetriesDown'] == null ? null : (map['maxRetriesDown']! as int).input(),
      name: map['name'] == null ? null : (map['name']! as String).input(),
      poolId: (map['poolId'] as String).input(),
      region: map['region'] == null ? null : (map['region']! as String).input(),
      tenantId: map['tenantId'] == null ? null : (map['tenantId']! as String).input(),
      timeout: (map['timeout'] as int).input(),
      type: (map['type'] as String).input(),
      urlPath: map['urlPath'] == null ? null : (map['urlPath']! as String).input(),
    );
  }
}

