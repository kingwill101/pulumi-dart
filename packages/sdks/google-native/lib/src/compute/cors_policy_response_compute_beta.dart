// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The specification for allowing client-side cross-origin requests. For more information about the W3C recommendation for cross-origin resource sharing (CORS), see Fetch API Living Standard.
class CorsPolicyResponseComputeBeta {
  /// In response to a preflight request, setting this to true indicates that the actual request can include user credentials. This field translates to the Access-Control-Allow-Credentials header. Default is false.
  final pulumi.Input<bool> allowCredentials;
  /// Specifies the content for the Access-Control-Allow-Headers header.
  final pulumi.Input<List<String>> allowHeaders;
  /// Specifies the content for the Access-Control-Allow-Methods header.
  final pulumi.Input<List<String>> allowMethods;
  /// Specifies a regular expression that matches allowed origins. For more information about the regular expression syntax, see Syntax. An origin is allowed if it matches either an item in allowOrigins or an item in allowOriginRegexes. Regular expressions can only be used when the loadBalancingScheme is set to INTERNAL_SELF_MANAGED.
  final pulumi.Input<List<String>> allowOriginRegexes;
  /// Specifies the list of origins that is allowed to do CORS requests. An origin is allowed if it matches either an item in allowOrigins or an item in allowOriginRegexes.
  final pulumi.Input<List<String>> allowOrigins;
  /// If true, the setting specifies the CORS policy is disabled. The default value of false, which indicates that the CORS policy is in effect.
  final pulumi.Input<bool> disabled;
  /// Specifies the content for the Access-Control-Expose-Headers header.
  final pulumi.Input<List<String>> exposeHeaders;
  /// Specifies how long results of a preflight request can be cached in seconds. This field translates to the Access-Control-Max-Age header.
  final pulumi.Input<int> maxAge;

  /// Creates a new [CorsPolicyResponseComputeBeta].
  /// [allowCredentials] In response to a preflight request, setting this to true indicates that the actual request can include user credentials. This field translates to the Access-Control-Allow-Credentials header. Default is false.
  /// [allowHeaders] Specifies the content for the Access-Control-Allow-Headers header.
  /// [allowMethods] Specifies the content for the Access-Control-Allow-Methods header.
  /// [allowOriginRegexes] Specifies a regular expression that matches allowed origins. For more information about the regular expression syntax, see Syntax. An origin is allowed if it matches either an item in allowOrigins or an item in allowOriginRegexes. Regular expressions can only be used when the loadBalancingScheme is set to INTERNAL_SELF_MANAGED.
  /// [allowOrigins] Specifies the list of origins that is allowed to do CORS requests. An origin is allowed if it matches either an item in allowOrigins or an item in allowOriginRegexes.
  /// [disabled] If true, the setting specifies the CORS policy is disabled. The default value of false, which indicates that the CORS policy is in effect.
  /// [exposeHeaders] Specifies the content for the Access-Control-Expose-Headers header.
  /// [maxAge] Specifies how long results of a preflight request can be cached in seconds. This field translates to the Access-Control-Max-Age header.
  CorsPolicyResponseComputeBeta({
    required this.allowCredentials,
    required this.allowHeaders,
    required this.allowMethods,
    required this.allowOriginRegexes,
    required this.allowOrigins,
    required this.disabled,
    required this.exposeHeaders,
    required this.maxAge,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allowCredentials': allowCredentials,
      'allowHeaders': allowHeaders,
      'allowMethods': allowMethods,
      'allowOriginRegexes': allowOriginRegexes,
      'allowOrigins': allowOrigins,
      'disabled': disabled,
      'exposeHeaders': exposeHeaders,
      'maxAge': maxAge,
    };
  }

  factory CorsPolicyResponseComputeBeta.fromMap(Map<String, dynamic> map) {
    return CorsPolicyResponseComputeBeta(
      allowCredentials: pulumi.Input.fromValue(map['allowCredentials'] as bool),
      allowHeaders: pulumi.Input.fromValue((map['allowHeaders'] as List).cast<String>()),
      allowMethods: pulumi.Input.fromValue((map['allowMethods'] as List).cast<String>()),
      allowOriginRegexes: pulumi.Input.fromValue((map['allowOriginRegexes'] as List).cast<String>()),
      allowOrigins: pulumi.Input.fromValue((map['allowOrigins'] as List).cast<String>()),
      disabled: pulumi.Input.fromValue(map['disabled'] as bool),
      exposeHeaders: pulumi.Input.fromValue((map['exposeHeaders'] as List).cast<String>()),
      maxAge: pulumi.Input.fromValue(map['maxAge'] as int),
    );
  }
}

