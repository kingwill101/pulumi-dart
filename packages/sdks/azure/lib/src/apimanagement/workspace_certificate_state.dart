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
    pulumi.Output<String>? apiManagementWorkspaceId,
    pulumi.Output<String>? certificateDataBase64,
    pulumi.Output<String>? expiration,
    pulumi.Output<String>? keyVaultSecretId,
    pulumi.Output<String>? name,
    pulumi.Output<String>? password,
    pulumi.Output<String>? subject,
    pulumi.Output<String>? thumbprint,
    pulumi.Output<String>? userAssignedIdentityClientId,
  }) :
      apiManagementWorkspaceId = pulumi.Input.asOptionalInput<String>(apiManagementWorkspaceId),
      certificateDataBase64 = pulumi.Input.asOptionalInput<String>(certificateDataBase64),
      expiration = pulumi.Input.asOptionalInput<String>(expiration),
      keyVaultSecretId = pulumi.Input.asOptionalInput<String>(keyVaultSecretId),
      name = pulumi.Input.asOptionalInput<String>(name),
      password = pulumi.Input.asOptionalInput<String>(password),
      subject = pulumi.Input.asOptionalInput<String>(subject),
      thumbprint = pulumi.Input.asOptionalInput<String>(thumbprint),
      userAssignedIdentityClientId = pulumi.Input.asOptionalInput<String>(userAssignedIdentityClientId);

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
      apiManagementWorkspaceId: map['apiManagementWorkspaceId'] == null ? null : pulumi.Output.create<String>(map['apiManagementWorkspaceId'] as String),
      certificateDataBase64: map['certificateDataBase64'] == null ? null : pulumi.Output.create<String>(map['certificateDataBase64'] as String),
      expiration: map['expiration'] == null ? null : pulumi.Output.create<String>(map['expiration'] as String),
      keyVaultSecretId: map['keyVaultSecretId'] == null ? null : pulumi.Output.create<String>(map['keyVaultSecretId'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      password: map['password'] == null ? null : pulumi.Output.create<String>(map['password'] as String),
      subject: map['subject'] == null ? null : pulumi.Output.create<String>(map['subject'] as String),
      thumbprint: map['thumbprint'] == null ? null : pulumi.Output.create<String>(map['thumbprint'] as String),
      userAssignedIdentityClientId: map['userAssignedIdentityClientId'] == null ? null : pulumi.Output.create<String>(map['userAssignedIdentityClientId'] as String),
    );
  }
}

