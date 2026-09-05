// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class SpringCloudGatewayCors {
  /// Allowed headers in cross-site requests. The special value `*` allows actual requests to send any header.
  final pulumi.Input<List<String>?>? allowedHeaders;
  /// Allowed HTTP methods on cross-site requests. The special value `*` allows all methods. If not set, `GET` and `HEAD` are allowed by default. Possible values are `DELETE`, `GET`, `HEAD`, `MERGE`, `POST`, `OPTIONS` and `PUT`.
  final pulumi.Input<List<String>?>? allowedMethods;
  /// Allowed origin patterns to make cross-site requests.
  final pulumi.Input<List<String>?>? allowedOriginPatterns;
  /// Allowed origins to make cross-site requests. The special value `*` allows all domains.
  final pulumi.Input<List<String>?>? allowedOrigins;
  /// is user credentials are supported on cross-site requests?
  final pulumi.Input<bool?>? credentialsAllowed;
  /// HTTP response headers to expose for cross-site requests.
  final pulumi.Input<List<String>?>? exposedHeaders;
  /// How long, in seconds, the response from a pre-flight request can be cached by clients.
  final pulumi.Input<int?>? maxAgeSeconds;

  /// Creates a new [SpringCloudGatewayCors].
  /// [allowedHeaders] Allowed headers in cross-site requests. The special value `*` allows actual requests to send any header.
  /// [allowedMethods] Allowed HTTP methods on cross-site requests. The special value `*` allows all methods. If not set, `GET` and `HEAD` are allowed by default. Possible values are `DELETE`, `GET`, `HEAD`, `MERGE`, `POST`, `OPTIONS` and `PUT`.
  /// [allowedOriginPatterns] Allowed origin patterns to make cross-site requests.
  /// [allowedOrigins] Allowed origins to make cross-site requests. The special value `*` allows all domains.
  /// [credentialsAllowed] is user credentials are supported on cross-site requests?
  /// [exposedHeaders] HTTP response headers to expose for cross-site requests.
  /// [maxAgeSeconds] How long, in seconds, the response from a pre-flight request can be cached by clients.
  const SpringCloudGatewayCors({
    this.allowedHeaders,
    this.allowedMethods,
    this.allowedOriginPatterns,
    this.allowedOrigins,
    this.credentialsAllowed,
    this.exposedHeaders,
    this.maxAgeSeconds,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allowedHeaders': ?allowedHeaders,
      'allowedMethods': ?allowedMethods,
      'allowedOriginPatterns': ?allowedOriginPatterns,
      'allowedOrigins': ?allowedOrigins,
      'credentialsAllowed': ?credentialsAllowed,
      'exposedHeaders': ?exposedHeaders,
      'maxAgeSeconds': ?maxAgeSeconds,
    };
  }

  factory SpringCloudGatewayCors.fromMap(Map<String, dynamic> map) {
    return SpringCloudGatewayCors(
      allowedHeaders: (() { final guardedValue = map['allowedHeaders']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      allowedMethods: (() { final guardedValue = map['allowedMethods']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      allowedOriginPatterns: (() { final guardedValue = map['allowedOriginPatterns']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      allowedOrigins: (() { final guardedValue = map['allowedOrigins']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      credentialsAllowed: (() { final guardedValue = map['credentialsAllowed']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      exposedHeaders: (() { final guardedValue = map['exposedHeaders']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      maxAgeSeconds: (() { final guardedValue = map['maxAgeSeconds']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
    );
  }
}
