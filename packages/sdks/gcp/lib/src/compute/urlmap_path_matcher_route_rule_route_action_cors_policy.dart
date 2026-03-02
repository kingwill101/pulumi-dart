// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class URLMapPathMatcherRouteRuleRouteActionCorsPolicy {
  /// In response to a preflight request, setting this to true indicates that the actual request can include user credentials.
  /// This translates to the Access-Control-Allow-Credentials header.
  final pulumi.Input<bool>? allowCredentials;
  /// Specifies the content for the Access-Control-Allow-Headers header.
  final pulumi.Input<List<String>>? allowHeaders;
  /// Specifies the content for the Access-Control-Allow-Methods header.
  final pulumi.Input<List<String>>? allowMethods;
  /// Specifies the regular expression patterns that match allowed origins. For regular expression grammar
  /// please see en.cppreference.com/w/cpp/regex/ecmascript
  /// An origin is allowed if it matches either an item in allowOrigins or an item in allowOriginRegexes.
  final pulumi.Input<List<String>>? allowOriginRegexes;
  /// Specifies the list of origins that will be allowed to do CORS requests.
  /// An origin is allowed if it matches either an item in allowOrigins or an item in allowOriginRegexes.
  final pulumi.Input<List<String>>? allowOrigins;
  /// If true, specifies the CORS policy is disabled. The default value is false, which indicates that the CORS policy is in effect.
  final pulumi.Input<bool>? disabled;
  /// Specifies the content for the Access-Control-Expose-Headers header.
  final pulumi.Input<List<String>>? exposeHeaders;
  /// Specifies how long results of a preflight request can be cached in seconds.
  /// This translates to the Access-Control-Max-Age header.
  final pulumi.Input<int>? maxAge;

  /// Creates a new [URLMapPathMatcherRouteRuleRouteActionCorsPolicy].
  /// [allowCredentials] In response to a preflight request, setting this to true indicates that the actual request can include user credentials.
  /// [allowHeaders] Specifies the content for the Access-Control-Allow-Headers header.
  /// [allowMethods] Specifies the content for the Access-Control-Allow-Methods header.
  /// [allowOriginRegexes] Specifies the regular expression patterns that match allowed origins. For regular expression grammar
  /// [allowOrigins] Specifies the list of origins that will be allowed to do CORS requests.
  /// [disabled] If true, specifies the CORS policy is disabled. The default value is false, which indicates that the CORS policy is in effect.
  /// [exposeHeaders] Specifies the content for the Access-Control-Expose-Headers header.
  /// [maxAge] Specifies how long results of a preflight request can be cached in seconds.
  URLMapPathMatcherRouteRuleRouteActionCorsPolicy({
    this.allowCredentials,
    this.allowHeaders,
    this.allowMethods,
    this.allowOriginRegexes,
    this.allowOrigins,
    this.disabled,
    this.exposeHeaders,
    this.maxAge,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allowCredentials': ?allowCredentials,
      'allowHeaders': ?allowHeaders,
      'allowMethods': ?allowMethods,
      'allowOriginRegexes': ?allowOriginRegexes,
      'allowOrigins': ?allowOrigins,
      'disabled': ?disabled,
      'exposeHeaders': ?exposeHeaders,
      'maxAge': ?maxAge,
    };
  }

  factory URLMapPathMatcherRouteRuleRouteActionCorsPolicy.fromMap(Map<String, dynamic> map) {
    return URLMapPathMatcherRouteRuleRouteActionCorsPolicy(
      allowCredentials: map['allowCredentials'] == null ? null : (map['allowCredentials']! as bool).input(),
      allowHeaders: map['allowHeaders'] == null ? null : ((map['allowHeaders']! as List).cast<String>()).input(),
      allowMethods: map['allowMethods'] == null ? null : ((map['allowMethods']! as List).cast<String>()).input(),
      allowOriginRegexes: map['allowOriginRegexes'] == null ? null : ((map['allowOriginRegexes']! as List).cast<String>()).input(),
      allowOrigins: map['allowOrigins'] == null ? null : ((map['allowOrigins']! as List).cast<String>()).input(),
      disabled: map['disabled'] == null ? null : (map['disabled']! as bool).input(),
      exposeHeaders: map['exposeHeaders'] == null ? null : ((map['exposeHeaders']! as List).cast<String>()).input(),
      maxAge: map['maxAge'] == null ? null : (map['maxAge']! as int).input(),
    );
  }
}

