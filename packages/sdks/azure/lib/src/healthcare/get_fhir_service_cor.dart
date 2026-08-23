// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetFhirServiceCor {
  /// The set of headers to be allowed via CORS.
  final pulumi.Input<List<String>> allowedHeaders;
  /// The methods to be allowed via CORS.
  final pulumi.Input<List<String>> allowedMethods;
  /// The set of origins to be allowed via CORS.
  final pulumi.Input<List<String>> allowedOrigins;
  /// Are credentials allowed via CORS?
  final pulumi.Input<bool> credentialsAllowed;
  /// The max age to be allowed via CORS.
  final pulumi.Input<int> maxAgeInSeconds;

  /// Creates a new [GetFhirServiceCor].
  /// [allowedHeaders] The set of headers to be allowed via CORS.
  /// [allowedMethods] The methods to be allowed via CORS.
  /// [allowedOrigins] The set of origins to be allowed via CORS.
  /// [credentialsAllowed] Are credentials allowed via CORS?
  /// [maxAgeInSeconds] The max age to be allowed via CORS.
  const GetFhirServiceCor({
    required this.allowedHeaders,
    required this.allowedMethods,
    required this.allowedOrigins,
    required this.credentialsAllowed,
    required this.maxAgeInSeconds,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allowedHeaders': allowedHeaders,
      'allowedMethods': allowedMethods,
      'allowedOrigins': allowedOrigins,
      'credentialsAllowed': credentialsAllowed,
      'maxAgeInSeconds': maxAgeInSeconds,
    };
  }

  factory GetFhirServiceCor.fromMap(Map<String, dynamic> map) {
    return GetFhirServiceCor(
      allowedHeaders: pulumi.Input.fromValue((map['allowedHeaders'] as List).cast<String>()),
      allowedMethods: pulumi.Input.fromValue((map['allowedMethods'] as List).cast<String>()),
      allowedOrigins: pulumi.Input.fromValue((map['allowedOrigins'] as List).cast<String>()),
      credentialsAllowed: pulumi.Input.fromValue(map['credentialsAllowed'] as bool),
      maxAgeInSeconds: pulumi.Input.fromValue(map['maxAgeInSeconds'] as int),
    );
  }
}
