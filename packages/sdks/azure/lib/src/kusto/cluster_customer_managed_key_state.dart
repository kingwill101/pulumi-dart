// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering ClusterCustomerManagedKey resources.
class ClusterCustomerManagedKeyState {
  /// The ID of the Kusto Cluster. Changing this forces a new resource to be created.
  final pulumi.Input<String?>? clusterId;
  /// The name of Key Vault Key.
  final pulumi.Input<String?>? keyName;
  /// The ID of the Key Vault for CMK encryption.
  final pulumi.Input<String?>? keyVaultId;
  /// The version of Key Vault Key.
  final pulumi.Input<String?>? keyVersion;
  /// The Managed HSM Key ID for CMK encryption.
  ///
  /// &gt; **Note:** Exactly one of `managedHsmKeyId` or `keyVaultId` must be specified.
  final pulumi.Input<String?>? managedHsmKeyId;
  /// The user assigned identity that has access to the Key Vault Key. If not specified, system assigned identity will be used.
  final pulumi.Input<String?>? userIdentity;

  /// Creates a new [ClusterCustomerManagedKeyState].
  /// [clusterId] The ID of the Kusto Cluster. Changing this forces a new resource to be created.
  /// [keyName] The name of Key Vault Key.
  /// [keyVaultId] The ID of the Key Vault for CMK encryption.
  /// [keyVersion] The version of Key Vault Key.
  /// [managedHsmKeyId] The Managed HSM Key ID for CMK encryption.
  /// [userIdentity] The user assigned identity that has access to the Key Vault Key. If not specified, system assigned identity will be used.
  const ClusterCustomerManagedKeyState({
    this.clusterId,
    this.keyName,
    this.keyVaultId,
    this.keyVersion,
    this.managedHsmKeyId,
    this.userIdentity,
  });

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
      clusterId: (() { final guardedValue = map['clusterId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      keyName: (() { final guardedValue = map['keyName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      keyVaultId: (() { final guardedValue = map['keyVaultId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      keyVersion: (() { final guardedValue = map['keyVersion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      managedHsmKeyId: (() { final guardedValue = map['managedHsmKeyId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      userIdentity: (() { final guardedValue = map['userIdentity']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
