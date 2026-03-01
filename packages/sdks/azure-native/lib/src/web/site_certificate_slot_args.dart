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
    pulumi.Output<String>? canonicalName,
    pulumi.Output<String>? certificateName,
    pulumi.Output<String>? domainValidationMethod,
    pulumi.Output<List<String>>? hostNames,
    pulumi.Output<String>? keyVaultId,
    pulumi.Output<String>? keyVaultSecretName,
    pulumi.Output<String>? kind,
    pulumi.Output<String>? location,
    required pulumi.Output<String> name,
    pulumi.Output<String>? password,
    pulumi.Output<String>? pfxBlob,
    required pulumi.Output<String> resourceGroupName,
    pulumi.Output<String>? serverFarmId,
    required pulumi.Output<String> slot,
    pulumi.Output<Map<String, String>>? tags,
  }) :
      canonicalName = pulumi.Input.asOptionalInput<String>(canonicalName),
      certificateName = pulumi.Input.asOptionalInput<String>(certificateName),
      domainValidationMethod = pulumi.Input.asOptionalInput<String>(domainValidationMethod),
      hostNames = pulumi.Input.asOptionalInput<List<String>>(hostNames),
      keyVaultId = pulumi.Input.asOptionalInput<String>(keyVaultId),
      keyVaultSecretName = pulumi.Input.asOptionalInput<String>(keyVaultSecretName),
      kind = pulumi.Input.asOptionalInput<String>(kind),
      location = pulumi.Input.asOptionalInput<String>(location),
      name = pulumi.Input.asInput<String>(name),
      password = pulumi.Input.asOptionalInput<String>(password),
      pfxBlob = pulumi.Input.asOptionalInput<String>(pfxBlob),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      serverFarmId = pulumi.Input.asOptionalInput<String>(serverFarmId),
      slot = pulumi.Input.asInput<String>(slot),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags);

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
      canonicalName: map['canonicalName'] == null ? null : pulumi.Output.create<String>(map['canonicalName'] as String),
      certificateName: map['certificateName'] == null ? null : pulumi.Output.create<String>(map['certificateName'] as String),
      domainValidationMethod: map['domainValidationMethod'] == null ? null : pulumi.Output.create<String>(map['domainValidationMethod'] as String),
      hostNames: map['hostNames'] == null ? null : pulumi.Output.create<List<String>>((map['hostNames'] as List).cast<String>()),
      keyVaultId: map['keyVaultId'] == null ? null : pulumi.Output.create<String>(map['keyVaultId'] as String),
      keyVaultSecretName: map['keyVaultSecretName'] == null ? null : pulumi.Output.create<String>(map['keyVaultSecretName'] as String),
      kind: map['kind'] == null ? null : pulumi.Output.create<String>(map['kind'] as String),
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      name: pulumi.Output.create<String>(map['name'] as String),
      password: map['password'] == null ? null : pulumi.Output.create<String>(map['password'] as String),
      pfxBlob: map['pfxBlob'] == null ? null : pulumi.Output.create<String>(map['pfxBlob'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      serverFarmId: map['serverFarmId'] == null ? null : pulumi.Output.create<String>(map['serverFarmId'] as String),
      slot: pulumi.Output.create<String>(map['slot'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
    );
  }
}

