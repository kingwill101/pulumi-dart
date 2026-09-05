// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AccountTablePropertiesCorsRule {
  /// A list of headers that are allowed to be a part of the cross-origin request.
  final pulumi.Input<List<String>> allowedHeaders;
  /// A list of HTTP methods that are allowed to be executed by the origin. Valid options are `DELETE`, `GET`, `HEAD`, `MERGE`, `POST`, `OPTIONS` or `PUT`.
  final pulumi.Input<List<String>> allowedMethods;
  /// A list of origin domains that will be allowed by CORS.
  final pulumi.Input<List<String>> allowedOrigins;
  /// A list of response headers that are exposed to CORS clients.
  final pulumi.Input<List<String>> exposedHeaders;
  /// The number of seconds the client should cache a preflight response.
  final pulumi.Input<int> maxAgeInSeconds;

  /// Creates a new [AccountTablePropertiesCorsRule].
  /// [allowedHeaders] A list of headers that are allowed to be a part of the cross-origin request.
  /// [allowedMethods] A list of HTTP methods that are allowed to be executed by the origin. Valid options are `DELETE`, `GET`, `HEAD`, `MERGE`, `POST`, `OPTIONS` or `PUT`.
  /// [allowedOrigins] A list of origin domains that will be allowed by CORS.
  /// [exposedHeaders] A list of response headers that are exposed to CORS clients.
  /// [maxAgeInSeconds] The number of seconds the client should cache a preflight response.
  const AccountTablePropertiesCorsRule({
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

  factory AccountTablePropertiesCorsRule.fromMap(Map<String, dynamic> map) {
    return AccountTablePropertiesCorsRule(
      allowedHeaders: pulumi.Input.fromValue((map['allowedHeaders'] as List).cast<String>()),
      allowedMethods: pulumi.Input.fromValue((map['allowedMethods'] as List).cast<String>()),
      allowedOrigins: pulumi.Input.fromValue((map['allowedOrigins'] as List).cast<String>()),
      exposedHeaders: pulumi.Input.fromValue((map['exposedHeaders'] as List).cast<String>()),
      maxAgeInSeconds: pulumi.Input.fromValue((map['maxAgeInSeconds'] as num).toInt()),
    );
  }
}
