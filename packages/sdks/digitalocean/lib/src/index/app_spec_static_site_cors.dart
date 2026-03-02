// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'app_spec_static_site_cors_allow_origins.dart';

class AppSpecStaticSiteCors {
  /// Whether browsers should expose the response to the client-side JavaScript code when the request’s credentials mode is `include`. This configures the Access-Control-Allow-Credentials header.
  final pulumi.Input<bool>? allowCredentials;
  /// The set of allowed HTTP request headers. This configures the Access-Control-Allow-Headers header.
  final pulumi.Input<List<String>>? allowHeaders;
  /// The set of allowed HTTP methods. This configures the Access-Control-Allow-Methods header.
  final pulumi.Input<List<String>>? allowMethods;
  /// The set of allowed CORS origins. This configures the Access-Control-Allow-Origin header.
  final pulumi.Input<AppSpecStaticSiteCorsAllowOrigins>? allowOrigins;
  /// The set of HTTP response headers that browsers are allowed to access. This configures the Access-Control-Expose-Headers header.
  final pulumi.Input<List<String>>? exposeHeaders;
  /// An optional duration specifying how long browsers can cache the results of a preflight request. This configures the Access-Control-Max-Age header. Example: `5h30m`.
  final pulumi.Input<String>? maxAge;

  /// Creates a new [AppSpecStaticSiteCors].
  /// [allowCredentials] Whether browsers should expose the response to the client-side JavaScript code when the request’s credentials mode is `include`. This configures the Access-Control-Allow-Credentials header.
  /// [allowHeaders] The set of allowed HTTP request headers. This configures the Access-Control-Allow-Headers header.
  /// [allowMethods] The set of allowed HTTP methods. This configures the Access-Control-Allow-Methods header.
  /// [allowOrigins] The set of allowed CORS origins. This configures the Access-Control-Allow-Origin header.
  /// [exposeHeaders] The set of HTTP response headers that browsers are allowed to access. This configures the Access-Control-Expose-Headers header.
  /// [maxAge] An optional duration specifying how long browsers can cache the results of a preflight request. This configures the Access-Control-Max-Age header. Example: `5h30m`.
  AppSpecStaticSiteCors({
    this.allowCredentials,
    this.allowHeaders,
    this.allowMethods,
    this.allowOrigins,
    this.exposeHeaders,
    this.maxAge,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allowCredentials': ?allowCredentials,
      'allowHeaders': ?allowHeaders,
      'allowMethods': ?allowMethods,
      'allowOrigins': ?pulumi.Input.mapOptionalInputValue<AppSpecStaticSiteCorsAllowOrigins, Map<String, dynamic>>(allowOrigins, (value) => value.toMap()),
      'exposeHeaders': ?exposeHeaders,
      'maxAge': ?maxAge,
    };
  }

  factory AppSpecStaticSiteCors.fromMap(Map<String, dynamic> map) {
    return AppSpecStaticSiteCors(
      allowCredentials: map['allowCredentials'] == null ? null : (map['allowCredentials'] as bool).input(),
      allowHeaders: map['allowHeaders'] == null ? null : ((map['allowHeaders'] as List).cast<String>()).input(),
      allowMethods: map['allowMethods'] == null ? null : ((map['allowMethods'] as List).cast<String>()).input(),
      allowOrigins: map['allowOrigins'] == null ? null : (AppSpecStaticSiteCorsAllowOrigins.fromMap((map['allowOrigins'] as Map).cast<String, dynamic>())).input(),
      exposeHeaders: map['exposeHeaders'] == null ? null : ((map['exposeHeaders'] as List).cast<String>()).input(),
      maxAge: map['maxAge'] == null ? null : (map['maxAge'] as String).input(),
    );
  }
}

