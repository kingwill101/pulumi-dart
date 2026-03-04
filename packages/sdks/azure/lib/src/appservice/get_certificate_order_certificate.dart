// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetCertificateOrderCertificate {
  /// The name of the App Service Certificate.
  final pulumi.Input<String> certificateName;

  /// Key Vault resource Id.
  final pulumi.Input<String> keyVaultId;

  /// Key Vault secret name.
  final pulumi.Input<String> keyVaultSecretName;

  /// Status of the Key Vault secret.
  final pulumi.Input<String> provisioningState;

  /// Creates a new [GetCertificateOrderCertificate].
  /// [certificateName] The name of the App Service Certificate.
  /// [keyVaultId] Key Vault resource Id.
  /// [keyVaultSecretName] Key Vault secret name.
  /// [provisioningState] Status of the Key Vault secret.
  GetCertificateOrderCertificate({
    required this.certificateName,
    required this.keyVaultId,
    required this.keyVaultSecretName,
    required this.provisioningState,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'certificateName': certificateName,
      'keyVaultId': keyVaultId,
      'keyVaultSecretName': keyVaultSecretName,
      'provisioningState': provisioningState,
    };
  }

  factory GetCertificateOrderCertificate.fromMap(Map<String, dynamic> map) {
    return GetCertificateOrderCertificate(
      certificateName: pulumi.Input.fromValue(map['certificateName'] as String),
      keyVaultId: pulumi.Input.fromValue(map['keyVaultId'] as String),
      keyVaultSecretName: pulumi.Input.fromValue(
        map['keyVaultSecretName'] as String,
      ),
      provisioningState: pulumi.Input.fromValue(
        map['provisioningState'] as String,
      ),
    );
  }
}
