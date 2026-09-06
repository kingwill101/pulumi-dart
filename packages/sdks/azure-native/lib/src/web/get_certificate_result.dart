// ignore_for_file: unused_element, unnecessary_cast

import 'hosting_environment_profile_response.dart';
import 'system_data_response.dart';

/// Result data returned by getCertificate.
class GetCertificateResult {
  /// The Azure API version of the resource.
  final String? azureApiVersion;
  /// CNAME of the certificate to be issued via free certificate
  final String? canonicalName;
  /// Raw bytes of .cer file
  final String? cerBlob;
  /// Method of domain validation for free cert
  final String? domainValidationMethod;
  /// Certificate expiration date.
  final String? expirationDate;
  /// Friendly name of the certificate.
  final String? friendlyName;
  /// Host names the certificate applies to.
  final List<String>? hostNames;
  /// Specification for the App Service Environment to use for the certificate.
  final HostingEnvironmentProfileResponse? hostingEnvironmentProfile;
  /// Fully qualified resource ID for the resource. E.g. "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}"
  final String? id;
  /// Certificate issue Date.
  final String? issueDate;
  /// Certificate issuer.
  final String? issuer;
  /// Azure Key Vault Csm resource Id.
  final String? keyVaultId;
  /// Azure Key Vault secret name.
  final String? keyVaultSecretName;
  /// Status of the Key Vault secret.
  final String? keyVaultSecretStatus;
  /// Kind of resource. If the resource is an app, you can refer to https://github.com/Azure/app-service-linux-docs/blob/master/Things_You_Should_Know/kind_property.md#app-service-resource-kind-reference for details supported values for kind.
  final String? kind;
  /// The geo-location where the resource lives
  final String? location;
  /// The name of the resource
  final String? name;
  /// Certificate password.
  final String? password;
  /// Pfx blob.
  final String? pfxBlob;
  /// Public key hash.
  final String? publicKeyHash;
  /// Self link.
  final String? selfLink;
  /// Resource ID of the associated App Service plan.
  final String? serverFarmId;
  /// App name.
  final String? siteName;
  /// Subject name of the certificate.
  final String? subjectName;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  final SystemDataResponse? systemData;
  /// Resource tags.
  final Map<String, String>? tags;
  /// Certificate thumbprint.
  final String? thumbprint;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  final String? type;
  /// Is the certificate valid?.
  final bool? valid;

  /// Creates a new [GetCertificateResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [canonicalName] CNAME of the certificate to be issued via free certificate
  /// [cerBlob] Raw bytes of .cer file
  /// [domainValidationMethod] Method of domain validation for free cert
  /// [expirationDate] Certificate expiration date.
  /// [friendlyName] Friendly name of the certificate.
  /// [hostNames] Host names the certificate applies to.
  /// [hostingEnvironmentProfile] Specification for the App Service Environment to use for the certificate.
  /// [id] Fully qualified resource ID for the resource. E.g. "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}"
  /// [issueDate] Certificate issue Date.
  /// [issuer] Certificate issuer.
  /// [keyVaultId] Azure Key Vault Csm resource Id.
  /// [keyVaultSecretName] Azure Key Vault secret name.
  /// [keyVaultSecretStatus] Status of the Key Vault secret.
  /// [kind] Kind of resource. If the resource is an app, you can refer to https://github.com/Azure/app-service-linux-docs/blob/master/Things_You_Should_Know/kind_property.md#app-service-resource-kind-reference for details supported values for kind.
  /// [location] The geo-location where the resource lives
  /// [name] The name of the resource
  /// [password] Certificate password.
  /// [pfxBlob] Pfx blob.
  /// [publicKeyHash] Public key hash.
  /// [selfLink] Self link.
  /// [serverFarmId] Resource ID of the associated App Service plan.
  /// [siteName] App name.
  /// [subjectName] Subject name of the certificate.
  /// [systemData] Azure Resource Manager metadata containing createdBy and modifiedBy information.
  /// [tags] Resource tags.
  /// [thumbprint] Certificate thumbprint.
  /// [type] The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  /// [valid] Is the certificate valid?.
  const GetCertificateResult({
    this.azureApiVersion,
    this.canonicalName,
    this.cerBlob,
    this.domainValidationMethod,
    this.expirationDate,
    this.friendlyName,
    this.hostNames,
    this.hostingEnvironmentProfile,
    this.id,
    this.issueDate,
    this.issuer,
    this.keyVaultId,
    this.keyVaultSecretName,
    this.keyVaultSecretStatus,
    this.kind,
    this.location,
    this.name,
    this.password,
    this.pfxBlob,
    this.publicKeyHash,
    this.selfLink,
    this.serverFarmId,
    this.siteName,
    this.subjectName,
    this.systemData,
    this.tags,
    this.thumbprint,
    this.type,
    this.valid,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': ?azureApiVersion,
      'canonicalName': ?canonicalName,
      'cerBlob': ?cerBlob,
      'domainValidationMethod': ?domainValidationMethod,
      'expirationDate': ?expirationDate,
      'friendlyName': ?friendlyName,
      'hostNames': ?hostNames,
      'hostingEnvironmentProfile': ?hostingEnvironmentProfile?.toMap(),
      'id': ?id,
      'issueDate': ?issueDate,
      'issuer': ?issuer,
      'keyVaultId': ?keyVaultId,
      'keyVaultSecretName': ?keyVaultSecretName,
      'keyVaultSecretStatus': ?keyVaultSecretStatus,
      'kind': ?kind,
      'location': ?location,
      'name': ?name,
      'password': ?password,
      'pfxBlob': ?pfxBlob,
      'publicKeyHash': ?publicKeyHash,
      'selfLink': ?selfLink,
      'serverFarmId': ?serverFarmId,
      'siteName': ?siteName,
      'subjectName': ?subjectName,
      'systemData': ?systemData?.toMap(),
      'tags': ?tags,
      'thumbprint': ?thumbprint,
      'type': ?type,
      'valid': ?valid,
    };
  }

  factory GetCertificateResult.fromMap(Map<String, dynamic> map) {
    return GetCertificateResult(
      azureApiVersion: (() { final guardedValue = map['azureApiVersion']; if (guardedValue == null) return null; return guardedValue as String; })(),
      canonicalName: (() { final guardedValue = map['canonicalName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      cerBlob: (() { final guardedValue = map['cerBlob']; if (guardedValue == null) return null; return guardedValue as String; })(),
      domainValidationMethod: (() { final guardedValue = map['domainValidationMethod']; if (guardedValue == null) return null; return guardedValue as String; })(),
      expirationDate: (() { final guardedValue = map['expirationDate']; if (guardedValue == null) return null; return guardedValue as String; })(),
      friendlyName: (() { final guardedValue = map['friendlyName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      hostNames: (() { final guardedValue = map['hostNames']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      hostingEnvironmentProfile: (() { final guardedValue = map['hostingEnvironmentProfile']; if (guardedValue == null) return null; return HostingEnvironmentProfileResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      issueDate: (() { final guardedValue = map['issueDate']; if (guardedValue == null) return null; return guardedValue as String; })(),
      issuer: (() { final guardedValue = map['issuer']; if (guardedValue == null) return null; return guardedValue as String; })(),
      keyVaultId: (() { final guardedValue = map['keyVaultId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      keyVaultSecretName: (() { final guardedValue = map['keyVaultSecretName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      keyVaultSecretStatus: (() { final guardedValue = map['keyVaultSecretStatus']; if (guardedValue == null) return null; return guardedValue as String; })(),
      kind: (() { final guardedValue = map['kind']; if (guardedValue == null) return null; return guardedValue as String; })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      password: (() { final guardedValue = map['password']; if (guardedValue == null) return null; return guardedValue as String; })(),
      pfxBlob: (() { final guardedValue = map['pfxBlob']; if (guardedValue == null) return null; return guardedValue as String; })(),
      publicKeyHash: (() { final guardedValue = map['publicKeyHash']; if (guardedValue == null) return null; return guardedValue as String; })(),
      selfLink: (() { final guardedValue = map['selfLink']; if (guardedValue == null) return null; return guardedValue as String; })(),
      serverFarmId: (() { final guardedValue = map['serverFarmId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      siteName: (() { final guardedValue = map['siteName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      subjectName: (() { final guardedValue = map['subjectName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      systemData: (() { final guardedValue = map['systemData']; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      thumbprint: (() { final guardedValue = map['thumbprint']; if (guardedValue == null) return null; return guardedValue as String; })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return guardedValue as String; })(),
      valid: (() { final guardedValue = map['valid']; if (guardedValue == null) return null; return guardedValue as bool; })(),
    );
  }
}
