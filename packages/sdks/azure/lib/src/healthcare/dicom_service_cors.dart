// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class DicomServiceCors {
  /// Whether to allow credentials in CORS. Defaults to `false`.
  final pulumi.Input<bool>? allowCredentials;
  /// A list of allowed headers for CORS.
  final pulumi.Input<List<String>>? allowedHeaders;
  /// A list of allowed methods for CORS.
  final pulumi.Input<List<String>>? allowedMethods;
  /// A list of allowed origins for CORS.
  final pulumi.Input<List<String>>? allowedOrigins;
  /// The maximum age in seconds for the CORS configuration (must be between 0 and 99998 inclusive).
  final pulumi.Input<int>? maxAgeInSeconds;

  /// Creates a new [DicomServiceCors].
  /// [allowCredentials] Whether to allow credentials in CORS. Defaults to `false`.
  /// [allowedHeaders] A list of allowed headers for CORS.
  /// [allowedMethods] A list of allowed methods for CORS.
  /// [allowedOrigins] A list of allowed origins for CORS.
  /// [maxAgeInSeconds] The maximum age in seconds for the CORS configuration (must be between 0 and 99998 inclusive).
  DicomServiceCors({
    this.allowCredentials,
    this.allowedHeaders,
    this.allowedMethods,
    this.allowedOrigins,
    this.maxAgeInSeconds,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allowCredentials': ?allowCredentials,
      'allowedHeaders': ?allowedHeaders,
      'allowedMethods': ?allowedMethods,
      'allowedOrigins': ?allowedOrigins,
      'maxAgeInSeconds': ?maxAgeInSeconds,
    };
  }

  factory DicomServiceCors.fromMap(Map<String, dynamic> map) {
    return DicomServiceCors(
      allowCredentials: map['allowCredentials'] == null ? null : (map['allowCredentials']! as bool).input(),
      allowedHeaders: map['allowedHeaders'] == null ? null : ((map['allowedHeaders']! as List).cast<String>()).input(),
      allowedMethods: map['allowedMethods'] == null ? null : ((map['allowedMethods']! as List).cast<String>()).input(),
      allowedOrigins: map['allowedOrigins'] == null ? null : ((map['allowedOrigins']! as List).cast<String>()).input(),
      maxAgeInSeconds: map['maxAgeInSeconds'] == null ? null : (map['maxAgeInSeconds']! as int).input(),
    );
  }
}

