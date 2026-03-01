// ignore_for_file: unused_element, unnecessary_cast


class GetLoadBalancerStickySession {
  /// the name of the cookie sent to the client
  final String cookieName;
  /// the number of seconds until the cookie set by the Load Balancer expires
  final int cookieTtlSeconds;
  /// how and if requests from a client will be persistently served by the same backend droplet
  final String type;

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
      cookieName: map['cookieName'] as String,
      cookieTtlSeconds: map['cookieTtlSeconds'] as int,
      type: map['type'] as String,
    );
  }
}

