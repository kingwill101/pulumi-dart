// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetLoadBalancerServiceHttp {
  /// (list[int]) List of IDs from certificates which the Load Balancer has.
  final pulumi.Input<List<String>> certificates;
  /// (int) Lifetime of the cookie for sticky session (in seconds).
  final pulumi.Input<int> cookieLifetime;
  /// (string) Name of the cookie for sticky session.
  final pulumi.Input<String> cookieName;
  /// (string) Determine if all requests from port 80 should be redirected to port 443.
  final pulumi.Input<bool> redirectHttp;
  /// (string) Determine if sticky sessions are enabled or not.
  final pulumi.Input<bool> stickySessions;

  /// Creates a new [GetLoadBalancerServiceHttp].
  /// [certificates] (list[int]) List of IDs from certificates which the Load Balancer has.
  /// [cookieLifetime] (int) Lifetime of the cookie for sticky session (in seconds).
  /// [cookieName] (string) Name of the cookie for sticky session.
  /// [redirectHttp] (string) Determine if all requests from port 80 should be redirected to port 443.
  /// [stickySessions] (string) Determine if sticky sessions are enabled or not.
  const GetLoadBalancerServiceHttp({
    required this.certificates,
    required this.cookieLifetime,
    required this.cookieName,
    required this.redirectHttp,
    required this.stickySessions,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'certificates': certificates,
      'cookieLifetime': cookieLifetime,
      'cookieName': cookieName,
      'redirectHttp': redirectHttp,
      'stickySessions': stickySessions,
    };
  }

  factory GetLoadBalancerServiceHttp.fromMap(Map<String, dynamic> map) {
    return GetLoadBalancerServiceHttp(
      certificates: pulumi.Input.fromValue((map['certificates'] as List).cast<String>()),
      cookieLifetime: pulumi.Input.fromValue(map['cookieLifetime'] as int),
      cookieName: pulumi.Input.fromValue(map['cookieName'] as String),
      redirectHttp: pulumi.Input.fromValue(map['redirectHttp'] as bool),
      stickySessions: pulumi.Input.fromValue(map['stickySessions'] as bool),
    );
  }
}

