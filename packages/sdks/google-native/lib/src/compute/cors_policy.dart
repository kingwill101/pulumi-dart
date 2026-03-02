// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The specification for allowing client-side cross-origin requests. For more information about the W3C recommendation for cross-origin resource sharing (CORS), see Fetch API Living Standard.
class CorsPolicy {
  /// In response to a preflight request, setting this to true indicates that the actual request can include user credentials. This field translates to the Access-Control-Allow-Credentials header. Default is false.
  final pulumi.Input<bool>? allowCredentials;
  /// Specifies the content for the Access-Control-Allow-Headers header.
  final pulumi.Input<List<String>>? allowHeaders;
  /// Specifies the content for the Access-Control-Allow-Methods header.
  final pulumi.Input<List<String>>? allowMethods;
  /// Specifies a regular expression that matches allowed origins. For more information about the regular expression syntax, see Syntax. An origin is allowed if it matches either an item in allowOrigins or an item in allowOriginRegexes. Regular expressions can only be used when the loadBalancingScheme is set to INTERNAL_SELF_MANAGED.
  final pulumi.Input<List<String>>? allowOriginRegexes;
  /// Specifies the list of origins that is allowed to do CORS requests. An origin is allowed if it matches either an item in allowOrigins or an item in allowOriginRegexes.
  final pulumi.Input<List<String>>? allowOrigins;
  /// If true, the setting specifies the CORS policy is disabled. The default value of false, which indicates that the CORS policy is in effect.
  final pulumi.Input<bool>? disabled;
  /// Specifies the content for the Access-Control-Expose-Headers header.
  final pulumi.Input<List<String>>? exposeHeaders;
  /// Specifies how long results of a preflight request can be cached in seconds. This field translates to the Access-Control-Max-Age header.
  final pulumi.Input<int>? maxAge;

  /// Creates a new [CorsPolicy].
  /// [allowCredentials] In response to a preflight request, setting this to true indicates that the actual request can include user credentials. This field translates to the Access-Control-Allow-Credentials header. Default is false.
  /// [allowHeaders] Specifies the content for the Access-Control-Allow-Headers header.
  /// [allowMethods] Specifies the content for the Access-Control-Allow-Methods header.
  /// [allowOriginRegexes] Specifies a regular expression that matches allowed origins. For more information about the regular expression syntax, see Syntax. An origin is allowed if it matches either an item in allowOrigins or an item in allowOriginRegexes. Regular expressions can only be used when the loadBalancingScheme is set to INTERNAL_SELF_MANAGED.
  /// [allowOrigins] Specifies the list of origins that is allowed to do CORS requests. An origin is allowed if it matches either an item in allowOrigins or an item in allowOriginRegexes.
  /// [disabled] If true, the setting specifies the CORS policy is disabled. The default value of false, which indicates that the CORS policy is in effect.
  /// [exposeHeaders] Specifies the content for the Access-Control-Expose-Headers header.
  /// [maxAge] Specifies how long results of a preflight request can be cached in seconds. This field translates to the Access-Control-Max-Age header.
  CorsPolicy({
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

  factory CorsPolicy.fromMap(Map<String, dynamic> map) {
    return CorsPolicy(
      allowCredentials: map['allowCredentials'] == null ? null : (map['allowCredentials'] as bool).input(),
      allowHeaders: map['allowHeaders'] == null ? null : ((map['allowHeaders'] as List).cast<String>()).input(),
      allowMethods: map['allowMethods'] == null ? null : ((map['allowMethods'] as List).cast<String>()).input(),
      allowOriginRegexes: map['allowOriginRegexes'] == null ? null : ((map['allowOriginRegexes'] as List).cast<String>()).input(),
      allowOrigins: map['allowOrigins'] == null ? null : ((map['allowOrigins'] as List).cast<String>()).input(),
      disabled: map['disabled'] == null ? null : (map['disabled'] as bool).input(),
      exposeHeaders: map['exposeHeaders'] == null ? null : ((map['exposeHeaders'] as List).cast<String>()).input(),
      maxAge: map['maxAge'] == null ? null : (map['maxAge'] as int).input(),
    );
  }
}

