// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The Specification for allowing client side cross-origin requests.
class HttpRouteCorsPolicyResponse {
  /// In response to a preflight request, setting this to true indicates that the actual request can include user credentials. This translates to the Access-Control-Allow-Credentials header. Default value is false.
  final pulumi.Input<bool> allowCredentials;
  /// Specifies the content for Access-Control-Allow-Headers header.
  final pulumi.Input<List<String>> allowHeaders;
  /// Specifies the content for Access-Control-Allow-Methods header.
  final pulumi.Input<List<String>> allowMethods;
  /// Specifies the regular expression patterns that match allowed origins. For regular expression grammar, please see https://github.com/google/re2/wiki/Syntax.
  final pulumi.Input<List<String>> allowOriginRegexes;
  /// Specifies the list of origins that will be allowed to do CORS requests. An origin is allowed if it matches either an item in allow_origins or an item in allow_origin_regexes.
  final pulumi.Input<List<String>> allowOrigins;
  /// If true, the CORS policy is disabled. The default value is false, which indicates that the CORS policy is in effect.
  final pulumi.Input<bool> disabled;
  /// Specifies the content for Access-Control-Expose-Headers header.
  final pulumi.Input<List<String>> exposeHeaders;
  /// Specifies how long result of a preflight request can be cached in seconds. This translates to the Access-Control-Max-Age header.
  final pulumi.Input<String> maxAge;

  /// Creates a new [HttpRouteCorsPolicyResponse].
  /// [allowCredentials] In response to a preflight request, setting this to true indicates that the actual request can include user credentials. This translates to the Access-Control-Allow-Credentials header. Default value is false.
  /// [allowHeaders] Specifies the content for Access-Control-Allow-Headers header.
  /// [allowMethods] Specifies the content for Access-Control-Allow-Methods header.
  /// [allowOriginRegexes] Specifies the regular expression patterns that match allowed origins. For regular expression grammar, please see https://github.com/google/re2/wiki/Syntax.
  /// [allowOrigins] Specifies the list of origins that will be allowed to do CORS requests. An origin is allowed if it matches either an item in allow_origins or an item in allow_origin_regexes.
  /// [disabled] If true, the CORS policy is disabled. The default value is false, which indicates that the CORS policy is in effect.
  /// [exposeHeaders] Specifies the content for Access-Control-Expose-Headers header.
  /// [maxAge] Specifies how long result of a preflight request can be cached in seconds. This translates to the Access-Control-Max-Age header.
  HttpRouteCorsPolicyResponse({
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

  factory HttpRouteCorsPolicyResponse.fromMap(Map<String, dynamic> map) {
    return HttpRouteCorsPolicyResponse(
      allowCredentials: (map['allowCredentials'] as bool).input(),
      allowHeaders: ((map['allowHeaders'] as List).cast<String>()).input(),
      allowMethods: ((map['allowMethods'] as List).cast<String>()).input(),
      allowOriginRegexes: ((map['allowOriginRegexes'] as List).cast<String>()).input(),
      allowOrigins: ((map['allowOrigins'] as List).cast<String>()).input(),
      disabled: (map['disabled'] as bool).input(),
      exposeHeaders: ((map['exposeHeaders'] as List).cast<String>()).input(),
      maxAge: (map['maxAge'] as String).input(),
    );
  }
}

