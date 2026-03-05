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
  /// &gt; **Note:** If not specified, will use System Assigned identity of the API Management Service.
  final pulumi.Input<String>? keyVaultIdentityClientId;
  /// The ID of the Key Vault Secret containing the SSL Certificate, which must be of the type `application/x-pkcs12`.
  ///
  /// &gt; **Note:** Setting this field requires the `identity` block to be specified in API Management Service, since this identity is used to retrieve the Key Vault Certificate. Possible values are versioned or versionless secret ID. Auto-updating the Certificate from the Key Vault requires that Secret version isn't specified.
  final pulumi.Input<String>? keyVaultSecretId;
  /// The name of the API Management Certificate. Changing this forces a new resource to be created.
  final pulumi.Input<String>? name;
  /// The password used for this certificate.
  final pulumi.Input<String>? password;
  /// The Name of the Resource Group where the API Management Service exists. Changing this forces a new resource to be created.
  ///
  /// &gt; **Note:** Either `data` or `key_vault_secret_id` must be specified - but not both.
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
    this.apiManagementName,
    this.data,
    this.expiration,
    this.keyVaultIdentityClientId,
    this.keyVaultSecretId,
    this.name,
    this.password,
    this.resourceGroupName,
    this.subject,
    this.thumbprint,
  });

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
      apiManagementName: (() { final guardedValue = map['apiManagementName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      data: (() { final guardedValue = map['data']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      expiration: (() { final guardedValue = map['expiration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      keyVaultIdentityClientId: (() { final guardedValue = map['keyVaultIdentityClientId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      keyVaultSecretId: (() { final guardedValue = map['keyVaultSecretId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      password: (() { final guardedValue = map['password']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      resourceGroupName: (() { final guardedValue = map['resourceGroupName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      subject: (() { final guardedValue = map['subject']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      thumbprint: (() { final guardedValue = map['thumbprint']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

