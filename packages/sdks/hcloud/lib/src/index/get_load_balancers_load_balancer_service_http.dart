// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetLoadBalancersLoadBalancerServiceHttp {
  final pulumi.Input<List<String>> certificates;
  final pulumi.Input<int> cookieLifetime;
  final pulumi.Input<String> cookieName;
  final pulumi.Input<bool> redirectHttp;
  final pulumi.Input<bool> stickySessions;

  /// Creates a new [GetLoadBalancersLoadBalancerServiceHttp].
  /// [certificates] Required.
  /// [cookieLifetime] Required.
  /// [cookieName] Required.
  /// [redirectHttp] Required.
  /// [stickySessions] Required.
  GetLoadBalancersLoadBalancerServiceHttp({
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

  factory GetLoadBalancersLoadBalancerServiceHttp.fromMap(Map<String, dynamic> map) {
    return GetLoadBalancersLoadBalancerServiceHttp(
      certificates: pulumi.Input.fromValue((map['certificates'] as List).cast<String>()),
      cookieLifetime: pulumi.Input.fromValue(map['cookieLifetime'] as int),
      cookieName: pulumi.Input.fromValue(map['cookieName'] as String),
      redirectHttp: pulumi.Input.fromValue(map['redirectHttp'] as bool),
      stickySessions: pulumi.Input.fromValue(map['stickySessions'] as bool),
    );
  }
}

