// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetServiceCorsConfiguration {
  /// Are credentials are allowed via CORS?
  final pulumi.Input<bool> allowCredentials;
  /// The set of headers to be allowed via CORS.
  final pulumi.Input<List<String>> allowedHeaders;
  /// The methods to be allowed via CORS.
  final pulumi.Input<List<String>> allowedMethods;
  /// The set of origins to be allowed via CORS.
  final pulumi.Input<List<String>> allowedOrigins;
  /// The max age to be allowed via CORS.
  final pulumi.Input<int> maxAgeInSeconds;

  /// Creates a new [GetServiceCorsConfiguration].
  /// [allowCredentials] Are credentials are allowed via CORS?
  /// [allowedHeaders] The set of headers to be allowed via CORS.
  /// [allowedMethods] The methods to be allowed via CORS.
  /// [allowedOrigins] The set of origins to be allowed via CORS.
  /// [maxAgeInSeconds] The max age to be allowed via CORS.
  GetServiceCorsConfiguration({
    required this.allowCredentials,
    required this.allowedHeaders,
    required this.allowedMethods,
    required this.allowedOrigins,
    required this.maxAgeInSeconds,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allowCredentials': allowCredentials,
      'allowedHeaders': allowedHeaders,
      'allowedMethods': allowedMethods,
      'allowedOrigins': allowedOrigins,
      'maxAgeInSeconds': maxAgeInSeconds,
    };
  }

  factory GetServiceCorsConfiguration.fromMap(Map<String, dynamic> map) {
    return GetServiceCorsConfiguration(
      allowCredentials: pulumi.Input.fromValue(map['allowCredentials'] as bool),
      allowedHeaders: pulumi.Input.fromValue((map['allowedHeaders'] as List).cast<String>()),
      allowedMethods: pulumi.Input.fromValue((map['allowedMethods'] as List).cast<String>()),
      allowedOrigins: pulumi.Input.fromValue((map['allowedOrigins'] as List).cast<String>()),
      maxAgeInSeconds: pulumi.Input.fromValue(map['maxAgeInSeconds'] as int),
    );
  }
}

