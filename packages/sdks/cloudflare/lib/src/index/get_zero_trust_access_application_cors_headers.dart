// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetZeroTrustAccessApplicationCorsHeaders {
  /// Allows all HTTP request headers.
  final pulumi.Input<bool> allowAllHeaders;
  /// Allows all HTTP request methods.
  final pulumi.Input<bool> allowAllMethods;
  /// Allows all origins.
  final pulumi.Input<bool> allowAllOrigins;
  /// When set to `true`, includes credentials (cookies, authorization headers, or TLS client certificates) with requests.
  final pulumi.Input<bool> allowCredentials;
  /// Allowed HTTP request headers.
  final pulumi.Input<List<String>> allowedHeaders;
  /// Allowed HTTP request methods.
  final pulumi.Input<List<String>> allowedMethods;
  /// Allowed origins.
  final pulumi.Input<List<String>> allowedOrigins;
  /// The maximum number of seconds the results of a preflight request can be cached.
  final pulumi.Input<double> maxAge;

  /// Creates a new [GetZeroTrustAccessApplicationCorsHeaders].
  /// [allowAllHeaders] Allows all HTTP request headers.
  /// [allowAllMethods] Allows all HTTP request methods.
  /// [allowAllOrigins] Allows all origins.
  /// [allowCredentials] When set to `true`, includes credentials (cookies, authorization headers, or TLS client certificates) with requests.
  /// [allowedHeaders] Allowed HTTP request headers.
  /// [allowedMethods] Allowed HTTP request methods.
  /// [allowedOrigins] Allowed origins.
  /// [maxAge] The maximum number of seconds the results of a preflight request can be cached.
  const GetZeroTrustAccessApplicationCorsHeaders({
    required this.allowAllHeaders,
    required this.allowAllMethods,
    required this.allowAllOrigins,
    required this.allowCredentials,
    required this.allowedHeaders,
    required this.allowedMethods,
    required this.allowedOrigins,
    required this.maxAge,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allowAllHeaders': allowAllHeaders,
      'allowAllMethods': allowAllMethods,
      'allowAllOrigins': allowAllOrigins,
      'allowCredentials': allowCredentials,
      'allowedHeaders': allowedHeaders,
      'allowedMethods': allowedMethods,
      'allowedOrigins': allowedOrigins,
      'maxAge': maxAge,
    };
  }

  factory GetZeroTrustAccessApplicationCorsHeaders.fromMap(Map<String, dynamic> map) {
    return GetZeroTrustAccessApplicationCorsHeaders(
      allowAllHeaders: pulumi.Input.fromValue(map['allowAllHeaders'] as bool),
      allowAllMethods: pulumi.Input.fromValue(map['allowAllMethods'] as bool),
      allowAllOrigins: pulumi.Input.fromValue(map['allowAllOrigins'] as bool),
      allowCredentials: pulumi.Input.fromValue(map['allowCredentials'] as bool),
      allowedHeaders: pulumi.Input.fromValue((map['allowedHeaders'] as List).cast<String>()),
      allowedMethods: pulumi.Input.fromValue((map['allowedMethods'] as List).cast<String>()),
      allowedOrigins: pulumi.Input.fromValue((map['allowedOrigins'] as List).cast<String>()),
      maxAge: pulumi.Input.fromValue((map['maxAge'] as num).toDouble()),
    );
  }
}
