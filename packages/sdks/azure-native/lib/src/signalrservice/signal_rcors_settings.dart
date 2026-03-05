// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Cross-Origin Resource Sharing (CORS) settings.
class SignalRCorsSettings {
  /// Gets or sets the list of origins that should be allowed to make cross-origin calls (for example: http://example.com:12345). Use "*" to allow all. If omitted, allow all by default.
  final pulumi.Input<List<String>>? allowedOrigins;

  /// Creates a new [SignalRCorsSettings].
  /// [allowedOrigins] Gets or sets the list of origins that should be allowed to make cross-origin calls (for example: http://example.com:12345). Use "*" to allow all. If omitted, allow all by default.
  SignalRCorsSettings({
    this.allowedOrigins,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allowedOrigins': ?allowedOrigins,
    };
  }

  factory SignalRCorsSettings.fromMap(Map<String, dynamic> map) {
    return SignalRCorsSettings(
      allowedOrigins: (() { final guardedValue = map['allowedOrigins']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
    );
  }
}

