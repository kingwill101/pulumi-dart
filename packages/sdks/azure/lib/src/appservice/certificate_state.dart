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
  /// &gt; **NOTE:** Exactly one of `key_vault_secret_id` or `pfx_blob` must be specified.
  final pulumi.Input<String>? keyVaultSecretId;

  /// Specifies the supported Azure location where the resource exists. Changing this forces a new resource to be created.
  final pulumi.Input<String>? location;

  /// Specifies the name of the certificate. Changing this forces a new resource to be created.
  final pulumi.Input<String>? name;

  /// The password to access the certificate's private key. Changing this forces a new resource to be created.
  final pulumi.Input<String>? password;

  /// The base64-encoded contents of the certificate. Changing this forces a new resource to be created.
  ///
  /// &gt; **NOTE:** Exactly one of `key_vault_secret_id` or `pfx_blob` must be specified.
  final pulumi.Input<String>? pfxBlob;

  /// The name of the resource group in which to create the certificate. Changing this forces a new resource to be created.
  ///
  /// &gt; **NOTE:** The resource group must be the same as that which the app service plan is defined in - otherwise the certificate will not show as available for the app services.
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
      appServicePlanId: (() {
        final guardedValue = map['appServicePlanId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      expirationDate: (() {
        final guardedValue = map['expirationDate'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      friendlyName: (() {
        final guardedValue = map['friendlyName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      hostNames: (() {
        final guardedValue = map['hostNames'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
      })(),
      hostingEnvironmentProfileId: (() {
        final guardedValue = map['hostingEnvironmentProfileId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      issueDate: (() {
        final guardedValue = map['issueDate'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      issuer: (() {
        final guardedValue = map['issuer'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      keyVaultId: (() {
        final guardedValue = map['keyVaultId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      keyVaultSecretId: (() {
        final guardedValue = map['keyVaultSecretId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      location: (() {
        final guardedValue = map['location'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      name: (() {
        final guardedValue = map['name'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      password: (() {
        final guardedValue = map['password'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      pfxBlob: (() {
        final guardedValue = map['pfxBlob'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      resourceGroupName: (() {
        final guardedValue = map['resourceGroupName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      subjectName: (() {
        final guardedValue = map['subjectName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      tags: (() {
        final guardedValue = map['tags'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          (guardedValue as Map).cast<String, String>(),
        );
      })(),
      thumbprint: (() {
        final guardedValue = map['thumbprint'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
