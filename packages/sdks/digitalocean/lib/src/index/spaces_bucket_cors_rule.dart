// ignore_for_file: unused_element, unnecessary_cast


class SpacesBucketCorsRule {
  /// A list of headers that will be included in the CORS preflight request's `Access-Control-Request-Headers`. A header may contain one wildcard (e.g. `x-amz-*`).
  final List<String>? allowedHeaders;
  /// A list of HTTP methods (e.g. `GET`) which are allowed from the specified origin.
  final List<String> allowedMethods;
  /// A list of hosts from which requests using the specified methods are allowed. A host may contain one wildcard (e.g. http://*.example.com).
  final List<String> allowedOrigins;
  /// The time in seconds that browser can cache the response for a preflight request.
  final int? maxAgeSeconds;

  /// Creates a new [SpacesBucketCorsRule].
  /// [allowedHeaders] A list of headers that will be included in the CORS preflight request's `Access-Control-Request-Headers`. A header may contain one wildcard (e.g. `x-amz-*`).
  /// [allowedMethods] A list of HTTP methods (e.g. `GET`) which are allowed from the specified origin.
  /// [allowedOrigins] A list of hosts from which requests using the specified methods are allowed. A host may contain one wildcard (e.g. http://*.example.com).
  /// [maxAgeSeconds] The time in seconds that browser can cache the response for a preflight request.
  SpacesBucketCorsRule({
    this.allowedHeaders,
    required this.allowedMethods,
    required this.allowedOrigins,
    this.maxAgeSeconds,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allowedHeaders': ?allowedHeaders,
      'allowedMethods': allowedMethods,
      'allowedOrigins': allowedOrigins,
      'maxAgeSeconds': ?maxAgeSeconds,
    };
  }

  factory SpacesBucketCorsRule.fromMap(Map<String, dynamic> map) {
    return SpacesBucketCorsRule(
      allowedHeaders: map['allowedHeaders'] == null ? null : (map['allowedHeaders'] as List).cast<String>(),
      allowedMethods: (map['allowedMethods'] as List).cast<String>(),
      allowedOrigins: (map['allowedOrigins'] as List).cast<String>(),
      maxAgeSeconds: map['maxAgeSeconds'] == null ? null : map['maxAgeSeconds'] as int,
    );
  }
}

