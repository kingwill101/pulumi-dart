// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_apimanagement_certificate_certificate_args_doc}
/// The set of arguments for Certificate.
/// {@endtemplate}
/// {@macro pulumi_apimanagement_certificate_certificate_args_doc}
class CertificateArgs {
  /// The Name of the API Management Service where this Service should be created. Changing this forces a new resource to be created.
  final pulumi.Input<String> apiManagementName;
  /// The base-64 encoded certificate data, which must be a PFX file.
  final pulumi.Input<String>? data;
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
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [CertificateArgs].
  /// [apiManagementName] The Name of the API Management Service where this Service should be created. Changing this forces a new resource to be created.
  /// [data] The base-64 encoded certificate data, which must be a PFX file.
  /// [keyVaultIdentityClientId] The Client ID of the User Assigned Managed Identity to use for retrieving certificate.
  /// [keyVaultSecretId] The ID of the Key Vault Secret containing the SSL Certificate, which must be of the type `application/x-pkcs12`.
  /// [name] The name of the API Management Certificate. Changing this forces a new resource to be created.
  /// [password] The password used for this certificate.
  /// [resourceGroupName] The Name of the Resource Group where the API Management Service exists. Changing this forces a new resource to be created.
  CertificateArgs({
    required this.apiManagementName,
    this.data,
    this.keyVaultIdentityClientId,
    this.keyVaultSecretId,
    this.name,
    this.password,
    required this.resourceGroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'apiManagementName': apiManagementName,
      'data': ?data,
      'keyVaultIdentityClientId': ?keyVaultIdentityClientId,
      'keyVaultSecretId': ?keyVaultSecretId,
      'name': ?name,
      'password': ?password,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory CertificateArgs.fromMap(Map<String, dynamic> map) {
    return CertificateArgs(
      apiManagementName: (map['apiManagementName'] as String).input(),
      data: map['data'] == null ? null : (map['data'] as String).input(),
      keyVaultIdentityClientId: map['keyVaultIdentityClientId'] == null ? null : (map['keyVaultIdentityClientId'] as String).input(),
      keyVaultSecretId: map['keyVaultSecretId'] == null ? null : (map['keyVaultSecretId'] as String).input(),
      name: map['name'] == null ? null : (map['name'] as String).input(),
      password: map['password'] == null ? null : (map['password'] as String).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
    );
  }
}

