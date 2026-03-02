// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_web_site_certificate_slot_args_doc}
/// The set of arguments for SiteCertificateSlot.
/// {@endtemplate}
/// {@macro pulumi_web_site_certificate_slot_args_doc}
class SiteCertificateSlotArgs {
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
  /// Name of the deployment slot. If a slot is not specified, the API will create a binding for the production slot.
  final pulumi.Input<String> slot;
  /// Resource tags.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [SiteCertificateSlotArgs].
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
  /// [slot] Name of the deployment slot. If a slot is not specified, the API will create a binding for the production slot.
  /// [tags] Resource tags.
  SiteCertificateSlotArgs({
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
    required this.slot,
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
      'slot': slot,
      'tags': ?tags,
    };
  }

  factory SiteCertificateSlotArgs.fromMap(Map<String, dynamic> map) {
    return SiteCertificateSlotArgs(
      canonicalName: map['canonicalName'] == null ? null : (map['canonicalName']! as String).input(),
      certificateName: map['certificateName'] == null ? null : (map['certificateName']! as String).input(),
      domainValidationMethod: map['domainValidationMethod'] == null ? null : (map['domainValidationMethod']! as String).input(),
      hostNames: map['hostNames'] == null ? null : ((map['hostNames']! as List).cast<String>()).input(),
      keyVaultId: map['keyVaultId'] == null ? null : (map['keyVaultId']! as String).input(),
      keyVaultSecretName: map['keyVaultSecretName'] == null ? null : (map['keyVaultSecretName']! as String).input(),
      kind: map['kind'] == null ? null : (map['kind']! as String).input(),
      location: map['location'] == null ? null : (map['location']! as String).input(),
      name: (map['name'] as String).input(),
      password: map['password'] == null ? null : (map['password']! as String).input(),
      pfxBlob: map['pfxBlob'] == null ? null : (map['pfxBlob']! as String).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
      serverFarmId: map['serverFarmId'] == null ? null : (map['serverFarmId']! as String).input(),
      slot: (map['slot'] as String).input(),
      tags: map['tags'] == null ? null : ((map['tags']! as Map).cast<String, String>()).input(),
    );
  }
}

