// ignore_for_file: unused_element, unnecessary_cast

import 'hosting_environment_profile_response.dart';

/// Result data returned by getSiteCertificateSlot.
class GetSiteCertificateSlotResult {
  /// The Azure API version of the resource.
  final String azureApiVersion;
  /// CNAME of the certificate to be issued via free certificate
  final String? canonicalName;
  /// Raw bytes of .cer file
  final String cerBlob;
  /// Method of domain validation for free cert
  final String? domainValidationMethod;
  /// Certificate expiration date.
  final String expirationDate;
  /// Friendly name of the certificate.
  final String friendlyName;
  /// Host names the certificate applies to.
  final List<String>? hostNames;
  /// Specification for the App Service Environment to use for the certificate.
  final HostingEnvironmentProfileResponse hostingEnvironmentProfile;
  /// Resource Id.
  final String id;
  /// Certificate issue Date.
  final String issueDate;
  /// Certificate issuer.
  final String issuer;
  /// Azure Key Vault Csm resource Id.
  final String? keyVaultId;
  /// Azure Key Vault secret name.
  final String? keyVaultSecretName;
  /// Status of the Key Vault secret.
  final String keyVaultSecretStatus;
  /// Kind of resource. If the resource is an app, you can refer to https://github.com/Azure/app-service-linux-docs/blob/master/Things_You_Should_Know/kind_property.md#app-service-resource-kind-reference for details supported values for kind.
  final String? kind;
  /// Resource Location.
  final String location;
  /// Resource Name.
  final String name;
  /// Certificate password.
  final String? password;
  /// Pfx blob.
  final String? pfxBlob;
  /// Public key hash.
  final String publicKeyHash;
  /// Self link.
  final String selfLink;
  /// Resource ID of the associated App Service plan.
  final String? serverFarmId;
  /// App name.
  final String siteName;
  /// Subject name of the certificate.
  final String subjectName;
  /// Resource tags.
  final Map<String, String>? tags;
  /// Certificate thumbprint.
  final String thumbprint;
  /// Resource type.
  final String type;
  /// Is the certificate valid?.
  final bool valid;

  /// Creates a new [GetSiteCertificateSlotResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [canonicalName] CNAME of the certificate to be issued via free certificate
  /// [cerBlob] Raw bytes of .cer file
  /// [domainValidationMethod] Method of domain validation for free cert
  /// [expirationDate] Certificate expiration date.
  /// [friendlyName] Friendly name of the certificate.
  /// [hostNames] Host names the certificate applies to.
  /// [hostingEnvironmentProfile] Specification for the App Service Environment to use for the certificate.
  /// [id] Resource Id.
  /// [issueDate] Certificate issue Date.
  /// [issuer] Certificate issuer.
  /// [keyVaultId] Azure Key Vault Csm resource Id.
  /// [keyVaultSecretName] Azure Key Vault secret name.
  /// [keyVaultSecretStatus] Status of the Key Vault secret.
  /// [kind] Kind of resource. If the resource is an app, you can refer to https://github.com/Azure/app-service-linux-docs/blob/master/Things_You_Should_Know/kind_property.md#app-service-resource-kind-reference for details supported values for kind.
  /// [location] Resource Location.
  /// [name] Resource Name.
  /// [password] Certificate password.
  /// [pfxBlob] Pfx blob.
  /// [publicKeyHash] Public key hash.
  /// [selfLink] Self link.
  /// [serverFarmId] Resource ID of the associated App Service plan.
  /// [siteName] App name.
  /// [subjectName] Subject name of the certificate.
  /// [tags] Resource tags.
  /// [thumbprint] Certificate thumbprint.
  /// [type] Resource type.
  /// [valid] Is the certificate valid?.
  const GetSiteCertificateSlotResult({
    required this.azureApiVersion,
    this.canonicalName,
    required this.cerBlob,
    this.domainValidationMethod,
    required this.expirationDate,
    required this.friendlyName,
    this.hostNames,
    required this.hostingEnvironmentProfile,
    required this.id,
    required this.issueDate,
    required this.issuer,
    this.keyVaultId,
    this.keyVaultSecretName,
    required this.keyVaultSecretStatus,
    this.kind,
    required this.location,
    required this.name,
    this.password,
    this.pfxBlob,
    required this.publicKeyHash,
    required this.selfLink,
    this.serverFarmId,
    required this.siteName,
    required this.subjectName,
    this.tags,
    required this.thumbprint,
    required this.type,
    required this.valid,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': azureApiVersion,
      'canonicalName': ?canonicalName,
      'cerBlob': cerBlob,
      'domainValidationMethod': ?domainValidationMethod,
      'expirationDate': expirationDate,
      'friendlyName': friendlyName,
      'hostNames': ?hostNames,
      'hostingEnvironmentProfile': hostingEnvironmentProfile.toMap(),
      'id': id,
      'issueDate': issueDate,
      'issuer': issuer,
      'keyVaultId': ?keyVaultId,
      'keyVaultSecretName': ?keyVaultSecretName,
      'keyVaultSecretStatus': keyVaultSecretStatus,
      'kind': ?kind,
      'location': location,
      'name': name,
      'password': ?password,
      'pfxBlob': ?pfxBlob,
      'publicKeyHash': publicKeyHash,
      'selfLink': selfLink,
      'serverFarmId': ?serverFarmId,
      'siteName': siteName,
      'subjectName': subjectName,
      'tags': ?tags,
      'thumbprint': thumbprint,
      'type': type,
      'valid': valid,
    };
  }

  factory GetSiteCertificateSlotResult.fromMap(Map<String, dynamic> map) {
    return GetSiteCertificateSlotResult(
      azureApiVersion: map['azureApiVersion'] as String,
      canonicalName: (() { final guardedValue = map['canonicalName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      cerBlob: map['cerBlob'] as String,
      domainValidationMethod: (() { final guardedValue = map['domainValidationMethod']; if (guardedValue == null) return null; return guardedValue as String; })(),
      expirationDate: map['expirationDate'] as String,
      friendlyName: map['friendlyName'] as String,
      hostNames: (() { final guardedValue = map['hostNames']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      hostingEnvironmentProfile: HostingEnvironmentProfileResponse.fromMap((map['hostingEnvironmentProfile']! as Map).cast<String, dynamic>()),
      id: map['id'] as String,
      issueDate: map['issueDate'] as String,
      issuer: map['issuer'] as String,
      keyVaultId: (() { final guardedValue = map['keyVaultId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      keyVaultSecretName: (() { final guardedValue = map['keyVaultSecretName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      keyVaultSecretStatus: map['keyVaultSecretStatus'] as String,
      kind: (() { final guardedValue = map['kind']; if (guardedValue == null) return null; return guardedValue as String; })(),
      location: map['location'] as String,
      name: map['name'] as String,
      password: (() { final guardedValue = map['password']; if (guardedValue == null) return null; return guardedValue as String; })(),
      pfxBlob: (() { final guardedValue = map['pfxBlob']; if (guardedValue == null) return null; return guardedValue as String; })(),
      publicKeyHash: map['publicKeyHash'] as String,
      selfLink: map['selfLink'] as String,
      serverFarmId: (() { final guardedValue = map['serverFarmId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      siteName: map['siteName'] as String,
      subjectName: map['subjectName'] as String,
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      thumbprint: map['thumbprint'] as String,
      type: map['type'] as String,
      valid: map['valid'] as bool,
    );
  }
}

