// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering ClusterCustomerManagedKey resources.
class ClusterCustomerManagedKeyState {
  /// The ID of the Kusto Cluster. Changing this forces a new resource to be created.
  final pulumi.Input<String>? clusterId;
  /// The name of Key Vault Key.
  final pulumi.Input<String>? keyName;
  /// The ID of the Key Vault for CMK encryption.
  final pulumi.Input<String>? keyVaultId;
  /// The version of Key Vault Key.
  final pulumi.Input<String>? keyVersion;
  /// The Managed HSM Key ID for CMK encryption.
  ///
  /// > **Note:** Exactly one of `managed_hsm_key_id` or `key_vault_id` must be specified.
  final pulumi.Input<String>? managedHsmKeyId;
  /// The user assigned identity that has access to the Key Vault Key. If not specified, system assigned identity will be used.
  final pulumi.Input<String>? userIdentity;

  /// Creates a new [ClusterCustomerManagedKeyState].
  /// [clusterId] The ID of the Kusto Cluster. Changing this forces a new resource to be created.
  /// [keyName] The name of Key Vault Key.
  /// [keyVaultId] The ID of the Key Vault for CMK encryption.
  /// [keyVersion] The version of Key Vault Key.
  /// [managedHsmKeyId] The Managed HSM Key ID for CMK encryption.
  /// [userIdentity] The user assigned identity that has access to the Key Vault Key. If not specified, system assigned identity will be used.
  ClusterCustomerManagedKeyState({
    pulumi.Output<String>? clusterId,
    pulumi.Output<String>? keyName,
    pulumi.Output<String>? keyVaultId,
    pulumi.Output<String>? keyVersion,
    pulumi.Output<String>? managedHsmKeyId,
    pulumi.Output<String>? userIdentity,
  }) :
      clusterId = pulumi.Input.asOptionalInput<String>(clusterId),
      keyName = pulumi.Input.asOptionalInput<String>(keyName),
      keyVaultId = pulumi.Input.asOptionalInput<String>(keyVaultId),
      keyVersion = pulumi.Input.asOptionalInput<String>(keyVersion),
      managedHsmKeyId = pulumi.Input.asOptionalInput<String>(managedHsmKeyId),
      userIdentity = pulumi.Input.asOptionalInput<String>(userIdentity);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clusterId': ?clusterId,
      'keyName': ?keyName,
      'keyVaultId': ?keyVaultId,
      'keyVersion': ?keyVersion,
      'managedHsmKeyId': ?managedHsmKeyId,
      'userIdentity': ?userIdentity,
    };
  }

  factory ClusterCustomerManagedKeyState.fromMap(Map<String, dynamic> map) {
    return ClusterCustomerManagedKeyState(
      clusterId: map['clusterId'] == null ? null : pulumi.Output.create<String>(map['clusterId'] as String),
      keyName: map['keyName'] == null ? null : pulumi.Output.create<String>(map['keyName'] as String),
      keyVaultId: map['keyVaultId'] == null ? null : pulumi.Output.create<String>(map['keyVaultId'] as String),
      keyVersion: map['keyVersion'] == null ? null : pulumi.Output.create<String>(map['keyVersion'] as String),
      managedHsmKeyId: map['managedHsmKeyId'] == null ? null : pulumi.Output.create<String>(map['managedHsmKeyId'] as String),
      userIdentity: map['userIdentity'] == null ? null : pulumi.Output.create<String>(map['userIdentity'] as String),
    );
  }
}

