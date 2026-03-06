// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetDicomServiceCor {
  /// Whether to allow credentials in CORS.
  final pulumi.Input<bool> allowCredentials;
  /// A list of allowed headers for CORS.
  final pulumi.Input<List<String>> allowedHeaders;
  /// A list of allowed methods for CORS.
  final pulumi.Input<List<String>> allowedMethods;
  /// A list of allowed origins for CORS.
  final pulumi.Input<List<String>> allowedOrigins;
  /// The maximum age in seconds for the CORS configuration.
  final pulumi.Input<int> maxAgeInSeconds;

  /// Creates a new [GetDicomServiceCor].
  /// [allowCredentials] Whether to allow credentials in CORS.
  /// [allowedHeaders] A list of allowed headers for CORS.
  /// [allowedMethods] A list of allowed methods for CORS.
  /// [allowedOrigins] A list of allowed origins for CORS.
  /// [maxAgeInSeconds] The maximum age in seconds for the CORS configuration.
  const GetDicomServiceCor({
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

  factory GetDicomServiceCor.fromMap(Map<String, dynamic> map) {
    return GetDicomServiceCor(
      allowCredentials: pulumi.Input.fromValue(map['allowCredentials'] as bool),
      allowedHeaders: pulumi.Input.fromValue((map['allowedHeaders'] as List).cast<String>()),
      allowedMethods: pulumi.Input.fromValue((map['allowedMethods'] as List).cast<String>()),
      allowedOrigins: pulumi.Input.fromValue((map['allowedOrigins'] as List).cast<String>()),
      maxAgeInSeconds: pulumi.Input.fromValue(map['maxAgeInSeconds'] as int),
    );
  }
}

