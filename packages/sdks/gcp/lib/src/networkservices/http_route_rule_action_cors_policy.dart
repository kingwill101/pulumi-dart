// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class HttpRouteRuleActionCorsPolicy {
  /// In response to a preflight request, setting this to true indicates that the actual request can include user credentials.
  final pulumi.Input<bool?>? allowCredentials;
  /// Specifies the content for Access-Control-Allow-Headers header.
  final pulumi.Input<List<String>?>? allowHeaders;
  /// Specifies the content for Access-Control-Allow-Methods header.
  final pulumi.Input<List<String>?>? allowMethods;
  /// Specifies the regular expression patterns that match allowed origins.
  final pulumi.Input<List<String>?>? allowOriginRegexes;
  /// Specifies the list of origins that will be allowed to do CORS requests.
  final pulumi.Input<List<String>?>? allowOrigins;
  /// If true, the CORS policy is disabled. The default value is false, which indicates that the CORS policy is in effect.
  final pulumi.Input<bool?>? disabled;
  /// Specifies the content for Access-Control-Expose-Headers header.
  final pulumi.Input<List<String>?>? exposeHeaders;
  /// Specifies how long result of a preflight request can be cached in seconds.
  final pulumi.Input<String?>? maxAge;

  /// Creates a new [HttpRouteRuleActionCorsPolicy].
  /// [allowCredentials] In response to a preflight request, setting this to true indicates that the actual request can include user credentials.
  /// [allowHeaders] Specifies the content for Access-Control-Allow-Headers header.
  /// [allowMethods] Specifies the content for Access-Control-Allow-Methods header.
  /// [allowOriginRegexes] Specifies the regular expression patterns that match allowed origins.
  /// [allowOrigins] Specifies the list of origins that will be allowed to do CORS requests.
  /// [disabled] If true, the CORS policy is disabled. The default value is false, which indicates that the CORS policy is in effect.
  /// [exposeHeaders] Specifies the content for Access-Control-Expose-Headers header.
  /// [maxAge] Specifies how long result of a preflight request can be cached in seconds.
  const HttpRouteRuleActionCorsPolicy({
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

  factory HttpRouteRuleActionCorsPolicy.fromMap(Map<String, dynamic> map) {
    return HttpRouteRuleActionCorsPolicy(
      allowCredentials: (() { final guardedValue = map['allowCredentials']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      allowHeaders: (() { final guardedValue = map['allowHeaders']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      allowMethods: (() { final guardedValue = map['allowMethods']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      allowOriginRegexes: (() { final guardedValue = map['allowOriginRegexes']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      allowOrigins: (() { final guardedValue = map['allowOrigins']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      disabled: (() { final guardedValue = map['disabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      exposeHeaders: (() { final guardedValue = map['exposeHeaders']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      maxAge: (() { final guardedValue = map['maxAge']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
