// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class EdgeCacheServiceRoutingPathMatcherRouteRuleRouteActionCorsPolicy {
  /// In response to a preflight request, setting this to true indicates that the actual request can include user credentials.
  /// This translates to the Access-Control-Allow-Credentials response header.
  final pulumi.Input<bool>? allowCredentials;
  /// Specifies the content for the Access-Control-Allow-Headers response header.
  final pulumi.Input<List<String>>? allowHeaders;
  /// Specifies the content for the Access-Control-Allow-Methods response header.
  final pulumi.Input<List<String>>? allowMethods;
  /// Specifies the list of origins that will be allowed to do CORS requests.
  /// This translates to the Access-Control-Allow-Origin response header.
  final pulumi.Input<List<String>>? allowOrigins;
  /// If true, specifies the CORS policy is disabled. The default value is false, which indicates that the CORS policy is in effect.
  final pulumi.Input<bool>? disabled;
  /// Specifies the content for the Access-Control-Allow-Headers response header.
  final pulumi.Input<List<String>>? exposeHeaders;
  /// Specifies how long results of a preflight request can be cached by a client in seconds. Note that many browser clients enforce a maximum TTL of 600s (10 minutes).
  /// - Setting the value to -1 forces a pre-flight check for all requests (not recommended)
  /// - A maximum TTL of 86400s can be set, but note that (as above) some clients may force pre-flight checks at a more regular interval.
  /// - This translates to the Access-Control-Max-Age header.
  /// A duration in seconds with up to nine fractional digits, terminated by 's'. Example: "3.5s".
  final pulumi.Input<String> maxAge;

  /// Creates a new [EdgeCacheServiceRoutingPathMatcherRouteRuleRouteActionCorsPolicy].
  /// [allowCredentials] In response to a preflight request, setting this to true indicates that the actual request can include user credentials.
  /// [allowHeaders] Specifies the content for the Access-Control-Allow-Headers response header.
  /// [allowMethods] Specifies the content for the Access-Control-Allow-Methods response header.
  /// [allowOrigins] Specifies the list of origins that will be allowed to do CORS requests.
  /// [disabled] If true, specifies the CORS policy is disabled. The default value is false, which indicates that the CORS policy is in effect.
  /// [exposeHeaders] Specifies the content for the Access-Control-Allow-Headers response header.
  /// [maxAge] Specifies how long results of a preflight request can be cached by a client in seconds. Note that many browser clients enforce a maximum TTL of 600s (10 minutes).
  EdgeCacheServiceRoutingPathMatcherRouteRuleRouteActionCorsPolicy({
    this.allowCredentials,
    this.allowHeaders,
    this.allowMethods,
    this.allowOrigins,
    this.disabled,
    this.exposeHeaders,
    required this.maxAge,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allowCredentials': ?allowCredentials,
      'allowHeaders': ?allowHeaders,
      'allowMethods': ?allowMethods,
      'allowOrigins': ?allowOrigins,
      'disabled': ?disabled,
      'exposeHeaders': ?exposeHeaders,
      'maxAge': maxAge,
    };
  }

  factory EdgeCacheServiceRoutingPathMatcherRouteRuleRouteActionCorsPolicy.fromMap(Map<String, dynamic> map) {
    return EdgeCacheServiceRoutingPathMatcherRouteRuleRouteActionCorsPolicy(
      allowCredentials: (() { final guardedValue = map['allowCredentials']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      allowHeaders: (() { final guardedValue = map['allowHeaders']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      allowMethods: (() { final guardedValue = map['allowMethods']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      allowOrigins: (() { final guardedValue = map['allowOrigins']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      disabled: (() { final guardedValue = map['disabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      exposeHeaders: (() { final guardedValue = map['exposeHeaders']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      maxAge: pulumi.Input.fromValue(map['maxAge'] as String),
    );
  }
}

