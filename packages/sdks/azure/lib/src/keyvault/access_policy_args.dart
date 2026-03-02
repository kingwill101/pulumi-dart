// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_keyvault_access_policy_access_policy_args_doc}
/// The set of arguments for AccessPolicy.
/// {@endtemplate}
/// {@macro pulumi_keyvault_access_policy_access_policy_args_doc}
class AccessPolicyArgs {
  /// The object ID of an Application in Azure Active Directory. Changing this forces a new resource to be created.
  final pulumi.Input<String>? applicationId;
  /// List of certificate permissions, must be one or more from the following: `Backup`, `Create`, `Delete`, `DeleteIssuers`, `Get`, `GetIssuers`, `Import`, `List`, `ListIssuers`, `ManageContacts`, `ManageIssuers`, `Purge`, `Recover`, `Restore`, `SetIssuers` and `Update`.
  final pulumi.Input<List<String>>? certificatePermissions;
  /// List of key permissions, must be one or more from the following: `Backup`, `Create`, `Decrypt`, `Delete`, `Encrypt`, `Get`, `Import`, `List`, `Purge`, `Recover`, `Restore`, `Sign`, `UnwrapKey`, `Update`, `Verify`, `WrapKey`, `Release`, `Rotate`, `GetRotationPolicy` and `SetRotationPolicy`.
  final pulumi.Input<List<String>>? keyPermissions;
  /// Specifies the id of the Key Vault resource. Changing this forces a new resource to be created.
  final pulumi.Input<String> keyVaultId;
  /// The object ID of a user, service principal or security group in the Azure Active Directory tenant for the vault. The object ID of a service principal can be fetched from `azuread_service_principal.object_id`. The object ID must be unique for the list of access policies. Changing this forces a new resource to be created.
  final pulumi.Input<String> objectId;
  /// List of secret permissions, must be one or more from the following: `Backup`, `Delete`, `Get`, `List`, `Purge`, `Recover`, `Restore` and `Set`.
  final pulumi.Input<List<String>>? secretPermissions;
  /// List of storage permissions, must be one or more from the following: `Backup`, `Delete`, `DeleteSAS`, `Get`, `GetSAS`, `List`, `ListSAS`, `Purge`, `Recover`, `RegenerateKey`, `Restore`, `Set`, `SetSAS` and `Update`.
  final pulumi.Input<List<String>>? storagePermissions;
  /// The Azure Active Directory tenant ID that should be used for authenticating requests to the key vault. Changing this forces a new resource to be created.
  final pulumi.Input<String> tenantId;

  /// Creates a new [AccessPolicyArgs].
  /// [applicationId] The object ID of an Application in Azure Active Directory. Changing this forces a new resource to be created.
  /// [certificatePermissions] List of certificate permissions, must be one or more from the following: `Backup`, `Create`, `Delete`, `DeleteIssuers`, `Get`, `GetIssuers`, `Import`, `List`, `ListIssuers`, `ManageContacts`, `ManageIssuers`, `Purge`, `Recover`, `Restore`, `SetIssuers` and `Update`.
  /// [keyPermissions] List of key permissions, must be one or more from the following: `Backup`, `Create`, `Decrypt`, `Delete`, `Encrypt`, `Get`, `Import`, `List`, `Purge`, `Recover`, `Restore`, `Sign`, `UnwrapKey`, `Update`, `Verify`, `WrapKey`, `Release`, `Rotate`, `GetRotationPolicy` and `SetRotationPolicy`.
  /// [keyVaultId] Specifies the id of the Key Vault resource. Changing this forces a new resource to be created.
  /// [objectId] The object ID of a user, service principal or security group in the Azure Active Directory tenant for the vault. The object ID of a service principal can be fetched from `azuread_service_principal.object_id`. The object ID must be unique for the list of access policies. Changing this forces a new resource to be created.
  /// [secretPermissions] List of secret permissions, must be one or more from the following: `Backup`, `Delete`, `Get`, `List`, `Purge`, `Recover`, `Restore` and `Set`.
  /// [storagePermissions] List of storage permissions, must be one or more from the following: `Backup`, `Delete`, `DeleteSAS`, `Get`, `GetSAS`, `List`, `ListSAS`, `Purge`, `Recover`, `RegenerateKey`, `Restore`, `Set`, `SetSAS` and `Update`.
  /// [tenantId] The Azure Active Directory tenant ID that should be used for authenticating requests to the key vault. Changing this forces a new resource to be created.
  AccessPolicyArgs({
    this.applicationId,
    this.certificatePermissions,
    this.keyPermissions,
    required this.keyVaultId,
    required this.objectId,
    this.secretPermissions,
    this.storagePermissions,
    required this.tenantId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'applicationId': ?applicationId,
      'certificatePermissions': ?certificatePermissions,
      'keyPermissions': ?keyPermissions,
      'keyVaultId': keyVaultId,
      'objectId': objectId,
      'secretPermissions': ?secretPermissions,
      'storagePermissions': ?storagePermissions,
      'tenantId': tenantId,
    };
  }

  factory AccessPolicyArgs.fromMap(Map<String, dynamic> map) {
    return AccessPolicyArgs(
      applicationId: map['applicationId'] == null ? null : (map['applicationId'] as String).input(),
      certificatePermissions: map['certificatePermissions'] == null ? null : ((map['certificatePermissions'] as List).cast<String>()).input(),
      keyPermissions: map['keyPermissions'] == null ? null : ((map['keyPermissions'] as List).cast<String>()).input(),
      keyVaultId: (map['keyVaultId'] as String).input(),
      objectId: (map['objectId'] as String).input(),
      secretPermissions: map['secretPermissions'] == null ? null : ((map['secretPermissions'] as List).cast<String>()).input(),
      storagePermissions: map['storagePermissions'] == null ? null : ((map['storagePermissions'] as List).cast<String>()).input(),
      tenantId: (map['tenantId'] as String).input(),
    );
  }
}

