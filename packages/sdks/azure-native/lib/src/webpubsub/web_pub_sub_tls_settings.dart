// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// TLS settings for the resource
class WebPubSubTlsSettings {
  /// Request client certificate during TLS handshake if enabled. Not supported for free tier. Any input will be ignored for free tier.
  final pulumi.Input<bool>? clientCertEnabled;

  /// Creates a new [WebPubSubTlsSettings].
  /// [clientCertEnabled] Request client certificate during TLS handshake if enabled. Not supported for free tier. Any input will be ignored for free tier.
  const WebPubSubTlsSettings({
    this.clientCertEnabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clientCertEnabled': ?clientCertEnabled,
    };
  }

  factory WebPubSubTlsSettings.fromMap(Map<String, dynamic> map) {
    return WebPubSubTlsSettings(
      clientCertEnabled: (() { final guardedValue = map['clientCertEnabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
    );
  }
}

