// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ZeroTrustAccessApplicationCorsHeaders {
  /// Allows all HTTP request headers.
  final pulumi.Input<bool?>? allowAllHeaders;
  /// Allows all HTTP request methods.
  final pulumi.Input<bool?>? allowAllMethods;
  /// Allows all origins.
  final pulumi.Input<bool?>? allowAllOrigins;
  /// When set to `true`, includes credentials (cookies, authorization headers, or TLS client certificates) with requests.
  final pulumi.Input<bool?>? allowCredentials;
  /// Allowed HTTP request headers.
  final pulumi.Input<List<String>?>? allowedHeaders;
  /// Allowed HTTP request methods.
  final pulumi.Input<List<String>?>? allowedMethods;
  /// Allowed origins.
  final pulumi.Input<List<String>?>? allowedOrigins;
  /// The maximum number of seconds the results of a preflight request can be cached.
  final pulumi.Input<double?>? maxAge;

  /// Creates a new [ZeroTrustAccessApplicationCorsHeaders].
  /// [allowAllHeaders] Allows all HTTP request headers.
  /// [allowAllMethods] Allows all HTTP request methods.
  /// [allowAllOrigins] Allows all origins.
  /// [allowCredentials] When set to `true`, includes credentials (cookies, authorization headers, or TLS client certificates) with requests.
  /// [allowedHeaders] Allowed HTTP request headers.
  /// [allowedMethods] Allowed HTTP request methods.
  /// [allowedOrigins] Allowed origins.
  /// [maxAge] The maximum number of seconds the results of a preflight request can be cached.
  const ZeroTrustAccessApplicationCorsHeaders({
    this.allowAllHeaders,
    this.allowAllMethods,
    this.allowAllOrigins,
    this.allowCredentials,
    this.allowedHeaders,
    this.allowedMethods,
    this.allowedOrigins,
    this.maxAge,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allowAllHeaders': ?allowAllHeaders,
      'allowAllMethods': ?allowAllMethods,
      'allowAllOrigins': ?allowAllOrigins,
      'allowCredentials': ?allowCredentials,
      'allowedHeaders': ?allowedHeaders,
      'allowedMethods': ?allowedMethods,
      'allowedOrigins': ?allowedOrigins,
      'maxAge': ?maxAge,
    };
  }

  factory ZeroTrustAccessApplicationCorsHeaders.fromMap(Map<String, dynamic> map) {
    return ZeroTrustAccessApplicationCorsHeaders(
      allowAllHeaders: (() { final guardedValue = map['allowAllHeaders']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      allowAllMethods: (() { final guardedValue = map['allowAllMethods']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      allowAllOrigins: (() { final guardedValue = map['allowAllOrigins']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      allowCredentials: (() { final guardedValue = map['allowCredentials']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      allowedHeaders: (() { final guardedValue = map['allowedHeaders']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      allowedMethods: (() { final guardedValue = map['allowedMethods']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      allowedOrigins: (() { final guardedValue = map['allowedOrigins']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      maxAge: (() { final guardedValue = map['maxAge']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toDouble()); })(),
    );
  }
}
