// ignore_for_file: unused_element, unnecessary_cast


class KeyVaultAccessPolicy {
  /// The object ID of an Application in Azure Active Directory.
  final String? applicationId;
  /// List of certificate permissions, must be one or more from the following: `Backup`, `Create`, `Delete`, `DeleteIssuers`, `Get`, `GetIssuers`, `Import`, `List`, `ListIssuers`, `ManageContacts`, `ManageIssuers`, `Purge`, `Recover`, `Restore`, `SetIssuers` and `Update`.
  final List<String>? certificatePermissions;
  /// List of key permissions. Possible values are `Backup`, `Create`, `Decrypt`, `Delete`, `Encrypt`, `Get`, `Import`, `List`, `Purge`, `Recover`, `Restore`, `Sign`, `UnwrapKey`, `Update`, `Verify`, `WrapKey`, `Release`, `Rotate`, `GetRotationPolicy` and `SetRotationPolicy`.
  final List<String>? keyPermissions;
  /// The object ID of a user, service principal or security group in the Azure Active Directory tenant for the vault. The object ID must be unique for the list of access policies.
  final String objectId;
  /// List of secret permissions, must be one or more from the following: `Backup`, `Delete`, `Get`, `List`, `Purge`, `Recover`, `Restore` and `Set`.
  final List<String>? secretPermissions;
  /// List of storage permissions, must be one or more from the following: `Backup`, `Delete`, `DeleteSAS`, `Get`, `GetSAS`, `List`, `ListSAS`, `Purge`, `Recover`, `RegenerateKey`, `Restore`, `Set`, `SetSAS` and `Update`.
  final List<String>? storagePermissions;
  /// The Azure Active Directory tenant ID that should be used for authenticating requests to the key vault. Must match the `tenant_id` used above.
  final String tenantId;

  /// Creates a new [KeyVaultAccessPolicy].
  /// [applicationId] The object ID of an Application in Azure Active Directory.
  /// [certificatePermissions] List of certificate permissions, must be one or more from the following: `Backup`, `Create`, `Delete`, `DeleteIssuers`, `Get`, `GetIssuers`, `Import`, `List`, `ListIssuers`, `ManageContacts`, `ManageIssuers`, `Purge`, `Recover`, `Restore`, `SetIssuers` and `Update`.
  /// [keyPermissions] List of key permissions. Possible values are `Backup`, `Create`, `Decrypt`, `Delete`, `Encrypt`, `Get`, `Import`, `List`, `Purge`, `Recover`, `Restore`, `Sign`, `UnwrapKey`, `Update`, `Verify`, `WrapKey`, `Release`, `Rotate`, `GetRotationPolicy` and `SetRotationPolicy`.
  /// [objectId] The object ID of a user, service principal or security group in the Azure Active Directory tenant for the vault. The object ID must be unique for the list of access policies.
  /// [secretPermissions] List of secret permissions, must be one or more from the following: `Backup`, `Delete`, `Get`, `List`, `Purge`, `Recover`, `Restore` and `Set`.
  /// [storagePermissions] List of storage permissions, must be one or more from the following: `Backup`, `Delete`, `DeleteSAS`, `Get`, `GetSAS`, `List`, `ListSAS`, `Purge`, `Recover`, `RegenerateKey`, `Restore`, `Set`, `SetSAS` and `Update`.
  /// [tenantId] The Azure Active Directory tenant ID that should be used for authenticating requests to the key vault. Must match the `tenant_id` used above.
  KeyVaultAccessPolicy({
    this.applicationId,
    this.certificatePermissions,
    this.keyPermissions,
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
      'objectId': objectId,
      'secretPermissions': ?secretPermissions,
      'storagePermissions': ?storagePermissions,
      'tenantId': tenantId,
    };
  }

  factory KeyVaultAccessPolicy.fromMap(Map<String, dynamic> map) {
    return KeyVaultAccessPolicy(
      applicationId: map['applicationId'] == null ? null : map['applicationId'] as String,
      certificatePermissions: map['certificatePermissions'] == null ? null : (map['certificatePermissions'] as List).cast<String>(),
      keyPermissions: map['keyPermissions'] == null ? null : (map['keyPermissions'] as List).cast<String>(),
      objectId: map['objectId'] as String,
      secretPermissions: map['secretPermissions'] == null ? null : (map['secretPermissions'] as List).cast<String>(),
      storagePermissions: map['storagePermissions'] == null ? null : (map['storagePermissions'] as List).cast<String>(),
      tenantId: map['tenantId'] as String,
    );
  }
}

