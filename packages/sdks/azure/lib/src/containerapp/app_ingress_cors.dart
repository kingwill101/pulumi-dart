// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AppIngressCors {
  /// Whether user credentials are allowed in the cross-origin request is enabled. Defaults to `false`.
  final pulumi.Input<bool?>? allowCredentialsEnabled;
  /// Specifies the list of request headers that are permitted in the actual request.
  final pulumi.Input<List<String>?>? allowedHeaders;
  /// Specifies the list of HTTP methods are allowed when accessing the resource in a cross-origin request.
  final pulumi.Input<List<String>?>? allowedMethods;
  /// Specifies the list of origins that are allowed to make cross-origin calls.
  final pulumi.Input<List<String>> allowedOrigins;
  /// Specifies the list of headers exposed to the browser in the response to a cross-origin request.
  final pulumi.Input<List<String>?>? exposedHeaders;
  /// Specifies the number of seconds that the browser can cache the results of a preflight request.
  final pulumi.Input<int?>? maxAgeInSeconds;

  /// Creates a new [AppIngressCors].
  /// [allowCredentialsEnabled] Whether user credentials are allowed in the cross-origin request is enabled. Defaults to `false`.
  /// [allowedHeaders] Specifies the list of request headers that are permitted in the actual request.
  /// [allowedMethods] Specifies the list of HTTP methods are allowed when accessing the resource in a cross-origin request.
  /// [allowedOrigins] Specifies the list of origins that are allowed to make cross-origin calls.
  /// [exposedHeaders] Specifies the list of headers exposed to the browser in the response to a cross-origin request.
  /// [maxAgeInSeconds] Specifies the number of seconds that the browser can cache the results of a preflight request.
  const AppIngressCors({
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
      allowCredentialsEnabled: (() { final guardedValue = map['allowCredentialsEnabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      allowedHeaders: (() { final guardedValue = map['allowedHeaders']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      allowedMethods: (() { final guardedValue = map['allowedMethods']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      allowedOrigins: pulumi.Input.fromValue((map['allowedOrigins'] as List).cast<String>()),
      exposedHeaders: (() { final guardedValue = map['exposedHeaders']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      maxAgeInSeconds: (() { final guardedValue = map['maxAgeInSeconds']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
    );
  }
}
