// ignore_for_file: unused_element, unnecessary_cast


class FhirServiceCors {
  /// A set of headers to be allowed via CORS.
  final List<String> allowedHeaders;
  /// The methods to be allowed via CORS. Possible values are `DELETE`, `GET`, `HEAD`, `MERGE`, `POST`, `OPTIONS`, `PATCH` and `PUT`.
  final List<String> allowedMethods;
  /// A set of origins to be allowed via CORS.
  final List<String> allowedOrigins;
  /// If credentials are allowed via CORS.
  final bool? credentialsAllowed;
  /// The max age to be allowed via CORS.
  final int? maxAgeInSeconds;

  /// Creates a new [FhirServiceCors].
  /// [allowedHeaders] A set of headers to be allowed via CORS.
  /// [allowedMethods] The methods to be allowed via CORS. Possible values are `DELETE`, `GET`, `HEAD`, `MERGE`, `POST`, `OPTIONS`, `PATCH` and `PUT`.
  /// [allowedOrigins] A set of origins to be allowed via CORS.
  /// [credentialsAllowed] If credentials are allowed via CORS.
  /// [maxAgeInSeconds] The max age to be allowed via CORS.
  FhirServiceCors({
    required this.allowedHeaders,
    required this.allowedMethods,
    required this.allowedOrigins,
    this.credentialsAllowed,
    this.maxAgeInSeconds,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allowedHeaders': allowedHeaders,
      'allowedMethods': allowedMethods,
      'allowedOrigins': allowedOrigins,
      'credentialsAllowed': ?credentialsAllowed,
      'maxAgeInSeconds': ?maxAgeInSeconds,
    };
  }

  factory FhirServiceCors.fromMap(Map<String, dynamic> map) {
    return FhirServiceCors(
      allowedHeaders: (map['allowedHeaders'] as List).cast<String>(),
      allowedMethods: (map['allowedMethods'] as List).cast<String>(),
      allowedOrigins: (map['allowedOrigins'] as List).cast<String>(),
      credentialsAllowed: map['credentialsAllowed'] == null ? null : map['credentialsAllowed'] as bool,
      maxAgeInSeconds: map['maxAgeInSeconds'] == null ? null : map['maxAgeInSeconds'] as int,
    );
  }
}

