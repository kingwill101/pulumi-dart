// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering Certificate resources.
class CertificateState {
  /// The ID of the associated App Service plan. Must be specified when the certificate is used inside an App Service Environment hosted App Service or with Basic and Premium App Service plans. Changing this forces a new resource to be created.
  final pulumi.Input<String>? appServicePlanId;
  /// The expiration date for the certificate.
  final pulumi.Input<String>? expirationDate;
  /// The friendly name of the certificate.
  final pulumi.Input<String>? friendlyName;
  /// List of host names the certificate applies to.
  final pulumi.Input<List<String>>? hostNames;
  /// The ID of the App Service Environment where the certificate is in use.
  final pulumi.Input<String>? hostingEnvironmentProfileId;
  /// The issue date for the certificate.
  final pulumi.Input<String>? issueDate;
  /// The name of the certificate issuer.
  final pulumi.Input<String>? issuer;
  final pulumi.Input<String>? keyVaultId;
  /// The ID of the Key Vault secret. Changing this forces a new resource to be created.
  ///
  /// > **NOTE:** Exactly one of `key_vault_secret_id` or `pfx_blob` must be specified.
  final pulumi.Input<String>? keyVaultSecretId;
  /// Specifies the supported Azure location where the resource exists. Changing this forces a new resource to be created.
  final pulumi.Input<String>? location;
  /// Specifies the name of the certificate. Changing this forces a new resource to be created.
  final pulumi.Input<String>? name;
  /// The password to access the certificate's private key. Changing this forces a new resource to be created.
  final pulumi.Input<String>? password;
  /// The base64-encoded contents of the certificate. Changing this forces a new resource to be created.
  ///
  /// > **NOTE:** Exactly one of `key_vault_secret_id` or `pfx_blob` must be specified.
  final pulumi.Input<String>? pfxBlob;
  /// The name of the resource group in which to create the certificate. Changing this forces a new resource to be created.
  ///
  /// > **NOTE:** The resource group must be the same as that which the app service plan is defined in - otherwise the certificate will not show as available for the app services.
  final pulumi.Input<String>? resourceGroupName;
  /// The subject name of the certificate.
  final pulumi.Input<String>? subjectName;
  final pulumi.Input<Map<String, String>>? tags;
  /// The thumbprint for the certificate.
  final pulumi.Input<String>? thumbprint;

  /// Creates a new [CertificateState].
  /// [appServicePlanId] The ID of the associated App Service plan. Must be specified when the certificate is used inside an App Service Environment hosted App Service or with Basic and Premium App Service plans. Changing this forces a new resource to be created.
  /// [expirationDate] The expiration date for the certificate.
  /// [friendlyName] The friendly name of the certificate.
  /// [hostNames] List of host names the certificate applies to.
  /// [hostingEnvironmentProfileId] The ID of the App Service Environment where the certificate is in use.
  /// [issueDate] The issue date for the certificate.
  /// [issuer] The name of the certificate issuer.
  /// [keyVaultId] Optional.
  /// [keyVaultSecretId] The ID of the Key Vault secret. Changing this forces a new resource to be created.
  /// [location] Specifies the supported Azure location where the resource exists. Changing this forces a new resource to be created.
  /// [name] Specifies the name of the certificate. Changing this forces a new resource to be created.
  /// [password] The password to access the certificate's private key. Changing this forces a new resource to be created.
  /// [pfxBlob] The base64-encoded contents of the certificate. Changing this forces a new resource to be created.
  /// [resourceGroupName] The name of the resource group in which to create the certificate. Changing this forces a new resource to be created.
  /// [subjectName] The subject name of the certificate.
  /// [tags] Optional.
  /// [thumbprint] The thumbprint for the certificate.
  CertificateState({
    this.appServicePlanId,
    this.expirationDate,
    this.friendlyName,
    this.hostNames,
    this.hostingEnvironmentProfileId,
    this.issueDate,
    this.issuer,
    this.keyVaultId,
    this.keyVaultSecretId,
    this.location,
    this.name,
    this.password,
    this.pfxBlob,
    this.resourceGroupName,
    this.subjectName,
    this.tags,
    this.thumbprint,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'appServicePlanId': ?appServicePlanId,
      'expirationDate': ?expirationDate,
      'friendlyName': ?friendlyName,
      'hostNames': ?hostNames,
      'hostingEnvironmentProfileId': ?hostingEnvironmentProfileId,
      'issueDate': ?issueDate,
      'issuer': ?issuer,
      'keyVaultId': ?keyVaultId,
      'keyVaultSecretId': ?keyVaultSecretId,
      'location': ?location,
      'name': ?name,
      'password': ?password,
      'pfxBlob': ?pfxBlob,
      'resourceGroupName': ?resourceGroupName,
      'subjectName': ?subjectName,
      'tags': ?tags,
      'thumbprint': ?thumbprint,
    };
  }

  factory CertificateState.fromMap(Map<String, dynamic> map) {
    return CertificateState(
      appServicePlanId: map['appServicePlanId'] == null ? null : (map['appServicePlanId']! as String).input(),
      expirationDate: map['expirationDate'] == null ? null : (map['expirationDate']! as String).input(),
      friendlyName: map['friendlyName'] == null ? null : (map['friendlyName']! as String).input(),
      hostNames: map['hostNames'] == null ? null : ((map['hostNames']! as List).cast<String>()).input(),
      hostingEnvironmentProfileId: map['hostingEnvironmentProfileId'] == null ? null : (map['hostingEnvironmentProfileId']! as String).input(),
      issueDate: map['issueDate'] == null ? null : (map['issueDate']! as String).input(),
      issuer: map['issuer'] == null ? null : (map['issuer']! as String).input(),
      keyVaultId: map['keyVaultId'] == null ? null : (map['keyVaultId']! as String).input(),
      keyVaultSecretId: map['keyVaultSecretId'] == null ? null : (map['keyVaultSecretId']! as String).input(),
      location: map['location'] == null ? null : (map['location']! as String).input(),
      name: map['name'] == null ? null : (map['name']! as String).input(),
      password: map['password'] == null ? null : (map['password']! as String).input(),
      pfxBlob: map['pfxBlob'] == null ? null : (map['pfxBlob']! as String).input(),
      resourceGroupName: map['resourceGroupName'] == null ? null : (map['resourceGroupName']! as String).input(),
      subjectName: map['subjectName'] == null ? null : (map['subjectName']! as String).input(),
      tags: map['tags'] == null ? null : ((map['tags']! as Map).cast<String, String>()).input(),
      thumbprint: map['thumbprint'] == null ? null : (map['thumbprint']! as String).input(),
    );
  }
}

