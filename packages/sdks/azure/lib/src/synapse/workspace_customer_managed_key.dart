// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class WorkspaceCustomerManagedKey {
  /// An identifier for the key. Name needs to match the name of the key used with the `azure.synapse.WorkspaceKey` resource. Defaults to "cmk" if not specified.
  final pulumi.Input<String>? keyName;

  /// The Azure Key Vault Key Versionless ID to be used as the Customer Managed Key (CMK) for double encryption (e.g. `https://example-keyvault.vault.azure.net/type/cmk/`).
  final pulumi.Input<String> keyVersionlessId;

  /// The User Assigned Identity ID to be used for accessing the Customer Managed Key for encryption.
  final pulumi.Input<String>? userAssignedIdentityId;

  /// Creates a new [WorkspaceCustomerManagedKey].
  /// [keyName] An identifier for the key. Name needs to match the name of the key used with the `azure.synapse.WorkspaceKey` resource. Defaults to "cmk" if not specified.
  /// [keyVersionlessId] The Azure Key Vault Key Versionless ID to be used as the Customer Managed Key (CMK) for double encryption (e.g. `https://example-keyvault.vault.azure.net/type/cmk/`).
  /// [userAssignedIdentityId] The User Assigned Identity ID to be used for accessing the Customer Managed Key for encryption.
  WorkspaceCustomerManagedKey({
    this.keyName,
    required this.keyVersionlessId,
    this.userAssignedIdentityId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'keyName': ?keyName,
      'keyVersionlessId': keyVersionlessId,
      'userAssignedIdentityId': ?userAssignedIdentityId,
    };
  }

  factory WorkspaceCustomerManagedKey.fromMap(Map<String, dynamic> map) {
    return WorkspaceCustomerManagedKey(
      keyName: (() {
        final guardedValue = map['keyName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      keyVersionlessId: pulumi.Input.fromValue(
        map['keyVersionlessId'] as String,
      ),
      userAssignedIdentityId: (() {
        final guardedValue = map['userAssignedIdentityId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
