// ignore_for_file: unused_element, unnecessary_cast


class GetKeyVaultAccessPolicy {
  /// The Object ID of a Azure Active Directory Application.
  final String applicationId;
  /// A list of certificate permissions applicable to this Access Policy.
  final List<String> certificatePermissions;
  /// A list of key permissions applicable to this Access Policy.
  final List<String> keyPermissions;
  /// An Object ID of a User, Service Principal or Security Group.
  final String objectId;
  /// A list of secret permissions applicable to this Access Policy.
  final List<String> secretPermissions;
  /// A list of storage permissions applicable to this Access Policy.
  final List<String> storagePermissions;
  /// The Azure Active Directory Tenant ID used to authenticate requests for this Key Vault.
  final String tenantId;

  /// Creates a new [GetKeyVaultAccessPolicy].
  /// [applicationId] The Object ID of a Azure Active Directory Application.
  /// [certificatePermissions] A list of certificate permissions applicable to this Access Policy.
  /// [keyPermissions] A list of key permissions applicable to this Access Policy.
  /// [objectId] An Object ID of a User, Service Principal or Security Group.
  /// [secretPermissions] A list of secret permissions applicable to this Access Policy.
  /// [storagePermissions] A list of storage permissions applicable to this Access Policy.
  /// [tenantId] The Azure Active Directory Tenant ID used to authenticate requests for this Key Vault.
  GetKeyVaultAccessPolicy({
    required this.applicationId,
    required this.certificatePermissions,
    required this.keyPermissions,
    required this.objectId,
    required this.secretPermissions,
    required this.storagePermissions,
    required this.tenantId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'applicationId': applicationId,
      'certificatePermissions': certificatePermissions,
      'keyPermissions': keyPermissions,
      'objectId': objectId,
      'secretPermissions': secretPermissions,
      'storagePermissions': storagePermissions,
      'tenantId': tenantId,
    };
  }

  factory GetKeyVaultAccessPolicy.fromMap(Map<String, dynamic> map) {
    return GetKeyVaultAccessPolicy(
      applicationId: map['applicationId'] as String,
      certificatePermissions: (map['certificatePermissions'] as List).cast<String>(),
      keyPermissions: (map['keyPermissions'] as List).cast<String>(),
      objectId: map['objectId'] as String,
      secretPermissions: (map['secretPermissions'] as List).cast<String>(),
      storagePermissions: (map['storagePermissions'] as List).cast<String>(),
      tenantId: map['tenantId'] as String,
    );
  }
}

