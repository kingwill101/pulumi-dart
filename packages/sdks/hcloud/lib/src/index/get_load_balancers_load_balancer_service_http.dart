// ignore_for_file: unused_element, unnecessary_cast


class GetLoadBalancersLoadBalancerServiceHttp {
  final List<String> certificates;
  final int cookieLifetime;
  final String cookieName;
  final bool redirectHttp;
  final bool stickySessions;

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
      certificates: (map['certificates'] as List).cast<String>(),
      cookieLifetime: map['cookieLifetime'] as int,
      cookieName: map['cookieName'] as String,
      redirectHttp: map['redirectHttp'] as bool,
      stickySessions: map['stickySessions'] as bool,
    );
  }
}

