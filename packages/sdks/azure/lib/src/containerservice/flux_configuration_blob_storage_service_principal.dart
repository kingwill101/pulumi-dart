// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class FluxConfigurationBlobStorageServicePrincipal {
  /// Base64-encoded certificate used to authenticate a Service Principal .
  final pulumi.Input<String>? clientCertificateBase64;
  /// Specifies the password for the certificate used to authenticate a Service Principal .
  final pulumi.Input<String>? clientCertificatePassword;
  /// Specifies whether to include x5c header in client claims when acquiring a token to enable subject name / issuer based authentication for the client certificate.
  final pulumi.Input<bool>? clientCertificateSendChain;
  /// Specifies the client ID for authenticating a Service Principal.
  final pulumi.Input<String> clientId;
  /// Specifies the client secret for authenticating a Service Principal.
  final pulumi.Input<String>? clientSecret;
  /// Specifies the tenant ID for authenticating a Service Principal.
  final pulumi.Input<String> tenantId;

  /// Creates a new [FluxConfigurationBlobStorageServicePrincipal].
  /// [clientCertificateBase64] Base64-encoded certificate used to authenticate a Service Principal .
  /// [clientCertificatePassword] Specifies the password for the certificate used to authenticate a Service Principal .
  /// [clientCertificateSendChain] Specifies whether to include x5c header in client claims when acquiring a token to enable subject name / issuer based authentication for the client certificate.
  /// [clientId] Specifies the client ID for authenticating a Service Principal.
  /// [clientSecret] Specifies the client secret for authenticating a Service Principal.
  /// [tenantId] Specifies the tenant ID for authenticating a Service Principal.
  const FluxConfigurationBlobStorageServicePrincipal({
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
      clientCertificateBase64: (() { final guardedValue = map['clientCertificateBase64']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      clientCertificatePassword: (() { final guardedValue = map['clientCertificatePassword']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      clientCertificateSendChain: (() { final guardedValue = map['clientCertificateSendChain']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      clientId: pulumi.Input.fromValue(map['clientId'] as String),
      clientSecret: (() { final guardedValue = map['clientSecret']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tenantId: pulumi.Input.fromValue(map['tenantId'] as String),
    );
  }
}
