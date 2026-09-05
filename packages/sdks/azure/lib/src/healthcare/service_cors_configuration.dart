// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ServiceCorsConfiguration {
  /// (Boolean) If credentials are allowed via CORS.
  final pulumi.Input<bool?>? allowCredentials;
  /// A set of headers to be allowed via CORS.
  final pulumi.Input<List<String>?>? allowedHeaders;
  /// The methods to be allowed via CORS. Possible values are `DELETE`, `GET`, `HEAD`, `MERGE`, `POST`, `OPTIONS`, `PATCH` and `PUT`.
  final pulumi.Input<List<String>?>? allowedMethods;
  /// A set of origins to be allowed via CORS.
  final pulumi.Input<List<String>?>? allowedOrigins;
  /// The max age to be allowed via CORS.
  final pulumi.Input<int?>? maxAgeInSeconds;

  /// Creates a new [ServiceCorsConfiguration].
  /// [allowCredentials] (Boolean) If credentials are allowed via CORS.
  /// [allowedHeaders] A set of headers to be allowed via CORS.
  /// [allowedMethods] The methods to be allowed via CORS. Possible values are `DELETE`, `GET`, `HEAD`, `MERGE`, `POST`, `OPTIONS`, `PATCH` and `PUT`.
  /// [allowedOrigins] A set of origins to be allowed via CORS.
  /// [maxAgeInSeconds] The max age to be allowed via CORS.
  const ServiceCorsConfiguration({
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
      allowCredentials: (() { final guardedValue = map['allowCredentials']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      allowedHeaders: (() { final guardedValue = map['allowedHeaders']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      allowedMethods: (() { final guardedValue = map['allowedMethods']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      allowedOrigins: (() { final guardedValue = map['allowedOrigins']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      maxAgeInSeconds: (() { final guardedValue = map['maxAgeInSeconds']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
    );
  }
}
