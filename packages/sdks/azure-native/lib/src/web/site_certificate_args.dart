// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_web_site_certificate_args_doc}
/// The set of arguments for SiteCertificate.
/// {@endtemplate}
/// {@macro pulumi_web_site_certificate_args_doc}
class SiteCertificateArgs {
  /// CNAME of the certificate to be issued via free certificate
  final pulumi.Input<String>? canonicalName;
  /// Name of the certificate.
  final pulumi.Input<String>? certificateName;
  /// Method of domain validation for free cert
  final pulumi.Input<String>? domainValidationMethod;
  /// Host names the certificate applies to.
  final pulumi.Input<List<String>>? hostNames;
  /// Azure Key Vault Csm resource Id.
  final pulumi.Input<String>? keyVaultId;
  /// Azure Key Vault secret name.
  final pulumi.Input<String>? keyVaultSecretName;
  /// Kind of resource. If the resource is an app, you can refer to https://github.com/Azure/app-service-linux-docs/blob/master/Things_You_Should_Know/kind_property.md#app-service-resource-kind-reference for details supported values for kind.
  final pulumi.Input<String>? kind;
  /// Resource Location.
  final pulumi.Input<String>? location;
  /// Name of the site.
  final pulumi.Input<String> name;
  /// Certificate password.
  final pulumi.Input<String>? password;
  /// Pfx blob.
  final pulumi.Input<String>? pfxBlob;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// Resource ID of the associated App Service plan.
  final pulumi.Input<String>? serverFarmId;
  /// Resource tags.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [SiteCertificateArgs].
  /// [canonicalName] CNAME of the certificate to be issued via free certificate
  /// [certificateName] Name of the certificate.
  /// [domainValidationMethod] Method of domain validation for free cert
  /// [hostNames] Host names the certificate applies to.
  /// [keyVaultId] Azure Key Vault Csm resource Id.
  /// [keyVaultSecretName] Azure Key Vault secret name.
  /// [kind] Kind of resource. If the resource is an app, you can refer to https://github.com/Azure/app-service-linux-docs/blob/master/Things_You_Should_Know/kind_property.md#app-service-resource-kind-reference for details supported values for kind.
  /// [location] Resource Location.
  /// [name] Name of the site.
  /// [password] Certificate password.
  /// [pfxBlob] Pfx blob.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [serverFarmId] Resource ID of the associated App Service plan.
  /// [tags] Resource tags.
  SiteCertificateArgs({
    this.canonicalName,
    this.certificateName,
    this.domainValidationMethod,
    this.hostNames,
    this.keyVaultId,
    this.keyVaultSecretName,
    this.kind,
    this.location,
    required this.name,
    this.password,
    this.pfxBlob,
    required this.resourceGroupName,
    this.serverFarmId,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'canonicalName': ?canonicalName,
      'certificateName': ?certificateName,
      'domainValidationMethod': ?domainValidationMethod,
      'hostNames': ?hostNames,
      'keyVaultId': ?keyVaultId,
      'keyVaultSecretName': ?keyVaultSecretName,
      'kind': ?kind,
      'location': ?location,
      'name': name,
      'password': ?password,
      'pfxBlob': ?pfxBlob,
      'resourceGroupName': resourceGroupName,
      'serverFarmId': ?serverFarmId,
      'tags': ?tags,
    };
  }

  factory SiteCertificateArgs.fromMap(Map<String, dynamic> map) {
    return SiteCertificateArgs(
      canonicalName: (() { final guardedValue = map['canonicalName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      certificateName: (() { final guardedValue = map['certificateName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      domainValidationMethod: (() { final guardedValue = map['domainValidationMethod']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      hostNames: (() { final guardedValue = map['hostNames']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      keyVaultId: (() { final guardedValue = map['keyVaultId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      keyVaultSecretName: (() { final guardedValue = map['keyVaultSecretName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      kind: (() { final guardedValue = map['kind']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: pulumi.Input.fromValue(map['name'] as String),
      password: (() { final guardedValue = map['password']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      pfxBlob: (() { final guardedValue = map['pfxBlob']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      serverFarmId: (() { final guardedValue = map['serverFarmId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
    );
  }
}

