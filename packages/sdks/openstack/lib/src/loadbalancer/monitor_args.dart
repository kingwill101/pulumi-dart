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
    pulumi.Output<bool>? adminStateUp,
    required pulumi.Output<int> delay,
    pulumi.Output<String>? domainName,
    pulumi.Output<String>? expectedCodes,
    pulumi.Output<String>? httpMethod,
    pulumi.Output<String>? httpVersion,
    required pulumi.Output<int> maxRetries,
    pulumi.Output<int>? maxRetriesDown,
    pulumi.Output<String>? name,
    required pulumi.Output<String> poolId,
    pulumi.Output<String>? region,
    pulumi.Output<String>? tenantId,
    required pulumi.Output<int> timeout,
    required pulumi.Output<String> type,
    pulumi.Output<String>? urlPath,
  }) :
      adminStateUp = pulumi.Input.asOptionalInput<bool>(adminStateUp),
      delay = pulumi.Input.asInput<int>(delay),
      domainName = pulumi.Input.asOptionalInput<String>(domainName),
      expectedCodes = pulumi.Input.asOptionalInput<String>(expectedCodes),
      httpMethod = pulumi.Input.asOptionalInput<String>(httpMethod),
      httpVersion = pulumi.Input.asOptionalInput<String>(httpVersion),
      maxRetries = pulumi.Input.asInput<int>(maxRetries),
      maxRetriesDown = pulumi.Input.asOptionalInput<int>(maxRetriesDown),
      name = pulumi.Input.asOptionalInput<String>(name),
      poolId = pulumi.Input.asInput<String>(poolId),
      region = pulumi.Input.asOptionalInput<String>(region),
      tenantId = pulumi.Input.asOptionalInput<String>(tenantId),
      timeout = pulumi.Input.asInput<int>(timeout),
      type = pulumi.Input.asInput<String>(type),
      urlPath = pulumi.Input.asOptionalInput<String>(urlPath);

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
      adminStateUp: map['adminStateUp'] == null ? null : pulumi.Output.create<bool>(map['adminStateUp'] as bool),
      delay: pulumi.Output.create<int>(map['delay'] as int),
      domainName: map['domainName'] == null ? null : pulumi.Output.create<String>(map['domainName'] as String),
      expectedCodes: map['expectedCodes'] == null ? null : pulumi.Output.create<String>(map['expectedCodes'] as String),
      httpMethod: map['httpMethod'] == null ? null : pulumi.Output.create<String>(map['httpMethod'] as String),
      httpVersion: map['httpVersion'] == null ? null : pulumi.Output.create<String>(map['httpVersion'] as String),
      maxRetries: pulumi.Output.create<int>(map['maxRetries'] as int),
      maxRetriesDown: map['maxRetriesDown'] == null ? null : pulumi.Output.create<int>(map['maxRetriesDown'] as int),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      poolId: pulumi.Output.create<String>(map['poolId'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      tenantId: map['tenantId'] == null ? null : pulumi.Output.create<String>(map['tenantId'] as String),
      timeout: pulumi.Output.create<int>(map['timeout'] as int),
      type: pulumi.Output.create<String>(map['type'] as String),
      urlPath: map['urlPath'] == null ? null : pulumi.Output.create<String>(map['urlPath'] as String),
    );
  }
}

