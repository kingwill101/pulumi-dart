// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_appservice_certificate_certificate_args_doc}
/// The set of arguments for Certificate.
/// {@endtemplate}
/// {@macro pulumi_appservice_certificate_certificate_args_doc}
class CertificateArgs {
  /// The ID of the associated App Service plan. Must be specified when the certificate is used inside an App Service Environment hosted App Service or with Basic and Premium App Service plans. Changing this forces a new resource to be created.
  final pulumi.Input<String>? appServicePlanId;
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
  final pulumi.Input<String> resourceGroupName;
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [CertificateArgs].
  /// [appServicePlanId] The ID of the associated App Service plan. Must be specified when the certificate is used inside an App Service Environment hosted App Service or with Basic and Premium App Service plans. Changing this forces a new resource to be created.
  /// [keyVaultId] Optional.
  /// [keyVaultSecretId] The ID of the Key Vault secret. Changing this forces a new resource to be created.
  /// [location] Specifies the supported Azure location where the resource exists. Changing this forces a new resource to be created.
  /// [name] Specifies the name of the certificate. Changing this forces a new resource to be created.
  /// [password] The password to access the certificate's private key. Changing this forces a new resource to be created.
  /// [pfxBlob] The base64-encoded contents of the certificate. Changing this forces a new resource to be created.
  /// [resourceGroupName] The name of the resource group in which to create the certificate. Changing this forces a new resource to be created.
  /// [tags] Optional.
  CertificateArgs({
    this.appServicePlanId,
    this.keyVaultId,
    this.keyVaultSecretId,
    this.location,
    this.name,
    this.password,
    this.pfxBlob,
    required this.resourceGroupName,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'appServicePlanId': ?appServicePlanId,
      'keyVaultId': ?keyVaultId,
      'keyVaultSecretId': ?keyVaultSecretId,
      'location': ?location,
      'name': ?name,
      'password': ?password,
      'pfxBlob': ?pfxBlob,
      'resourceGroupName': resourceGroupName,
      'tags': ?tags,
    };
  }

  factory CertificateArgs.fromMap(Map<String, dynamic> map) {
    return CertificateArgs(
      appServicePlanId: (() {
        final guardedValue = map['appServicePlanId'];
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
      resourceGroupName: pulumi.Input.fromValue(
        map['resourceGroupName'] as String,
      ),
      tags: (() {
        final guardedValue = map['tags'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          (guardedValue as Map).cast<String, String>(),
        );
      })(),
    );
  }
}
