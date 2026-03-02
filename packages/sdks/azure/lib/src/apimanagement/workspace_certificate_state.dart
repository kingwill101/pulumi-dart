// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering WorkspaceCertificate resources.
class WorkspaceCertificateState {
  /// Specifies the ID of the API Management Workspace. Changing this forces a new resource to be created.
  final pulumi.Input<String>? apiManagementWorkspaceId;
  /// Specifies the base64-encoded string containing the certificate in PKCS#12 (.pfx) format.
  ///
  /// > **Note:** This is required when `password` is specified. Exactly one of `certificate_data_base64` or `key_vault_secret_id` must be specified.
  final pulumi.Input<String>? certificateDataBase64;
  /// The expiration date of the API Management Workspace Certificate.
  final pulumi.Input<String>? expiration;
  /// Specifies the ID of the key vault secret.
  ///
  /// > **Note:** This is required when `user_assigned_identity_client_id` is specified. Exactly one of `certificate_data_base64` or `key_vault_secret_id` must be specified.
  final pulumi.Input<String>? keyVaultSecretId;
  /// Specifies the name of the API Management Workspace Certificate. Changing this forces a new resource to be created.
  final pulumi.Input<String>? name;
  /// Specifies the password used to access the `certificate_data_base64`.
  final pulumi.Input<String>? password;
  /// The subject name of the API Management Workspace Certificate.
  final pulumi.Input<String>? subject;
  /// The thumbprint of the API Management Workspace Certificate.
  final pulumi.Input<String>? thumbprint;
  /// Specifies the client ID of user-assigned identity to be used for accessing the `key_vault_secret_id`.
  final pulumi.Input<String>? userAssignedIdentityClientId;

  /// Creates a new [WorkspaceCertificateState].
  /// [apiManagementWorkspaceId] Specifies the ID of the API Management Workspace. Changing this forces a new resource to be created.
  /// [certificateDataBase64] Specifies the base64-encoded string containing the certificate in PKCS#12 (.pfx) format.
  /// [expiration] The expiration date of the API Management Workspace Certificate.
  /// [keyVaultSecretId] Specifies the ID of the key vault secret.
  /// [name] Specifies the name of the API Management Workspace Certificate. Changing this forces a new resource to be created.
  /// [password] Specifies the password used to access the `certificate_data_base64`.
  /// [subject] The subject name of the API Management Workspace Certificate.
  /// [thumbprint] The thumbprint of the API Management Workspace Certificate.
  /// [userAssignedIdentityClientId] Specifies the client ID of user-assigned identity to be used for accessing the `key_vault_secret_id`.
  WorkspaceCertificateState({
    this.apiManagementWorkspaceId,
    this.certificateDataBase64,
    this.expiration,
    this.keyVaultSecretId,
    this.name,
    this.password,
    this.subject,
    this.thumbprint,
    this.userAssignedIdentityClientId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'apiManagementWorkspaceId': ?apiManagementWorkspaceId,
      'certificateDataBase64': ?certificateDataBase64,
      'expiration': ?expiration,
      'keyVaultSecretId': ?keyVaultSecretId,
      'name': ?name,
      'password': ?password,
      'subject': ?subject,
      'thumbprint': ?thumbprint,
      'userAssignedIdentityClientId': ?userAssignedIdentityClientId,
    };
  }

  factory WorkspaceCertificateState.fromMap(Map<String, dynamic> map) {
    return WorkspaceCertificateState(
      apiManagementWorkspaceId: map['apiManagementWorkspaceId'] == null ? null : (map['apiManagementWorkspaceId'] as String).input(),
      certificateDataBase64: map['certificateDataBase64'] == null ? null : (map['certificateDataBase64'] as String).input(),
      expiration: map['expiration'] == null ? null : (map['expiration'] as String).input(),
      keyVaultSecretId: map['keyVaultSecretId'] == null ? null : (map['keyVaultSecretId'] as String).input(),
      name: map['name'] == null ? null : (map['name'] as String).input(),
      password: map['password'] == null ? null : (map['password'] as String).input(),
      subject: map['subject'] == null ? null : (map['subject'] as String).input(),
      thumbprint: map['thumbprint'] == null ? null : (map['thumbprint'] as String).input(),
      userAssignedIdentityClientId: map['userAssignedIdentityClientId'] == null ? null : (map['userAssignedIdentityClientId'] as String).input(),
    );
  }
}

