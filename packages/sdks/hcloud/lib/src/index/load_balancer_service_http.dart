// ignore_for_file: unused_element, unnecessary_cast


class LoadBalancerServiceHttp {
  /// List of IDs from certificates which the Load Balancer has.
  final List<int>? certificates;
  /// Lifetime of the cookie for sticky session (in seconds). Default: `300`
  final int? cookieLifetime;
  /// Name of the cookie for sticky session. Default: `HCLBSTICKY`
  final String? cookieName;
  /// Redirect HTTP to HTTPS traffic. Only supported for services with `protocol` `https` using the default HTTP port `80`.
  final bool? redirectHttp;
  /// Enable sticky sessions
  final bool? stickySessions;

  /// Creates a new [LoadBalancerServiceHttp].
  /// [certificates] List of IDs from certificates which the Load Balancer has.
  /// [cookieLifetime] Lifetime of the cookie for sticky session (in seconds). Default: `300`
  /// [cookieName] Name of the cookie for sticky session. Default: `HCLBSTICKY`
  /// [redirectHttp] Redirect HTTP to HTTPS traffic. Only supported for services with `protocol` `https` using the default HTTP port `80`.
  /// [stickySessions] Enable sticky sessions
  LoadBalancerServiceHttp({
    this.certificates,
    this.cookieLifetime,
    this.cookieName,
    this.redirectHttp,
    this.stickySessions,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'certificates': ?certificates,
      'cookieLifetime': ?cookieLifetime,
      'cookieName': ?cookieName,
      'redirectHttp': ?redirectHttp,
      'stickySessions': ?stickySessions,
    };
  }

  factory LoadBalancerServiceHttp.fromMap(Map<String, dynamic> map) {
    return LoadBalancerServiceHttp(
      certificates: map['certificates'] == null ? null : (map['certificates'] as List).cast<int>(),
      cookieLifetime: map['cookieLifetime'] == null ? null : map['cookieLifetime'] as int,
      cookieName: map['cookieName'] == null ? null : map['cookieName'] as String,
      redirectHttp: map['redirectHttp'] == null ? null : map['redirectHttp'] as bool,
      stickySessions: map['stickySessions'] == null ? null : map['stickySessions'] as bool,
    );
  }
}

