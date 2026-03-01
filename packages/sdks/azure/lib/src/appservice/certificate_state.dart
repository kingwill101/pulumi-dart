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
    pulumi.Output<String>? appServicePlanId,
    pulumi.Output<String>? expirationDate,
    pulumi.Output<String>? friendlyName,
    pulumi.Output<List<String>>? hostNames,
    pulumi.Output<String>? hostingEnvironmentProfileId,
    pulumi.Output<String>? issueDate,
    pulumi.Output<String>? issuer,
    pulumi.Output<String>? keyVaultId,
    pulumi.Output<String>? keyVaultSecretId,
    pulumi.Output<String>? location,
    pulumi.Output<String>? name,
    pulumi.Output<String>? password,
    pulumi.Output<String>? pfxBlob,
    pulumi.Output<String>? resourceGroupName,
    pulumi.Output<String>? subjectName,
    pulumi.Output<Map<String, String>>? tags,
    pulumi.Output<String>? thumbprint,
  }) :
      appServicePlanId = pulumi.Input.asOptionalInput<String>(appServicePlanId),
      expirationDate = pulumi.Input.asOptionalInput<String>(expirationDate),
      friendlyName = pulumi.Input.asOptionalInput<String>(friendlyName),
      hostNames = pulumi.Input.asOptionalInput<List<String>>(hostNames),
      hostingEnvironmentProfileId = pulumi.Input.asOptionalInput<String>(hostingEnvironmentProfileId),
      issueDate = pulumi.Input.asOptionalInput<String>(issueDate),
      issuer = pulumi.Input.asOptionalInput<String>(issuer),
      keyVaultId = pulumi.Input.asOptionalInput<String>(keyVaultId),
      keyVaultSecretId = pulumi.Input.asOptionalInput<String>(keyVaultSecretId),
      location = pulumi.Input.asOptionalInput<String>(location),
      name = pulumi.Input.asOptionalInput<String>(name),
      password = pulumi.Input.asOptionalInput<String>(password),
      pfxBlob = pulumi.Input.asOptionalInput<String>(pfxBlob),
      resourceGroupName = pulumi.Input.asOptionalInput<String>(resourceGroupName),
      subjectName = pulumi.Input.asOptionalInput<String>(subjectName),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      thumbprint = pulumi.Input.asOptionalInput<String>(thumbprint);

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
      appServicePlanId: map['appServicePlanId'] == null ? null : pulumi.Output.create<String>(map['appServicePlanId'] as String),
      expirationDate: map['expirationDate'] == null ? null : pulumi.Output.create<String>(map['expirationDate'] as String),
      friendlyName: map['friendlyName'] == null ? null : pulumi.Output.create<String>(map['friendlyName'] as String),
      hostNames: map['hostNames'] == null ? null : pulumi.Output.create<List<String>>((map['hostNames'] as List).cast<String>()),
      hostingEnvironmentProfileId: map['hostingEnvironmentProfileId'] == null ? null : pulumi.Output.create<String>(map['hostingEnvironmentProfileId'] as String),
      issueDate: map['issueDate'] == null ? null : pulumi.Output.create<String>(map['issueDate'] as String),
      issuer: map['issuer'] == null ? null : pulumi.Output.create<String>(map['issuer'] as String),
      keyVaultId: map['keyVaultId'] == null ? null : pulumi.Output.create<String>(map['keyVaultId'] as String),
      keyVaultSecretId: map['keyVaultSecretId'] == null ? null : pulumi.Output.create<String>(map['keyVaultSecretId'] as String),
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      password: map['password'] == null ? null : pulumi.Output.create<String>(map['password'] as String),
      pfxBlob: map['pfxBlob'] == null ? null : pulumi.Output.create<String>(map['pfxBlob'] as String),
      resourceGroupName: map['resourceGroupName'] == null ? null : pulumi.Output.create<String>(map['resourceGroupName'] as String),
      subjectName: map['subjectName'] == null ? null : pulumi.Output.create<String>(map['subjectName'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      thumbprint: map['thumbprint'] == null ? null : pulumi.Output.create<String>(map['thumbprint'] as String),
    );
  }
}

