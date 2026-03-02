// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AIServicesCustomerManagedKey {
  /// The Client ID of the User Assigned Identity that has access to the key. This property only needs to be specified when there are multiple identities attached to the Azure AI Service.
  final pulumi.Input<String>? identityClientId;
  /// The ID of the Key Vault Key which should be used to encrypt the data in this AI Services Account. Exactly one of `key_vault_key_id`, `managed_hsm_key_id` must be specified.
  final pulumi.Input<String>? keyVaultKeyId;
  /// The ID of the managed HSM Key which should be used to encrypt the data in this AI Services Account. Exactly one of `key_vault_key_id`, `managed_hsm_key_id` must be specified.
  final pulumi.Input<String>? managedHsmKeyId;

  /// Creates a new [AIServicesCustomerManagedKey].
  /// [identityClientId] The Client ID of the User Assigned Identity that has access to the key. This property only needs to be specified when there are multiple identities attached to the Azure AI Service.
  /// [keyVaultKeyId] The ID of the Key Vault Key which should be used to encrypt the data in this AI Services Account. Exactly one of `key_vault_key_id`, `managed_hsm_key_id` must be specified.
  /// [managedHsmKeyId] The ID of the managed HSM Key which should be used to encrypt the data in this AI Services Account. Exactly one of `key_vault_key_id`, `managed_hsm_key_id` must be specified.
  AIServicesCustomerManagedKey({
    this.identityClientId,
    this.keyVaultKeyId,
    this.managedHsmKeyId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'identityClientId': ?identityClientId,
      'keyVaultKeyId': ?keyVaultKeyId,
      'managedHsmKeyId': ?managedHsmKeyId,
    };
  }

  factory AIServicesCustomerManagedKey.fromMap(Map<String, dynamic> map) {
    return AIServicesCustomerManagedKey(
      identityClientId: map['identityClientId'] == null ? null : (map['identityClientId'] as String).input(),
      keyVaultKeyId: map['keyVaultKeyId'] == null ? null : (map['keyVaultKeyId'] as String).input(),
      managedHsmKeyId: map['managedHsmKeyId'] == null ? null : (map['managedHsmKeyId'] as String).input(),
    );
  }
}

