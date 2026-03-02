// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class CertificateOrderCertificate {
  /// The name of the App Service Certificate.
  final pulumi.Input<String>? certificateName;
  /// Key Vault resource Id.
  final pulumi.Input<String>? keyVaultId;
  /// Key Vault secret name.
  final pulumi.Input<String>? keyVaultSecretName;
  /// Status of the Key Vault secret.
  final pulumi.Input<String>? provisioningState;

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
      certificateName: map['certificateName'] == null ? null : (map['certificateName']! as String).input(),
      keyVaultId: map['keyVaultId'] == null ? null : (map['keyVaultId']! as String).input(),
      keyVaultSecretName: map['keyVaultSecretName'] == null ? null : (map['keyVaultSecretName']! as String).input(),
      provisioningState: map['provisioningState'] == null ? null : (map['provisioningState']! as String).input(),
    );
  }
}

