// ignore_for_file: unused_element, unnecessary_cast


class GetServiceHostnameConfigurationScm {
  /// The Hostname used for the SCM URL.
  final String hostName;
  /// The ID of the Key Vault Secret which contains the SSL Certificate.
  final String keyVaultCertificateId;
  final String keyVaultId;
  /// Is Client Certificate Negotiation enabled?
  final bool negotiateClientCertificate;

  /// Creates a new [GetServiceHostnameConfigurationScm].
  /// [hostName] The Hostname used for the SCM URL.
  /// [keyVaultCertificateId] The ID of the Key Vault Secret which contains the SSL Certificate.
  /// [keyVaultId] Required.
  /// [negotiateClientCertificate] Is Client Certificate Negotiation enabled?
  GetServiceHostnameConfigurationScm({
    required this.hostName,
    required this.keyVaultCertificateId,
    required this.keyVaultId,
    required this.negotiateClientCertificate,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'hostName': hostName,
      'keyVaultCertificateId': keyVaultCertificateId,
      'keyVaultId': keyVaultId,
      'negotiateClientCertificate': negotiateClientCertificate,
    };
  }

  factory GetServiceHostnameConfigurationScm.fromMap(Map<String, dynamic> map) {
    return GetServiceHostnameConfigurationScm(
      hostName: map['hostName'] as String,
      keyVaultCertificateId: map['keyVaultCertificateId'] as String,
      keyVaultId: map['keyVaultId'] as String,
      negotiateClientCertificate: map['negotiateClientCertificate'] as bool,
    );
  }
}

