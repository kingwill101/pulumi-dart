// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering Certificate resources.
class CertificateState {
  /// The Name of the API Management Service where this Service should be created. Changing this forces a new resource to be created.
  final pulumi.Input<String>? apiManagementName;
  /// The base-64 encoded certificate data, which must be a PFX file.
  final pulumi.Input<String>? data;
  /// The Expiration Date of this Certificate, formatted as an RFC3339 string.
  final pulumi.Input<String>? expiration;
  /// The Client ID of the User Assigned Managed Identity to use for retrieving certificate.
  ///
  /// > **Note:** If not specified, will use System Assigned identity of the API Management Service.
  final pulumi.Input<String>? keyVaultIdentityClientId;
  /// The ID of the Key Vault Secret containing the SSL Certificate, which must be of the type `application/x-pkcs12`.
  ///
  /// > **Note:** Setting this field requires the `identity` block to be specified in API Management Service, since this identity is used to retrieve the Key Vault Certificate. Possible values are versioned or versionless secret ID. Auto-updating the Certificate from the Key Vault requires that Secret version isn't specified.
  final pulumi.Input<String>? keyVaultSecretId;
  /// The name of the API Management Certificate. Changing this forces a new resource to be created.
  final pulumi.Input<String>? name;
  /// The password used for this certificate.
  final pulumi.Input<String>? password;
  /// The Name of the Resource Group where the API Management Service exists. Changing this forces a new resource to be created.
  ///
  /// > **Note:** Either `data` or `key_vault_secret_id` must be specified - but not both.
  final pulumi.Input<String>? resourceGroupName;
  /// The Subject of this Certificate.
  final pulumi.Input<String>? subject;
  /// The Thumbprint of this Certificate.
  final pulumi.Input<String>? thumbprint;

  /// Creates a new [CertificateState].
  /// [apiManagementName] The Name of the API Management Service where this Service should be created. Changing this forces a new resource to be created.
  /// [data] The base-64 encoded certificate data, which must be a PFX file.
  /// [expiration] The Expiration Date of this Certificate, formatted as an RFC3339 string.
  /// [keyVaultIdentityClientId] The Client ID of the User Assigned Managed Identity to use for retrieving certificate.
  /// [keyVaultSecretId] The ID of the Key Vault Secret containing the SSL Certificate, which must be of the type `application/x-pkcs12`.
  /// [name] The name of the API Management Certificate. Changing this forces a new resource to be created.
  /// [password] The password used for this certificate.
  /// [resourceGroupName] The Name of the Resource Group where the API Management Service exists. Changing this forces a new resource to be created.
  /// [subject] The Subject of this Certificate.
  /// [thumbprint] The Thumbprint of this Certificate.
  CertificateState({
    pulumi.Output<String>? apiManagementName,
    pulumi.Output<String>? data,
    pulumi.Output<String>? expiration,
    pulumi.Output<String>? keyVaultIdentityClientId,
    pulumi.Output<String>? keyVaultSecretId,
    pulumi.Output<String>? name,
    pulumi.Output<String>? password,
    pulumi.Output<String>? resourceGroupName,
    pulumi.Output<String>? subject,
    pulumi.Output<String>? thumbprint,
  }) :
      apiManagementName = pulumi.Input.asOptionalInput<String>(apiManagementName),
      data = pulumi.Input.asOptionalInput<String>(data),
      expiration = pulumi.Input.asOptionalInput<String>(expiration),
      keyVaultIdentityClientId = pulumi.Input.asOptionalInput<String>(keyVaultIdentityClientId),
      keyVaultSecretId = pulumi.Input.asOptionalInput<String>(keyVaultSecretId),
      name = pulumi.Input.asOptionalInput<String>(name),
      password = pulumi.Input.asOptionalInput<String>(password),
      resourceGroupName = pulumi.Input.asOptionalInput<String>(resourceGroupName),
      subject = pulumi.Input.asOptionalInput<String>(subject),
      thumbprint = pulumi.Input.asOptionalInput<String>(thumbprint);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'apiManagementName': ?apiManagementName,
      'data': ?data,
      'expiration': ?expiration,
      'keyVaultIdentityClientId': ?keyVaultIdentityClientId,
      'keyVaultSecretId': ?keyVaultSecretId,
      'name': ?name,
      'password': ?password,
      'resourceGroupName': ?resourceGroupName,
      'subject': ?subject,
      'thumbprint': ?thumbprint,
    };
  }

  factory CertificateState.fromMap(Map<String, dynamic> map) {
    return CertificateState(
      apiManagementName: map['apiManagementName'] == null ? null : pulumi.Output.create<String>(map['apiManagementName'] as String),
      data: map['data'] == null ? null : pulumi.Output.create<String>(map['data'] as String),
      expiration: map['expiration'] == null ? null : pulumi.Output.create<String>(map['expiration'] as String),
      keyVaultIdentityClientId: map['keyVaultIdentityClientId'] == null ? null : pulumi.Output.create<String>(map['keyVaultIdentityClientId'] as String),
      keyVaultSecretId: map['keyVaultSecretId'] == null ? null : pulumi.Output.create<String>(map['keyVaultSecretId'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      password: map['password'] == null ? null : pulumi.Output.create<String>(map['password'] as String),
      resourceGroupName: map['resourceGroupName'] == null ? null : pulumi.Output.create<String>(map['resourceGroupName'] as String),
      subject: map['subject'] == null ? null : pulumi.Output.create<String>(map['subject'] as String),
      thumbprint: map['thumbprint'] == null ? null : pulumi.Output.create<String>(map['thumbprint'] as String),
    );
  }
}

