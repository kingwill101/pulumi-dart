// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetKeyVaultAccessPolicy {
  /// The Object ID of a Azure Active Directory Application.
  final pulumi.Input<String> applicationId;
  /// A list of certificate permissions applicable to this Access Policy.
  final pulumi.Input<List<String>> certificatePermissions;
  /// A list of key permissions applicable to this Access Policy.
  final pulumi.Input<List<String>> keyPermissions;
  /// An Object ID of a User, Service Principal or Security Group.
  final pulumi.Input<String> objectId;
  /// A list of secret permissions applicable to this Access Policy.
  final pulumi.Input<List<String>> secretPermissions;
  /// A list of storage permissions applicable to this Access Policy.
  final pulumi.Input<List<String>> storagePermissions;
  /// The Azure Active Directory Tenant ID used to authenticate requests for this Key Vault.
  final pulumi.Input<String> tenantId;

  /// Creates a new [GetKeyVaultAccessPolicy].
  /// [applicationId] The Object ID of a Azure Active Directory Application.
  /// [certificatePermissions] A list of certificate permissions applicable to this Access Policy.
  /// [keyPermissions] A list of key permissions applicable to this Access Policy.
  /// [objectId] An Object ID of a User, Service Principal or Security Group.
  /// [secretPermissions] A list of secret permissions applicable to this Access Policy.
  /// [storagePermissions] A list of storage permissions applicable to this Access Policy.
  /// [tenantId] The Azure Active Directory Tenant ID used to authenticate requests for this Key Vault.
  const GetKeyVaultAccessPolicy({
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
      applicationId: pulumi.Input.fromValue(map['applicationId'] as String),
      certificatePermissions: pulumi.Input.fromValue((map['certificatePermissions'] as List).cast<String>()),
      keyPermissions: pulumi.Input.fromValue((map['keyPermissions'] as List).cast<String>()),
      objectId: pulumi.Input.fromValue(map['objectId'] as String),
      secretPermissions: pulumi.Input.fromValue((map['secretPermissions'] as List).cast<String>()),
      storagePermissions: pulumi.Input.fromValue((map['storagePermissions'] as List).cast<String>()),
      tenantId: pulumi.Input.fromValue(map['tenantId'] as String),
    );
  }
}

