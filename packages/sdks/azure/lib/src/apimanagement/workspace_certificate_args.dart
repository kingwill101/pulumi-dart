// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_apimanagement_workspace_certificate_workspace_certificate_args_doc}
/// The set of arguments for WorkspaceCertificate.
/// {@endtemplate}
/// {@macro pulumi_apimanagement_workspace_certificate_workspace_certificate_args_doc}
class WorkspaceCertificateArgs {
  /// Specifies the ID of the API Management Workspace. Changing this forces a new resource to be created.
  final pulumi.Input<String> apiManagementWorkspaceId;
  /// Specifies the base64-encoded string containing the certificate in PKCS#12 (.pfx) format.
  ///
  /// > **Note:** This is required when `password` is specified. Exactly one of `certificate_data_base64` or `key_vault_secret_id` must be specified.
  final pulumi.Input<String>? certificateDataBase64;
  /// Specifies the ID of the key vault secret.
  ///
  /// > **Note:** This is required when `user_assigned_identity_client_id` is specified. Exactly one of `certificate_data_base64` or `key_vault_secret_id` must be specified.
  final pulumi.Input<String>? keyVaultSecretId;
  /// Specifies the name of the API Management Workspace Certificate. Changing this forces a new resource to be created.
  final pulumi.Input<String>? name;
  /// Specifies the password used to access the `certificate_data_base64`.
  final pulumi.Input<String>? password;
  /// Specifies the client ID of user-assigned identity to be used for accessing the `key_vault_secret_id`.
  final pulumi.Input<String>? userAssignedIdentityClientId;

  /// Creates a new [WorkspaceCertificateArgs].
  /// [apiManagementWorkspaceId] Specifies the ID of the API Management Workspace. Changing this forces a new resource to be created.
  /// [certificateDataBase64] Specifies the base64-encoded string containing the certificate in PKCS#12 (.pfx) format.
  /// [keyVaultSecretId] Specifies the ID of the key vault secret.
  /// [name] Specifies the name of the API Management Workspace Certificate. Changing this forces a new resource to be created.
  /// [password] Specifies the password used to access the `certificate_data_base64`.
  /// [userAssignedIdentityClientId] Specifies the client ID of user-assigned identity to be used for accessing the `key_vault_secret_id`.
  WorkspaceCertificateArgs({
    required pulumi.Output<String> apiManagementWorkspaceId,
    pulumi.Output<String>? certificateDataBase64,
    pulumi.Output<String>? keyVaultSecretId,
    pulumi.Output<String>? name,
    pulumi.Output<String>? password,
    pulumi.Output<String>? userAssignedIdentityClientId,
  }) :
      apiManagementWorkspaceId = pulumi.Input.asInput<String>(apiManagementWorkspaceId),
      certificateDataBase64 = pulumi.Input.asOptionalInput<String>(certificateDataBase64),
      keyVaultSecretId = pulumi.Input.asOptionalInput<String>(keyVaultSecretId),
      name = pulumi.Input.asOptionalInput<String>(name),
      password = pulumi.Input.asOptionalInput<String>(password),
      userAssignedIdentityClientId = pulumi.Input.asOptionalInput<String>(userAssignedIdentityClientId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'apiManagementWorkspaceId': apiManagementWorkspaceId,
      'certificateDataBase64': ?certificateDataBase64,
      'keyVaultSecretId': ?keyVaultSecretId,
      'name': ?name,
      'password': ?password,
      'userAssignedIdentityClientId': ?userAssignedIdentityClientId,
    };
  }

  factory WorkspaceCertificateArgs.fromMap(Map<String, dynamic> map) {
    return WorkspaceCertificateArgs(
      apiManagementWorkspaceId: pulumi.Output.create<String>(map['apiManagementWorkspaceId'] as String),
      certificateDataBase64: map['certificateDataBase64'] == null ? null : pulumi.Output.create<String>(map['certificateDataBase64'] as String),
      keyVaultSecretId: map['keyVaultSecretId'] == null ? null : pulumi.Output.create<String>(map['keyVaultSecretId'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      password: map['password'] == null ? null : pulumi.Output.create<String>(map['password'] as String),
      userAssignedIdentityClientId: map['userAssignedIdentityClientId'] == null ? null : pulumi.Output.create<String>(map['userAssignedIdentityClientId'] as String),
    );
  }
}

