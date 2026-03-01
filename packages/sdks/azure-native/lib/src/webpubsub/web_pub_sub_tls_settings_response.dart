// ignore_for_file: unused_element, unnecessary_cast


/// TLS settings for the resource
class WebPubSubTlsSettingsResponse {
  /// Request client certificate during TLS handshake if enabled. Not supported for free tier. Any input will be ignored for free tier.
  final bool? clientCertEnabled;

  /// Creates a new [WebPubSubTlsSettingsResponse].
  /// [clientCertEnabled] Request client certificate during TLS handshake if enabled. Not supported for free tier. Any input will be ignored for free tier.
  WebPubSubTlsSettingsResponse({
    this.clientCertEnabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clientCertEnabled': ?clientCertEnabled,
    };
  }

  factory WebPubSubTlsSettingsResponse.fromMap(Map<String, dynamic> map) {
    return WebPubSubTlsSettingsResponse(
      clientCertEnabled: map['clientCertEnabled'] == null ? null : map['clientCertEnabled'] as bool,
    );
  }
}

