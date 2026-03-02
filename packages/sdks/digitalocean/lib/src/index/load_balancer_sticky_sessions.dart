// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class LoadBalancerStickySessions {
  /// The name to be used for the cookie sent to the client. This attribute is required when using `cookies` for the sticky sessions type.
  final pulumi.Input<String>? cookieName;
  /// The number of seconds until the cookie set by the Load Balancer expires. This attribute is required when using `cookies` for the sticky sessions type.
  final pulumi.Input<int>? cookieTtlSeconds;
  /// An attribute indicating how and if requests from a client will be persistently served by the same backend Droplet. The possible values are `cookies` or `none`. If not specified, the default value is `none`.
  final pulumi.Input<String>? type;

  /// Creates a new [LoadBalancerStickySessions].
  /// [cookieName] The name to be used for the cookie sent to the client. This attribute is required when using `cookies` for the sticky sessions type.
  /// [cookieTtlSeconds] The number of seconds until the cookie set by the Load Balancer expires. This attribute is required when using `cookies` for the sticky sessions type.
  /// [type] An attribute indicating how and if requests from a client will be persistently served by the same backend Droplet. The possible values are `cookies` or `none`. If not specified, the default value is `none`.
  LoadBalancerStickySessions({
    this.cookieName,
    this.cookieTtlSeconds,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cookieName': ?cookieName,
      'cookieTtlSeconds': ?cookieTtlSeconds,
      'type': ?type,
    };
  }

  factory LoadBalancerStickySessions.fromMap(Map<String, dynamic> map) {
    return LoadBalancerStickySessions(
      cookieName: map['cookieName'] == null ? null : (map['cookieName']! as String).input(),
      cookieTtlSeconds: map['cookieTtlSeconds'] == null ? null : (map['cookieTtlSeconds']! as int).input(),
      type: map['type'] == null ? null : (map['type']! as String).input(),
    );
  }
}

