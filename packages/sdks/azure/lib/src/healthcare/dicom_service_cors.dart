// ignore_for_file: unused_element, unnecessary_cast


class DicomServiceCors {
  /// Whether to allow credentials in CORS. Defaults to `false`.
  final bool? allowCredentials;
  /// A list of allowed headers for CORS.
  final List<String>? allowedHeaders;
  /// A list of allowed methods for CORS.
  final List<String>? allowedMethods;
  /// A list of allowed origins for CORS.
  final List<String>? allowedOrigins;
  /// The maximum age in seconds for the CORS configuration (must be between 0 and 99998 inclusive).
  final int? maxAgeInSeconds;

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
      allowCredentials: map['allowCredentials'] == null ? null : map['allowCredentials'] as bool,
      allowedHeaders: map['allowedHeaders'] == null ? null : (map['allowedHeaders'] as List).cast<String>(),
      allowedMethods: map['allowedMethods'] == null ? null : (map['allowedMethods'] as List).cast<String>(),
      allowedOrigins: map['allowedOrigins'] == null ? null : (map['allowedOrigins'] as List).cast<String>(),
      maxAgeInSeconds: map['maxAgeInSeconds'] == null ? null : map['maxAgeInSeconds'] as int,
    );
  }
}

