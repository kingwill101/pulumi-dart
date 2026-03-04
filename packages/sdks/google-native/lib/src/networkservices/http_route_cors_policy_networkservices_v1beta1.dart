// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The Specification for allowing client side cross-origin requests.
class HttpRouteCorsPolicyNetworkservicesV1beta1 {
  /// In response to a preflight request, setting this to true indicates that the actual request can include user credentials. This translates to the Access-Control-Allow-Credentials header. Default value is false.
  final pulumi.Input<bool>? allowCredentials;

  /// Specifies the content for Access-Control-Allow-Headers header.
  final pulumi.Input<List<String>>? allowHeaders;

  /// Specifies the content for Access-Control-Allow-Methods header.
  final pulumi.Input<List<String>>? allowMethods;

  /// Specifies the regular expression patterns that match allowed origins. For regular expression grammar, please see https://github.com/google/re2/wiki/Syntax.
  final pulumi.Input<List<String>>? allowOriginRegexes;

  /// Specifies the list of origins that will be allowed to do CORS requests. An origin is allowed if it matches either an item in allow_origins or an item in allow_origin_regexes.
  final pulumi.Input<List<String>>? allowOrigins;

  /// If true, the CORS policy is disabled. The default value is false, which indicates that the CORS policy is in effect.
  final pulumi.Input<bool>? disabled;

  /// Specifies the content for Access-Control-Expose-Headers header.
  final pulumi.Input<List<String>>? exposeHeaders;

  /// Specifies how long result of a preflight request can be cached in seconds. This translates to the Access-Control-Max-Age header.
  final pulumi.Input<String>? maxAge;

  /// Creates a new [HttpRouteCorsPolicyNetworkservicesV1beta1].
  /// [allowCredentials] In response to a preflight request, setting this to true indicates that the actual request can include user credentials. This translates to the Access-Control-Allow-Credentials header. Default value is false.
  /// [allowHeaders] Specifies the content for Access-Control-Allow-Headers header.
  /// [allowMethods] Specifies the content for Access-Control-Allow-Methods header.
  /// [allowOriginRegexes] Specifies the regular expression patterns that match allowed origins. For regular expression grammar, please see https://github.com/google/re2/wiki/Syntax.
  /// [allowOrigins] Specifies the list of origins that will be allowed to do CORS requests. An origin is allowed if it matches either an item in allow_origins or an item in allow_origin_regexes.
  /// [disabled] If true, the CORS policy is disabled. The default value is false, which indicates that the CORS policy is in effect.
  /// [exposeHeaders] Specifies the content for Access-Control-Expose-Headers header.
  /// [maxAge] Specifies how long result of a preflight request can be cached in seconds. This translates to the Access-Control-Max-Age header.
  HttpRouteCorsPolicyNetworkservicesV1beta1({
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

  factory HttpRouteCorsPolicyNetworkservicesV1beta1.fromMap(
    Map<String, dynamic> map,
  ) {
    return HttpRouteCorsPolicyNetworkservicesV1beta1(
      allowCredentials: (() {
        final guardedValue = map['allowCredentials'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      allowHeaders: (() {
        final guardedValue = map['allowHeaders'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
      })(),
      allowMethods: (() {
        final guardedValue = map['allowMethods'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
      })(),
      allowOriginRegexes: (() {
        final guardedValue = map['allowOriginRegexes'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
      })(),
      allowOrigins: (() {
        final guardedValue = map['allowOrigins'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
      })(),
      disabled: (() {
        final guardedValue = map['disabled'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      exposeHeaders: (() {
        final guardedValue = map['exposeHeaders'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
      })(),
      maxAge: (() {
        final guardedValue = map['maxAge'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
