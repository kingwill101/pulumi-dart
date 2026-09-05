// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering WorkspaceCertificate resources.
class WorkspaceCertificateState {
  /// Specifies the ID of the API Management Workspace. Changing this forces a new resource to be created.
  final pulumi.Input<String?>? apiManagementWorkspaceId;
  /// Specifies the base64-encoded string containing the certificate in PKCS#12 (.pfx) format.
  ///
  /// &gt; **Note:** This is required when `password` is specified. Exactly one of `certificateDataBase64` or `keyVaultSecretId` must be specified.
  final pulumi.Input<String?>? certificateDataBase64;
  /// The expiration date of the API Management Workspace Certificate.
  final pulumi.Input<String?>? expiration;
  /// Specifies the ID of the key vault secret.
  ///
  /// &gt; **Note:** This is required when `userAssignedIdentityClientId` is specified. Exactly one of `certificateDataBase64` or `keyVaultSecretId` must be specified.
  final pulumi.Input<String?>? keyVaultSecretId;
  /// Specifies the name of the API Management Workspace Certificate. Changing this forces a new resource to be created.
  final pulumi.Input<String?>? name;
  /// Specifies the password used to access the `certificateDataBase64`.
  final pulumi.Input<String?>? password;
  /// The subject name of the API Management Workspace Certificate.
  final pulumi.Input<String?>? subject;
  /// The thumbprint of the API Management Workspace Certificate.
  final pulumi.Input<String?>? thumbprint;
  /// Specifies the client ID of user-assigned identity to be used for accessing the `keyVaultSecretId`.
  final pulumi.Input<String?>? userAssignedIdentityClientId;

  /// Creates a new [WorkspaceCertificateState].
  /// [apiManagementWorkspaceId] Specifies the ID of the API Management Workspace. Changing this forces a new resource to be created.
  /// [certificateDataBase64] Specifies the base64-encoded string containing the certificate in PKCS#12 (.pfx) format.
  /// [expiration] The expiration date of the API Management Workspace Certificate.
  /// [keyVaultSecretId] Specifies the ID of the key vault secret.
  /// [name] Specifies the name of the API Management Workspace Certificate. Changing this forces a new resource to be created.
  /// [password] Specifies the password used to access the `certificateDataBase64`.
  /// [subject] The subject name of the API Management Workspace Certificate.
  /// [thumbprint] The thumbprint of the API Management Workspace Certificate.
  /// [userAssignedIdentityClientId] Specifies the client ID of user-assigned identity to be used for accessing the `keyVaultSecretId`.
  const WorkspaceCertificateState({
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
      apiManagementWorkspaceId: (() { final guardedValue = map['apiManagementWorkspaceId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      certificateDataBase64: (() { final guardedValue = map['certificateDataBase64']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      expiration: (() { final guardedValue = map['expiration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      keyVaultSecretId: (() { final guardedValue = map['keyVaultSecretId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      password: (() { final guardedValue = map['password']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      subject: (() { final guardedValue = map['subject']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      thumbprint: (() { final guardedValue = map['thumbprint']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      userAssignedIdentityClientId: (() { final guardedValue = map['userAssignedIdentityClientId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
