// ignore_for_file: unused_element, unnecessary_cast


class ServiceHostnameConfigurationProxy {
  /// The Base64 Encoded Certificate.
  final String? certificate;
  /// The password associated with the certificate provided above.
  ///
  /// > **Note:** Either `key_vault_certificate_id` or `certificate` and `certificate_password` must be specified.
  final String? certificatePassword;
  /// The source of the certificate.
  final String? certificateSource;
  /// The status of the certificate.
  final String? certificateStatus;
  /// Is the certificate associated with this Hostname the Default SSL Certificate? This is used when an SNI header isn't specified by a client. Defaults to `false`.
  final bool? defaultSslBinding;
  /// The expiration date of the certificate in RFC3339 format: `2000-01-02T03:04:05Z`.
  final String? expiry;
  /// The Hostname to use for the Management API.
  final String hostName;
  /// The ID of the Key Vault Secret containing the SSL Certificate, which must be of the type `application/x-pkcs12`.
  ///
  /// > **Note:** Setting this field requires the `identity` block to be specified, since this identity is used for to retrieve the Key Vault Certificate. Auto-updating the Certificate from the Key Vault requires the Secret version isn't specified.
  final String? keyVaultCertificateId;
  final String? keyVaultId;
  /// Should Client Certificate Negotiation be enabled for this Hostname? Defaults to `false`.
  final bool? negotiateClientCertificate;
  /// The Managed Identity Client ID to use to access the Key Vault. This Identity must be specified in the `identity` block to be used.
  final String? sslKeyvaultIdentityClientId;
  /// The subject of the certificate.
  final String? subject;
  /// The thumbprint of the certificate.
  final String? thumbprint;

  /// Creates a new [ServiceHostnameConfigurationProxy].
  /// [certificate] The Base64 Encoded Certificate.
  /// [certificatePassword] The password associated with the certificate provided above.
  /// [certificateSource] The source of the certificate.
  /// [certificateStatus] The status of the certificate.
  /// [defaultSslBinding] Is the certificate associated with this Hostname the Default SSL Certificate? This is used when an SNI header isn't specified by a client. Defaults to `false`.
  /// [expiry] The expiration date of the certificate in RFC3339 format: `2000-01-02T03:04:05Z`.
  /// [hostName] The Hostname to use for the Management API.
  /// [keyVaultCertificateId] The ID of the Key Vault Secret containing the SSL Certificate, which must be of the type `application/x-pkcs12`.
  /// [keyVaultId] Optional.
  /// [negotiateClientCertificate] Should Client Certificate Negotiation be enabled for this Hostname? Defaults to `false`.
  /// [sslKeyvaultIdentityClientId] The Managed Identity Client ID to use to access the Key Vault. This Identity must be specified in the `identity` block to be used.
  /// [subject] The subject of the certificate.
  /// [thumbprint] The thumbprint of the certificate.
  ServiceHostnameConfigurationProxy({
    this.certificate,
    this.certificatePassword,
    this.certificateSource,
    this.certificateStatus,
    this.defaultSslBinding,
    this.expiry,
    required this.hostName,
    this.keyVaultCertificateId,
    this.keyVaultId,
    this.negotiateClientCertificate,
    this.sslKeyvaultIdentityClientId,
    this.subject,
    this.thumbprint,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'certificate': ?certificate,
      'certificatePassword': ?certificatePassword,
      'certificateSource': ?certificateSource,
      'certificateStatus': ?certificateStatus,
      'defaultSslBinding': ?defaultSslBinding,
      'expiry': ?expiry,
      'hostName': hostName,
      'keyVaultCertificateId': ?keyVaultCertificateId,
      'keyVaultId': ?keyVaultId,
      'negotiateClientCertificate': ?negotiateClientCertificate,
      'sslKeyvaultIdentityClientId': ?sslKeyvaultIdentityClientId,
      'subject': ?subject,
      'thumbprint': ?thumbprint,
    };
  }

  factory ServiceHostnameConfigurationProxy.fromMap(Map<String, dynamic> map) {
    return ServiceHostnameConfigurationProxy(
      certificate: map['certificate'] == null ? null : map['certificate'] as String,
      certificatePassword: map['certificatePassword'] == null ? null : map['certificatePassword'] as String,
      certificateSource: map['certificateSource'] == null ? null : map['certificateSource'] as String,
      certificateStatus: map['certificateStatus'] == null ? null : map['certificateStatus'] as String,
      defaultSslBinding: map['defaultSslBinding'] == null ? null : map['defaultSslBinding'] as bool,
      expiry: map['expiry'] == null ? null : map['expiry'] as String,
      hostName: map['hostName'] as String,
      keyVaultCertificateId: map['keyVaultCertificateId'] == null ? null : map['keyVaultCertificateId'] as String,
      keyVaultId: map['keyVaultId'] == null ? null : map['keyVaultId'] as String,
      negotiateClientCertificate: map['negotiateClientCertificate'] == null ? null : map['negotiateClientCertificate'] as bool,
      sslKeyvaultIdentityClientId: map['sslKeyvaultIdentityClientId'] == null ? null : map['sslKeyvaultIdentityClientId'] as String,
      subject: map['subject'] == null ? null : map['subject'] as String,
      thumbprint: map['thumbprint'] == null ? null : map['thumbprint'] as String,
    );
  }
}

