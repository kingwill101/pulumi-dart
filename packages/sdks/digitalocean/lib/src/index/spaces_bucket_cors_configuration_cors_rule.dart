// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class SpacesBucketCorsConfigurationCorsRule {
  /// Set of Headers that are specified in the Access-Control-Request-Headers header.
  final pulumi.Input<List<String>>? allowedHeaders;
  /// Set of HTTP methods that you allow the origin to execute. Valid values are GET, PUT, HEAD, POST, and DELETE.
  final pulumi.Input<List<String>> allowedMethods;
  /// Set of origins you want customers to be able to access the bucket from.
  final pulumi.Input<List<String>> allowedOrigins;
  /// Set of headers in the response that you want customers to be able to access from their applications (for example, from a JavaScript XMLHttpRequest object).
  final pulumi.Input<List<String>>? exposeHeaders;
  /// Unique identifier for the rule. The value cannot be longer than 255 characters.
  final pulumi.Input<String>? id;
  /// Time in seconds that your browser is to cache the preflight response for the specified resource.
  final pulumi.Input<int>? maxAgeSeconds;

  /// Creates a new [SpacesBucketCorsConfigurationCorsRule].
  /// [allowedHeaders] Set of Headers that are specified in the Access-Control-Request-Headers header.
  /// [allowedMethods] Set of HTTP methods that you allow the origin to execute. Valid values are GET, PUT, HEAD, POST, and DELETE.
  /// [allowedOrigins] Set of origins you want customers to be able to access the bucket from.
  /// [exposeHeaders] Set of headers in the response that you want customers to be able to access from their applications (for example, from a JavaScript XMLHttpRequest object).
  /// [id] Unique identifier for the rule. The value cannot be longer than 255 characters.
  /// [maxAgeSeconds] Time in seconds that your browser is to cache the preflight response for the specified resource.
  const SpacesBucketCorsConfigurationCorsRule({
    this.allowedHeaders,
    required this.allowedMethods,
    required this.allowedOrigins,
    this.exposeHeaders,
    this.id,
    this.maxAgeSeconds,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allowedHeaders': ?allowedHeaders,
      'allowedMethods': allowedMethods,
      'allowedOrigins': allowedOrigins,
      'exposeHeaders': ?exposeHeaders,
      'id': ?id,
      'maxAgeSeconds': ?maxAgeSeconds,
    };
  }

  factory SpacesBucketCorsConfigurationCorsRule.fromMap(Map<String, dynamic> map) {
    return SpacesBucketCorsConfigurationCorsRule(
      allowedHeaders: (() { final guardedValue = map['allowedHeaders']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      allowedMethods: pulumi.Input.fromValue((map['allowedMethods'] as List).cast<String>()),
      allowedOrigins: pulumi.Input.fromValue((map['allowedOrigins'] as List).cast<String>()),
      exposeHeaders: (() { final guardedValue = map['exposeHeaders']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      maxAgeSeconds: (() { final guardedValue = map['maxAgeSeconds']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
    );
  }
}

