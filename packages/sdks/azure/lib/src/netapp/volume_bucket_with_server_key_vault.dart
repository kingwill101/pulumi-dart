// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class VolumeBucketWithServerKeyVault {
  /// The URI of the Azure Key Vault that stores the bucket server certificate.
  final pulumi.Input<String> certificateKeyVaultUri;
  /// The name of the certificate object inside the Key Vault.
  final pulumi.Input<String> certificateName;
  /// The URI of the Azure Key Vault used to store the generated bucket access and secret keys. May be the same vault as `certificateKeyVaultUri` but the documentation recommends using two separate vaults.
  final pulumi.Input<String> credentialsKeyVaultUri;
  /// The name of the secret in `credentialsKeyVaultUri` that stores the generated bucket credentials. The Key Vault secret value is a JSON document with `accessKeyId` and `secretAccessKey` properties.
  ///
  /// &gt; **Note:** When `keyVault` is used, the parent NetApp account must have a system-assigned managed identity (`identity { type = "SystemAssigned" }` on `azure.netapp.Account`). That identity is the principal that needs Key Vault access. Grant it `Get, List, Update, Create, Import, ManageContacts, GetIssuers, ListIssuers, SetIssuers, DeleteIssuers` certificate permissions on `certificateKeyVaultUri` and `Get, List, Set, Delete` secret permissions on `credentialsKeyVaultUri`.
  final pulumi.Input<String> credentialsSecretName;

  /// Creates a new [VolumeBucketWithServerKeyVault].
  /// [certificateKeyVaultUri] The URI of the Azure Key Vault that stores the bucket server certificate.
  /// [certificateName] The name of the certificate object inside the Key Vault.
  /// [credentialsKeyVaultUri] The URI of the Azure Key Vault used to store the generated bucket access and secret keys. May be the same vault as `certificateKeyVaultUri` but the documentation recommends using two separate vaults.
  /// [credentialsSecretName] The name of the secret in `credentialsKeyVaultUri` that stores the generated bucket credentials. The Key Vault secret value is a JSON document with `accessKeyId` and `secretAccessKey` properties.
  const VolumeBucketWithServerKeyVault({
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

  factory VolumeBucketWithServerKeyVault.fromMap(Map<String, dynamic> map) {
    return VolumeBucketWithServerKeyVault(
      certificateKeyVaultUri: pulumi.Input.fromValue(map['certificateKeyVaultUri'] as String),
      certificateName: pulumi.Input.fromValue(map['certificateName'] as String),
      credentialsKeyVaultUri: pulumi.Input.fromValue(map['credentialsKeyVaultUri'] as String),
      credentialsSecretName: pulumi.Input.fromValue(map['credentialsSecretName'] as String),
    );
  }
}
