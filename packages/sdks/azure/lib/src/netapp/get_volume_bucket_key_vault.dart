// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetVolumeBucketKeyVault {
  /// The URI of the Azure Key Vault that stores the bucket server certificate.
  final pulumi.Input<String> certificateKeyVaultUri;
  /// The name of the certificate object inside the Key Vault.
  final pulumi.Input<String> certificateName;
  /// The URI of the Azure Key Vault used to store the generated bucket access and secret keys.
  final pulumi.Input<String> credentialsKeyVaultUri;
  /// The name of the secret in `credentialsKeyVaultUri` that stores the generated bucket credentials.
  final pulumi.Input<String> credentialsSecretName;

  /// Creates a new [GetVolumeBucketKeyVault].
  /// [certificateKeyVaultUri] The URI of the Azure Key Vault that stores the bucket server certificate.
  /// [certificateName] The name of the certificate object inside the Key Vault.
  /// [credentialsKeyVaultUri] The URI of the Azure Key Vault used to store the generated bucket access and secret keys.
  /// [credentialsSecretName] The name of the secret in `credentialsKeyVaultUri` that stores the generated bucket credentials.
  const GetVolumeBucketKeyVault({
    required this.certificateKeyVaultUri,
    required this.certificateName,
    required this.credentialsKeyVaultUri,
    required this.credentialsSecretName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'certificateKeyVaultUri': certificateKeyVaultUri,
      'certificateName': certificateName,
      'credentialsKeyVaultUri': credentialsKeyVaultUri,
      'credentialsSecretName': credentialsSecretName,
    };
  }

  factory GetVolumeBucketKeyVault.fromMap(Map<String, dynamic> map) {
    return GetVolumeBucketKeyVault(
      certificateKeyVaultUri: pulumi.Input.fromValue(map['certificateKeyVaultUri'] as String),
      certificateName: pulumi.Input.fromValue(map['certificateName'] as String),
      credentialsKeyVaultUri: pulumi.Input.fromValue(map['credentialsKeyVaultUri'] as String),
      credentialsSecretName: pulumi.Input.fromValue(map['credentialsSecretName'] as String),
    );
  }
}
