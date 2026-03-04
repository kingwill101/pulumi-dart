// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Cross-Origin Resource Sharing (CORS) settings for the app.
class CorsSettings {
  /// Gets or sets the list of origins that should be allowed to make cross-origin
  /// calls (for example: http://example.com:12345). Use "*" to allow all.
  final pulumi.Input<List<String>>? allowedOrigins;

  /// Gets or sets whether CORS requests with credentials are allowed. See
  /// https://developer.mozilla.org/en-US/docs/Web/HTTP/CORS#Requests_with_credentials
  /// for more details.
  final pulumi.Input<bool>? supportCredentials;

  /// Creates a new [CorsSettings].
  /// [allowedOrigins] Gets or sets the list of origins that should be allowed to make cross-origin
  /// [supportCredentials] Gets or sets whether CORS requests with credentials are allowed. See
  CorsSettings({this.allowedOrigins, this.supportCredentials});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allowedOrigins': ?allowedOrigins,
      'supportCredentials': ?supportCredentials,
    };
  }

  factory CorsSettings.fromMap(Map<String, dynamic> map) {
    return CorsSettings(
      allowedOrigins: (() {
        final guardedValue = map['allowedOrigins'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
      })(),
      supportCredentials: (() {
        final guardedValue = map['supportCredentials'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
    );
  }
}
