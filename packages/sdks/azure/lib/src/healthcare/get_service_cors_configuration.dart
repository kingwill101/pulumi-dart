// ignore_for_file: unused_element, unnecessary_cast


class GetServiceCorsConfiguration {
  /// Are credentials are allowed via CORS?
  final bool allowCredentials;
  /// The set of headers to be allowed via CORS.
  final List<String> allowedHeaders;
  /// The methods to be allowed via CORS.
  final List<String> allowedMethods;
  /// The set of origins to be allowed via CORS.
  final List<String> allowedOrigins;
  /// The max age to be allowed via CORS.
  final int maxAgeInSeconds;

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
      allowCredentials: map['allowCredentials'] as bool,
      allowedHeaders: (map['allowedHeaders'] as List).cast<String>(),
      allowedMethods: (map['allowedMethods'] as List).cast<String>(),
      allowedOrigins: (map['allowedOrigins'] as List).cast<String>(),
      maxAgeInSeconds: map['maxAgeInSeconds'] as int,
    );
  }
}

