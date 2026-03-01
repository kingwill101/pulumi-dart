// ignore_for_file: unused_element, unnecessary_cast


class AppIngressCors {
  /// Whether user credentials are allowed in the cross-origin request is enabled. Defaults to `false`.
  final bool? allowCredentialsEnabled;
  /// Specifies the list of request headers that are permitted in the actual request.
  final List<String>? allowedHeaders;
  /// Specifies the list of HTTP methods are allowed when accessing the resource in a cross-origin request.
  final List<String>? allowedMethods;
  /// Specifies the list of origins that are allowed to make cross-origin calls.
  final List<String> allowedOrigins;
  /// Specifies the list of headers exposed to the browser in the response to a cross-origin request.
  final List<String>? exposedHeaders;
  /// Specifies the number of seconds that the browser can cache the results of a preflight request.
  final int? maxAgeInSeconds;

  /// Creates a new [AppIngressCors].
  /// [allowCredentialsEnabled] Whether user credentials are allowed in the cross-origin request is enabled. Defaults to `false`.
  /// [allowedHeaders] Specifies the list of request headers that are permitted in the actual request.
  /// [allowedMethods] Specifies the list of HTTP methods are allowed when accessing the resource in a cross-origin request.
  /// [allowedOrigins] Specifies the list of origins that are allowed to make cross-origin calls.
  /// [exposedHeaders] Specifies the list of headers exposed to the browser in the response to a cross-origin request.
  /// [maxAgeInSeconds] Specifies the number of seconds that the browser can cache the results of a preflight request.
  AppIngressCors({
    this.allowCredentialsEnabled,
    this.allowedHeaders,
    this.allowedMethods,
    required this.allowedOrigins,
    this.exposedHeaders,
    this.maxAgeInSeconds,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allowCredentialsEnabled': ?allowCredentialsEnabled,
      'allowedHeaders': ?allowedHeaders,
      'allowedMethods': ?allowedMethods,
      'allowedOrigins': allowedOrigins,
      'exposedHeaders': ?exposedHeaders,
      'maxAgeInSeconds': ?maxAgeInSeconds,
    };
  }

  factory AppIngressCors.fromMap(Map<String, dynamic> map) {
    return AppIngressCors(
      allowCredentialsEnabled: map['allowCredentialsEnabled'] == null ? null : map['allowCredentialsEnabled'] as bool,
      allowedHeaders: map['allowedHeaders'] == null ? null : (map['allowedHeaders'] as List).cast<String>(),
      allowedMethods: map['allowedMethods'] == null ? null : (map['allowedMethods'] as List).cast<String>(),
      allowedOrigins: (map['allowedOrigins'] as List).cast<String>(),
      exposedHeaders: map['exposedHeaders'] == null ? null : (map['exposedHeaders'] as List).cast<String>(),
      maxAgeInSeconds: map['maxAgeInSeconds'] == null ? null : map['maxAgeInSeconds'] as int,
    );
  }
}

