// ignore_for_file: unused_element, unnecessary_cast


class FluxConfigurationBlobStorageServicePrincipal {
  /// Base64-encoded certificate used to authenticate a Service Principal .
  final String? clientCertificateBase64;
  /// Specifies the password for the certificate used to authenticate a Service Principal .
  final String? clientCertificatePassword;
  /// Specifies whether to include x5c header in client claims when acquiring a token to enable subject name / issuer based authentication for the client certificate.
  final bool? clientCertificateSendChain;
  /// Specifies the client ID for authenticating a Service Principal.
  final String clientId;
  /// Specifies the client secret for authenticating a Service Principal.
  final String? clientSecret;
  /// Specifies the tenant ID for authenticating a Service Principal.
  final String tenantId;

  /// Creates a new [FluxConfigurationBlobStorageServicePrincipal].
  /// [clientCertificateBase64] Base64-encoded certificate used to authenticate a Service Principal .
  /// [clientCertificatePassword] Specifies the password for the certificate used to authenticate a Service Principal .
  /// [clientCertificateSendChain] Specifies whether to include x5c header in client claims when acquiring a token to enable subject name / issuer based authentication for the client certificate.
  /// [clientId] Specifies the client ID for authenticating a Service Principal.
  /// [clientSecret] Specifies the client secret for authenticating a Service Principal.
  /// [tenantId] Specifies the tenant ID for authenticating a Service Principal.
  FluxConfigurationBlobStorageServicePrincipal({
    this.clientCertificateBase64,
    this.clientCertificatePassword,
    this.clientCertificateSendChain,
    required this.clientId,
    this.clientSecret,
    required this.tenantId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clientCertificateBase64': ?clientCertificateBase64,
      'clientCertificatePassword': ?clientCertificatePassword,
      'clientCertificateSendChain': ?clientCertificateSendChain,
      'clientId': clientId,
      'clientSecret': ?clientSecret,
      'tenantId': tenantId,
    };
  }

  factory FluxConfigurationBlobStorageServicePrincipal.fromMap(Map<String, dynamic> map) {
    return FluxConfigurationBlobStorageServicePrincipal(
      clientCertificateBase64: map['clientCertificateBase64'] == null ? null : map['clientCertificateBase64'] as String,
      clientCertificatePassword: map['clientCertificatePassword'] == null ? null : map['clientCertificatePassword'] as String,
      clientCertificateSendChain: map['clientCertificateSendChain'] == null ? null : map['clientCertificateSendChain'] as bool,
      clientId: map['clientId'] as String,
      clientSecret: map['clientSecret'] == null ? null : map['clientSecret'] as String,
      tenantId: map['tenantId'] as String,
    );
  }
}

