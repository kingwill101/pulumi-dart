// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Cross-Origin Resource Sharing (CORS) settings.
class SignalRCorsSettingsResponse {
  /// Gets or sets the list of origins that should be allowed to make cross-origin calls (for example: http://example.com:12345). Use "*" to allow all. If omitted, allow all by default.
  final pulumi.Input<List<String>>? allowedOrigins;

  /// Creates a new [SignalRCorsSettingsResponse].
  /// [allowedOrigins] Gets or sets the list of origins that should be allowed to make cross-origin calls (for example: http://example.com:12345). Use "*" to allow all. If omitted, allow all by default.
  SignalRCorsSettingsResponse({
    this.allowedOrigins,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allowedOrigins': ?allowedOrigins,
    };
  }

  factory SignalRCorsSettingsResponse.fromMap(Map<String, dynamic> map) {
    return SignalRCorsSettingsResponse(
      allowedOrigins: map['allowedOrigins'] == null ? null : ((map['allowedOrigins']! as List).cast<String>()).input(),
    );
  }
}

