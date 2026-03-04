// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Specifies a CORS rule for the Blob service.
class CorsRuleResponse {
  /// Required if CorsRule element is present. A list of headers allowed to be part of the cross-origin request.
  final pulumi.Input<List<String>> allowedHeaders;

  /// Required if CorsRule element is present. A list of HTTP methods that are allowed to be executed by the origin.
  final pulumi.Input<List<String>> allowedMethods;

  /// Required if CorsRule element is present. A list of origin domains that will be allowed via CORS, or "*" to allow all domains
  final pulumi.Input<List<String>> allowedOrigins;

  /// Required if CorsRule element is present. A list of response headers to expose to CORS clients.
  final pulumi.Input<List<String>> exposedHeaders;

  /// Required if CorsRule element is present. The number of seconds that the client/browser should cache a preflight response.
  final pulumi.Input<int> maxAgeInSeconds;

  /// Creates a new [CorsRuleResponse].
  /// [allowedHeaders] Required if CorsRule element is present. A list of headers allowed to be part of the cross-origin request.
  /// [allowedMethods] Required if CorsRule element is present. A list of HTTP methods that are allowed to be executed by the origin.
  /// [allowedOrigins] Required if CorsRule element is present. A list of origin domains that will be allowed via CORS, or "*" to allow all domains
  /// [exposedHeaders] Required if CorsRule element is present. A list of response headers to expose to CORS clients.
  /// [maxAgeInSeconds] Required if CorsRule element is present. The number of seconds that the client/browser should cache a preflight response.
  CorsRuleResponse({
    required this.allowedHeaders,
    required this.allowedMethods,
    required this.allowedOrigins,
    required this.exposedHeaders,
    required this.maxAgeInSeconds,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allowedHeaders': allowedHeaders,
      'allowedMethods': allowedMethods,
      'allowedOrigins': allowedOrigins,
      'exposedHeaders': exposedHeaders,
      'maxAgeInSeconds': maxAgeInSeconds,
    };
  }

  factory CorsRuleResponse.fromMap(Map<String, dynamic> map) {
    return CorsRuleResponse(
      allowedHeaders: pulumi.Input.fromValue(
        (map['allowedHeaders'] as List).cast<String>(),
      ),
      allowedMethods: pulumi.Input.fromValue(
        (map['allowedMethods'] as List).cast<String>(),
      ),
      allowedOrigins: pulumi.Input.fromValue(
        (map['allowedOrigins'] as List).cast<String>(),
      ),
      exposedHeaders: pulumi.Input.fromValue(
        (map['exposedHeaders'] as List).cast<String>(),
      ),
      maxAgeInSeconds: pulumi.Input.fromValue(map['maxAgeInSeconds'] as int),
    );
  }
}
