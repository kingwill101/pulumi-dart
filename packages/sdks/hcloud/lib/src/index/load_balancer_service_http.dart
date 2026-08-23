// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class LoadBalancerServiceHttp {
  /// List of IDs from certificates which the Load Balancer has.
  final pulumi.Input<List<int>>? certificates;
  /// Lifetime of the cookie for sticky session (in seconds). Default: `300`
  final pulumi.Input<int>? cookieLifetime;
  /// Name of the cookie for sticky session. Default: `HCLBSTICKY`
  final pulumi.Input<String>? cookieName;
  /// Redirect HTTP to HTTPS traffic. Only supported for services with `protocol` `https` using the default HTTP port `80`.
  final pulumi.Input<bool>? redirectHttp;
  /// Enable sticky sessions
  final pulumi.Input<bool>? stickySessions;
  /// Idle timeout for HTTP connections in seconds. Must be between `30` and `300`.
  final pulumi.Input<int>? timeoutIdle;

  /// Creates a new [LoadBalancerServiceHttp].
  /// [certificates] List of IDs from certificates which the Load Balancer has.
  /// [cookieLifetime] Lifetime of the cookie for sticky session (in seconds). Default: `300`
  /// [cookieName] Name of the cookie for sticky session. Default: `HCLBSTICKY`
  /// [redirectHttp] Redirect HTTP to HTTPS traffic. Only supported for services with `protocol` `https` using the default HTTP port `80`.
  /// [stickySessions] Enable sticky sessions
  /// [timeoutIdle] Idle timeout for HTTP connections in seconds. Must be between `30` and `300`.
  const LoadBalancerServiceHttp({
    this.certificates,
    this.cookieLifetime,
    this.cookieName,
    this.redirectHttp,
    this.stickySessions,
    this.timeoutIdle,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'certificates': ?certificates,
      'cookieLifetime': ?cookieLifetime,
      'cookieName': ?cookieName,
      'redirectHttp': ?redirectHttp,
      'stickySessions': ?stickySessions,
      'timeoutIdle': ?timeoutIdle,
    };
  }

  factory LoadBalancerServiceHttp.fromMap(Map<String, dynamic> map) {
    return LoadBalancerServiceHttp(
      certificates: (() { final guardedValue = map['certificates']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<int>()); })(),
      cookieLifetime: (() { final guardedValue = map['cookieLifetime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      cookieName: (() { final guardedValue = map['cookieName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      redirectHttp: (() { final guardedValue = map['redirectHttp']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      stickySessions: (() { final guardedValue = map['stickySessions']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      timeoutIdle: (() { final guardedValue = map['timeoutIdle']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
    );
  }
}
