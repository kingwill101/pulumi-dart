// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class FhirServiceCors {
  /// A set of headers to be allowed via CORS.
  final pulumi.Input<List<String>> allowedHeaders;
  /// The methods to be allowed via CORS. Possible values are `DELETE`, `GET`, `HEAD`, `MERGE`, `POST`, `OPTIONS`, `PATCH` and `PUT`.
  final pulumi.Input<List<String>> allowedMethods;
  /// A set of origins to be allowed via CORS.
  final pulumi.Input<List<String>> allowedOrigins;
  /// If credentials are allowed via CORS.
  final pulumi.Input<bool>? credentialsAllowed;
  /// The max age to be allowed via CORS.
  final pulumi.Input<int>? maxAgeInSeconds;

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
      allowedHeaders: ((map['allowedHeaders'] as List).cast<String>()).input(),
      allowedMethods: ((map['allowedMethods'] as List).cast<String>()).input(),
      allowedOrigins: ((map['allowedOrigins'] as List).cast<String>()).input(),
      credentialsAllowed: map['credentialsAllowed'] == null ? null : (map['credentialsAllowed'] as bool).input(),
      maxAgeInSeconds: map['maxAgeInSeconds'] == null ? null : (map['maxAgeInSeconds'] as int).input(),
    );
  }
}

