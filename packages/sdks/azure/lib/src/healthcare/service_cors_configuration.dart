// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ServiceCorsConfiguration {
  /// (Boolean) If credentials are allowed via CORS.
  final pulumi.Input<bool>? allowCredentials;
  /// A set of headers to be allowed via CORS.
  final pulumi.Input<List<String>>? allowedHeaders;
  /// The methods to be allowed via CORS. Possible values are `DELETE`, `GET`, `HEAD`, `MERGE`, `POST`, `OPTIONS`, `PATCH` and `PUT`.
  final pulumi.Input<List<String>>? allowedMethods;
  /// A set of origins to be allowed via CORS.
  final pulumi.Input<List<String>>? allowedOrigins;
  /// The max age to be allowed via CORS.
  final pulumi.Input<int>? maxAgeInSeconds;

  /// Creates a new [ServiceCorsConfiguration].
  /// [allowCredentials] (Boolean) If credentials are allowed via CORS.
  /// [allowedHeaders] A set of headers to be allowed via CORS.
  /// [allowedMethods] The methods to be allowed via CORS. Possible values are `DELETE`, `GET`, `HEAD`, `MERGE`, `POST`, `OPTIONS`, `PATCH` and `PUT`.
  /// [allowedOrigins] A set of origins to be allowed via CORS.
  /// [maxAgeInSeconds] The max age to be allowed via CORS.
  ServiceCorsConfiguration({
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

  factory ServiceCorsConfiguration.fromMap(Map<String, dynamic> map) {
    return ServiceCorsConfiguration(
      allowCredentials: map['allowCredentials'] == null ? null : (map['allowCredentials']! as bool).input(),
      allowedHeaders: map['allowedHeaders'] == null ? null : ((map['allowedHeaders']! as List).cast<String>()).input(),
      allowedMethods: map['allowedMethods'] == null ? null : ((map['allowedMethods']! as List).cast<String>()).input(),
      allowedOrigins: map['allowedOrigins'] == null ? null : ((map['allowedOrigins']! as List).cast<String>()).input(),
      maxAgeInSeconds: map['maxAgeInSeconds'] == null ? null : (map['maxAgeInSeconds']! as int).input(),
    );
  }
}

