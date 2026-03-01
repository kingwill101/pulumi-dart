// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering AccessPolicy resources.
class AccessPolicyState {
  /// The object ID of an Application in Azure Active Directory. Changing this forces a new resource to be created.
  final pulumi.Input<String>? applicationId;
  /// List of certificate permissions, must be one or more from the following: `Backup`, `Create`, `Delete`, `DeleteIssuers`, `Get`, `GetIssuers`, `Import`, `List`, `ListIssuers`, `ManageContacts`, `ManageIssuers`, `Purge`, `Recover`, `Restore`, `SetIssuers` and `Update`.
  final pulumi.Input<List<String>>? certificatePermissions;
  /// List of key permissions, must be one or more from the following: `Backup`, `Create`, `Decrypt`, `Delete`, `Encrypt`, `Get`, `Import`, `List`, `Purge`, `Recover`, `Restore`, `Sign`, `UnwrapKey`, `Update`, `Verify`, `WrapKey`, `Release`, `Rotate`, `GetRotationPolicy` and `SetRotationPolicy`.
  final pulumi.Input<List<String>>? keyPermissions;
  /// Specifies the id of the Key Vault resource. Changing this forces a new resource to be created.
  final pulumi.Input<String>? keyVaultId;
  /// The object ID of a user, service principal or security group in the Azure Active Directory tenant for the vault. The object ID of a service principal can be fetched from `azuread_service_principal.object_id`. The object ID must be unique for the list of access policies. Changing this forces a new resource to be created.
  final pulumi.Input<String>? objectId;
  /// List of secret permissions, must be one or more from the following: `Backup`, `Delete`, `Get`, `List`, `Purge`, `Recover`, `Restore` and `Set`.
  final pulumi.Input<List<String>>? secretPermissions;
  /// List of storage permissions, must be one or more from the following: `Backup`, `Delete`, `DeleteSAS`, `Get`, `GetSAS`, `List`, `ListSAS`, `Purge`, `Recover`, `RegenerateKey`, `Restore`, `Set`, `SetSAS` and `Update`.
  final pulumi.Input<List<String>>? storagePermissions;
  /// The Azure Active Directory tenant ID that should be used for authenticating requests to the key vault. Changing this forces a new resource to be created.
  final pulumi.Input<String>? tenantId;

  /// Creates a new [AccessPolicyState].
  /// [applicationId] The object ID of an Application in Azure Active Directory. Changing this forces a new resource to be created.
  /// [certificatePermissions] List of certificate permissions, must be one or more from the following: `Backup`, `Create`, `Delete`, `DeleteIssuers`, `Get`, `GetIssuers`, `Import`, `List`, `ListIssuers`, `ManageContacts`, `ManageIssuers`, `Purge`, `Recover`, `Restore`, `SetIssuers` and `Update`.
  /// [keyPermissions] List of key permissions, must be one or more from the following: `Backup`, `Create`, `Decrypt`, `Delete`, `Encrypt`, `Get`, `Import`, `List`, `Purge`, `Recover`, `Restore`, `Sign`, `UnwrapKey`, `Update`, `Verify`, `WrapKey`, `Release`, `Rotate`, `GetRotationPolicy` and `SetRotationPolicy`.
  /// [keyVaultId] Specifies the id of the Key Vault resource. Changing this forces a new resource to be created.
  /// [objectId] The object ID of a user, service principal or security group in the Azure Active Directory tenant for the vault. The object ID of a service principal can be fetched from `azuread_service_principal.object_id`. The object ID must be unique for the list of access policies. Changing this forces a new resource to be created.
  /// [secretPermissions] List of secret permissions, must be one or more from the following: `Backup`, `Delete`, `Get`, `List`, `Purge`, `Recover`, `Restore` and `Set`.
  /// [storagePermissions] List of storage permissions, must be one or more from the following: `Backup`, `Delete`, `DeleteSAS`, `Get`, `GetSAS`, `List`, `ListSAS`, `Purge`, `Recover`, `RegenerateKey`, `Restore`, `Set`, `SetSAS` and `Update`.
  /// [tenantId] The Azure Active Directory tenant ID that should be used for authenticating requests to the key vault. Changing this forces a new resource to be created.
  AccessPolicyState({
    pulumi.Output<String>? applicationId,
    pulumi.Output<List<String>>? certificatePermissions,
    pulumi.Output<List<String>>? keyPermissions,
    pulumi.Output<String>? keyVaultId,
    pulumi.Output<String>? objectId,
    pulumi.Output<List<String>>? secretPermissions,
    pulumi.Output<List<String>>? storagePermissions,
    pulumi.Output<String>? tenantId,
  }) :
      applicationId = pulumi.Input.asOptionalInput<String>(applicationId),
      certificatePermissions = pulumi.Input.asOptionalInput<List<String>>(certificatePermissions),
      keyPermissions = pulumi.Input.asOptionalInput<List<String>>(keyPermissions),
      keyVaultId = pulumi.Input.asOptionalInput<String>(keyVaultId),
      objectId = pulumi.Input.asOptionalInput<String>(objectId),
      secretPermissions = pulumi.Input.asOptionalInput<List<String>>(secretPermissions),
      storagePermissions = pulumi.Input.asOptionalInput<List<String>>(storagePermissions),
      tenantId = pulumi.Input.asOptionalInput<String>(tenantId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'applicationId': ?applicationId,
      'certificatePermissions': ?certificatePermissions,
      'keyPermissions': ?keyPermissions,
      'keyVaultId': ?keyVaultId,
      'objectId': ?objectId,
      'secretPermissions': ?secretPermissions,
      'storagePermissions': ?storagePermissions,
      'tenantId': ?tenantId,
    };
  }

  factory AccessPolicyState.fromMap(Map<String, dynamic> map) {
    return AccessPolicyState(
      applicationId: map['applicationId'] == null ? null : pulumi.Output.create<String>(map['applicationId'] as String),
      certificatePermissions: map['certificatePermissions'] == null ? null : pulumi.Output.create<List<String>>((map['certificatePermissions'] as List).cast<String>()),
      keyPermissions: map['keyPermissions'] == null ? null : pulumi.Output.create<List<String>>((map['keyPermissions'] as List).cast<String>()),
      keyVaultId: map['keyVaultId'] == null ? null : pulumi.Output.create<String>(map['keyVaultId'] as String),
      objectId: map['objectId'] == null ? null : pulumi.Output.create<String>(map['objectId'] as String),
      secretPermissions: map['secretPermissions'] == null ? null : pulumi.Output.create<List<String>>((map['secretPermissions'] as List).cast<String>()),
      storagePermissions: map['storagePermissions'] == null ? null : pulumi.Output.create<List<String>>((map['storagePermissions'] as List).cast<String>()),
      tenantId: map['tenantId'] == null ? null : pulumi.Output.create<String>(map['tenantId'] as String),
    );
  }
}

