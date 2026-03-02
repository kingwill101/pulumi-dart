// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// TLS settings for the resource
class SignalRTlsSettings {
  /// Request client certificate during TLS handshake if enabled. Not supported for free tier. Any input will be ignored for free tier.
  final pulumi.Input<bool>? clientCertEnabled;

  /// Creates a new [SignalRTlsSettings].
  /// [clientCertEnabled] Request client certificate during TLS handshake if enabled. Not supported for free tier. Any input will be ignored for free tier.
  SignalRTlsSettings({
    this.clientCertEnabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clientCertEnabled': ?clientCertEnabled,
    };
  }

  factory SignalRTlsSettings.fromMap(Map<String, dynamic> map) {
    return SignalRTlsSettings(
      clientCertEnabled: map['clientCertEnabled'] == null ? null : (map['clientCertEnabled'] as bool).input(),
    );
  }
}

