// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetLoadBalancerStickySession {
  /// the name of the cookie sent to the client
  final pulumi.Input<String> cookieName;
  /// the number of seconds until the cookie set by the Load Balancer expires
  final pulumi.Input<int> cookieTtlSeconds;
  /// how and if requests from a client will be persistently served by the same backend droplet
  final pulumi.Input<String> type;

  /// Creates a new [GetLoadBalancerStickySession].
  /// [cookieName] the name of the cookie sent to the client
  /// [cookieTtlSeconds] the number of seconds until the cookie set by the Load Balancer expires
  /// [type] how and if requests from a client will be persistently served by the same backend droplet
  GetLoadBalancerStickySession({
    required this.cookieName,
    required this.cookieTtlSeconds,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cookieName': cookieName,
      'cookieTtlSeconds': cookieTtlSeconds,
      'type': type,
    };
  }

  factory GetLoadBalancerStickySession.fromMap(Map<String, dynamic> map) {
    return GetLoadBalancerStickySession(
      cookieName: (map['cookieName'] as String).input(),
      cookieTtlSeconds: (map['cookieTtlSeconds'] as int).input(),
      type: (map['type'] as String).input(),
    );
  }
}

