// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class RegistryCredentialSetAuthenticationCredentials {
  /// The URI of the secret containing the password in a Key Vault.
  ///
  /// > **Note:** Be aware that you will need to permit the Identity that is created for the Container Registry to have `get` on secrets to the Key Vault, e.g. using the `azure.keyvault.AccessPolicy` resource.
  final pulumi.Input<String> passwordSecretId;
  /// The URI of the secret containing the username in a Key Vault.
  final pulumi.Input<String> usernameSecretId;

  /// Creates a new [RegistryCredentialSetAuthenticationCredentials].
  /// [passwordSecretId] The URI of the secret containing the password in a Key Vault.
  /// [usernameSecretId] The URI of the secret containing the username in a Key Vault.
  RegistryCredentialSetAuthenticationCredentials({
    required this.passwordSecretId,
    required this.usernameSecretId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'passwordSecretId': passwordSecretId,
      'usernameSecretId': usernameSecretId,
    };
  }

  factory RegistryCredentialSetAuthenticationCredentials.fromMap(Map<String, dynamic> map) {
    return RegistryCredentialSetAuthenticationCredentials(
      passwordSecretId: (map['passwordSecretId'] as String).input(),
      usernameSecretId: (map['usernameSecretId'] as String).input(),
    );
  }
}

