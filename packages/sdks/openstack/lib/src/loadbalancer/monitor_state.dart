// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering Monitor resources.
class MonitorState {
  /// The administrative state of the monitor.
  /// A valid value is true (UP) or false (DOWN).
  final pulumi.Input<bool>? adminStateUp;
  /// The time, in seconds, between sending probes to members.
  final pulumi.Input<int>? delay;
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
  final pulumi.Input<int>? maxRetries;
  /// Number of permissible ping failures before
  /// changing the member's status to ERROR. Must be a number between 1 and 10.
  /// The default is 3. Changing this updates the max_retries_down of the
  /// existing monitor.
  final pulumi.Input<int>? maxRetriesDown;
  /// The Name of the Monitor.
  final pulumi.Input<String>? name;
  /// The id of the pool that this monitor will be assigned to.
  final pulumi.Input<String>? poolId;
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
  final pulumi.Input<int>? timeout;
  /// The type of probe, which is PING, TCP, HTTP, HTTPS,
  /// TLS-HELLO, SCTP or UDP-CONNECT, that is sent by the loadbalancer to
  /// verify the member state. Changing this creates a new monitor.
  final pulumi.Input<String>? type;
  /// Required for HTTP(S) types. URI path that will be
  /// accessed if monitor type is HTTP or HTTPS. Default is `/`.
  final pulumi.Input<String>? urlPath;

  /// Creates a new [MonitorState].
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
  const MonitorState({
    this.adminStateUp,
    this.delay,
    this.domainName,
    this.expectedCodes,
    this.httpMethod,
    this.httpVersion,
    this.maxRetries,
    this.maxRetriesDown,
    this.name,
    this.poolId,
    this.region,
    this.tenantId,
    this.timeout,
    this.type,
    this.urlPath,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'adminStateUp': ?adminStateUp,
      'delay': ?delay,
      'domainName': ?domainName,
      'expectedCodes': ?expectedCodes,
      'httpMethod': ?httpMethod,
      'httpVersion': ?httpVersion,
      'maxRetries': ?maxRetries,
      'maxRetriesDown': ?maxRetriesDown,
      'name': ?name,
      'poolId': ?poolId,
      'region': ?region,
      'tenantId': ?tenantId,
      'timeout': ?timeout,
      'type': ?type,
      'urlPath': ?urlPath,
    };
  }

  factory MonitorState.fromMap(Map<String, dynamic> map) {
    return MonitorState(
      adminStateUp: (() { final guardedValue = map['adminStateUp']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      delay: (() { final guardedValue = map['delay']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      domainName: (() { final guardedValue = map['domainName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      expectedCodes: (() { final guardedValue = map['expectedCodes']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      httpMethod: (() { final guardedValue = map['httpMethod']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      httpVersion: (() { final guardedValue = map['httpVersion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      maxRetries: (() { final guardedValue = map['maxRetries']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      maxRetriesDown: (() { final guardedValue = map['maxRetriesDown']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      poolId: (() { final guardedValue = map['poolId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tenantId: (() { final guardedValue = map['tenantId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      timeout: (() { final guardedValue = map['timeout']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      urlPath: (() { final guardedValue = map['urlPath']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

