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
  /// &gt; **Note:** This is required when `password` is specified. Exactly one of `certificateDataBase64` or `keyVaultSecretId` must be specified.
  final pulumi.Input<String?>? certificateDataBase64;
  /// Specifies the ID of the key vault secret.
  ///
  /// &gt; **Note:** This is required when `userAssignedIdentityClientId` is specified. Exactly one of `certificateDataBase64` or `keyVaultSecretId` must be specified.
  final pulumi.Input<String?>? keyVaultSecretId;
  /// Specifies the name of the API Management Workspace Certificate. Changing this forces a new resource to be created.
  final pulumi.Input<String?>? name;
  /// Specifies the password used to access the `certificateDataBase64`.
  final pulumi.Input<String?>? password;
  /// Specifies the client ID of user-assigned identity to be used for accessing the `keyVaultSecretId`.
  final pulumi.Input<String?>? userAssignedIdentityClientId;

  /// Creates a new [WorkspaceCertificateArgs].
  /// [apiManagementWorkspaceId] Specifies the ID of the API Management Workspace. Changing this forces a new resource to be created.
  /// [certificateDataBase64] Specifies the base64-encoded string containing the certificate in PKCS#12 (.pfx) format.
  /// [keyVaultSecretId] Specifies the ID of the key vault secret.
  /// [name] Specifies the name of the API Management Workspace Certificate. Changing this forces a new resource to be created.
  /// [password] Specifies the password used to access the `certificateDataBase64`.
  /// [userAssignedIdentityClientId] Specifies the client ID of user-assigned identity to be used for accessing the `keyVaultSecretId`.
  const WorkspaceCertificateArgs({
    required this.apiManagementWorkspaceId,
    this.certificateDataBase64,
    this.keyVaultSecretId,
    this.name,
    this.password,
    this.userAssignedIdentityClientId,
  });

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
      apiManagementWorkspaceId: pulumi.Input.fromValue(map['apiManagementWorkspaceId'] as String),
      certificateDataBase64: (() { final guardedValue = map['certificateDataBase64']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      keyVaultSecretId: (() { final guardedValue = map['keyVaultSecretId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      password: (() { final guardedValue = map['password']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      userAssignedIdentityClientId: (() { final guardedValue = map['userAssignedIdentityClientId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
