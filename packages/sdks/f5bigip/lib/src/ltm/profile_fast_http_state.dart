// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering ProfileFastHttp resources.
class ProfileFastHttpState {
  /// Specifies the maximum number of times that the system can re-use a current connection. The default value is 0 (zero).
  final pulumi.Input<int>? connpoolMaxreuse;
  /// Specifies the maximum number of connections to a load balancing pool. A setting of 0 specifies that a pool can accept an unlimited number of connections. The default value is 2048.
  final pulumi.Input<int>? connpoolMaxsize;
  /// Specifies the minimum number of connections to a load balancing pool. A setting of 0 specifies that there is no minimum. The default value is 10.
  final pulumi.Input<int>? connpoolMinsize;
  /// The default value is enabled. When this option is enabled, the system replenishes the number of connections to a load balancing pool to the number of connections that existed when the server closed the connection to the pool. When disabled, the system replenishes the connection that was closed by the server, only when there are fewer connections to the pool than the number of connections set in the connpool-min-size connections option. Also see the connpool-min-size option..
  final pulumi.Input<String>? connpoolReplenish;
  /// Specifies the increment in which the system makes additional connections available, when all available connections are in use. The default value is 4.
  final pulumi.Input<int>? connpoolStep;
  /// Specifies the number of seconds after which a server-side connection in a OneConnect pool is eligible for deletion, when the connection has no traffic.The value of this option overrides the idle-timeout value that you specify. The default value is 0 (zero) seconds, which disables the override setting.
  final pulumi.Input<int>? connpoolidleTimeoutoverride;
  /// Specifies the profile that you want to use as the parent profile. Your new profile inherits all settings and values from the parent profile specified.
  final pulumi.Input<String>? defaultsFrom;
  /// Specifies whether to rewrite the HTTP version in the status line of the server to HTTP 1.0 to discourage the client from pipelining or chunking data. The default value is disabled.
  final pulumi.Input<String>? forcehttp10response;
  /// Specifies an idle timeout in seconds. This setting specifies the number of seconds that a connection is idle before the connection is eligible for deletion.When you specify an idle timeout for the Fast L4 profile, the value must be greater than the bigdb database variable Pva.Scrub time in msec for it to work properly.The default value is 300 seconds.
  final pulumi.Input<int>? idleTimeout;
  /// Specifies the maximum amount of HTTP header data that the system buffers before making a load balancing decision. The default setting is 32768.
  final pulumi.Input<int>? maxheaderSize;
  /// Name of the profile_fasthttp
  final pulumi.Input<String>? name;

  /// Creates a new [ProfileFastHttpState].
  /// [connpoolMaxreuse] Specifies the maximum number of times that the system can re-use a current connection. The default value is 0 (zero).
  /// [connpoolMaxsize] Specifies the maximum number of connections to a load balancing pool. A setting of 0 specifies that a pool can accept an unlimited number of connections. The default value is 2048.
  /// [connpoolMinsize] Specifies the minimum number of connections to a load balancing pool. A setting of 0 specifies that there is no minimum. The default value is 10.
  /// [connpoolReplenish] The default value is enabled. When this option is enabled, the system replenishes the number of connections to a load balancing pool to the number of connections that existed when the server closed the connection to the pool. When disabled, the system replenishes the connection that was closed by the server, only when there are fewer connections to the pool than the number of connections set in the connpool-min-size connections option. Also see the connpool-min-size option..
  /// [connpoolStep] Specifies the increment in which the system makes additional connections available, when all available connections are in use. The default value is 4.
  /// [connpoolidleTimeoutoverride] Specifies the number of seconds after which a server-side connection in a OneConnect pool is eligible for deletion, when the connection has no traffic.The value of this option overrides the idle-timeout value that you specify. The default value is 0 (zero) seconds, which disables the override setting.
  /// [defaultsFrom] Specifies the profile that you want to use as the parent profile. Your new profile inherits all settings and values from the parent profile specified.
  /// [forcehttp10response] Specifies whether to rewrite the HTTP version in the status line of the server to HTTP 1.0 to discourage the client from pipelining or chunking data. The default value is disabled.
  /// [idleTimeout] Specifies an idle timeout in seconds. This setting specifies the number of seconds that a connection is idle before the connection is eligible for deletion.When you specify an idle timeout for the Fast L4 profile, the value must be greater than the bigdb database variable Pva.Scrub time in msec for it to work properly.The default value is 300 seconds.
  /// [maxheaderSize] Specifies the maximum amount of HTTP header data that the system buffers before making a load balancing decision. The default setting is 32768.
  /// [name] Name of the profile_fasthttp
  ProfileFastHttpState({
    this.connpoolMaxreuse,
    this.connpoolMaxsize,
    this.connpoolMinsize,
    this.connpoolReplenish,
    this.connpoolStep,
    this.connpoolidleTimeoutoverride,
    this.defaultsFrom,
    this.forcehttp10response,
    this.idleTimeout,
    this.maxheaderSize,
    this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'connpoolMaxreuse': ?connpoolMaxreuse,
      'connpoolMaxsize': ?connpoolMaxsize,
      'connpoolMinsize': ?connpoolMinsize,
      'connpoolReplenish': ?connpoolReplenish,
      'connpoolStep': ?connpoolStep,
      'connpoolidleTimeoutoverride': ?connpoolidleTimeoutoverride,
      'defaultsFrom': ?defaultsFrom,
      'forcehttp10response': ?forcehttp10response,
      'idleTimeout': ?idleTimeout,
      'maxheaderSize': ?maxheaderSize,
      'name': ?name,
    };
  }

  factory ProfileFastHttpState.fromMap(Map<String, dynamic> map) {
    return ProfileFastHttpState(
      connpoolMaxreuse: map['connpoolMaxreuse'] == null ? null : (map['connpoolMaxreuse'] as int).input(),
      connpoolMaxsize: map['connpoolMaxsize'] == null ? null : (map['connpoolMaxsize'] as int).input(),
      connpoolMinsize: map['connpoolMinsize'] == null ? null : (map['connpoolMinsize'] as int).input(),
      connpoolReplenish: map['connpoolReplenish'] == null ? null : (map['connpoolReplenish'] as String).input(),
      connpoolStep: map['connpoolStep'] == null ? null : (map['connpoolStep'] as int).input(),
      connpoolidleTimeoutoverride: map['connpoolidleTimeoutoverride'] == null ? null : (map['connpoolidleTimeoutoverride'] as int).input(),
      defaultsFrom: map['defaultsFrom'] == null ? null : (map['defaultsFrom'] as String).input(),
      forcehttp10response: map['forcehttp10response'] == null ? null : (map['forcehttp10response'] as String).input(),
      idleTimeout: map['idleTimeout'] == null ? null : (map['idleTimeout'] as int).input(),
      maxheaderSize: map['maxheaderSize'] == null ? null : (map['maxheaderSize'] as int).input(),
      name: map['name'] == null ? null : (map['name'] as String).input(),
    );
  }
}

