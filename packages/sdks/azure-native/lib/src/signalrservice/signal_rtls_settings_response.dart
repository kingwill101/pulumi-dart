// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// TLS settings for the resource
class SignalRTlsSettingsResponse {
  /// Request client certificate during TLS handshake if enabled. Not supported for free tier. Any input will be ignored for free tier.
  final pulumi.Input<bool>? clientCertEnabled;

  /// Creates a new [SignalRTlsSettingsResponse].
  /// [clientCertEnabled] Request client certificate during TLS handshake if enabled. Not supported for free tier. Any input will be ignored for free tier.
  SignalRTlsSettingsResponse({
    this.clientCertEnabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clientCertEnabled': ?clientCertEnabled,
    };
  }

  factory SignalRTlsSettingsResponse.fromMap(Map<String, dynamic> map) {
    return SignalRTlsSettingsResponse(
      clientCertEnabled: map['clientCertEnabled'] == null ? null : (map['clientCertEnabled'] as bool).input(),
    );
  }
}

