// ignore_for_file: unused_element, unnecessary_cast


class CertificateOrderCertificate {
  /// The name of the App Service Certificate.
  final String? certificateName;
  /// Key Vault resource Id.
  final String? keyVaultId;
  /// Key Vault secret name.
  final String? keyVaultSecretName;
  /// Status of the Key Vault secret.
  final String? provisioningState;

  /// Creates a new [CertificateOrderCertificate].
  /// [certificateName] The name of the App Service Certificate.
  /// [keyVaultId] Key Vault resource Id.
  /// [keyVaultSecretName] Key Vault secret name.
  /// [provisioningState] Status of the Key Vault secret.
  CertificateOrderCertificate({
    this.certificateName,
    this.keyVaultId,
    this.keyVaultSecretName,
    this.provisioningState,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'certificateName': ?certificateName,
      'keyVaultId': ?keyVaultId,
      'keyVaultSecretName': ?keyVaultSecretName,
      'provisioningState': ?provisioningState,
    };
  }

  factory CertificateOrderCertificate.fromMap(Map<String, dynamic> map) {
    return CertificateOrderCertificate(
      certificateName: map['certificateName'] == null ? null : map['certificateName'] as String,
      keyVaultId: map['keyVaultId'] == null ? null : map['keyVaultId'] as String,
      keyVaultSecretName: map['keyVaultSecretName'] == null ? null : map['keyVaultSecretName'] as String,
      provisioningState: map['provisioningState'] == null ? null : map['provisioningState'] as String,
    );
  }
}

