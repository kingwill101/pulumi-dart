// ignore_for_file: unused_element, unnecessary_cast


/// Message contains the transport layer information to verify the proxy server.
class GoogleCloudBeyondcorpPartnerservicesV1alphaTransportInfoResponse {
  /// PEM encoded CA certificate associated with the proxy server certificate.
  final String serverCaCertPem;
  /// Optional. PEM encoded CA certificate associated with the certificate used by proxy server for SSL decryption.
  final String sslDecryptCaCertPem;

  /// Creates a new [GoogleCloudBeyondcorpPartnerservicesV1alphaTransportInfoResponse].
  /// [serverCaCertPem] PEM encoded CA certificate associated with the proxy server certificate.
  /// [sslDecryptCaCertPem] Optional. PEM encoded CA certificate associated with the certificate used by proxy server for SSL decryption.
  GoogleCloudBeyondcorpPartnerservicesV1alphaTransportInfoResponse({
    required this.serverCaCertPem,
    required this.sslDecryptCaCertPem,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'serverCaCertPem': serverCaCertPem,
      'sslDecryptCaCertPem': sslDecryptCaCertPem,
    };
  }

  factory GoogleCloudBeyondcorpPartnerservicesV1alphaTransportInfoResponse.fromMap(Map<String, dynamic> map) {
    return GoogleCloudBeyondcorpPartnerservicesV1alphaTransportInfoResponse(
      serverCaCertPem: map['serverCaCertPem'] as String,
      sslDecryptCaCertPem: map['sslDecryptCaCertPem'] as String,
    );
  }
}

