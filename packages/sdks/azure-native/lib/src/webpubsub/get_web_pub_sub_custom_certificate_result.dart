// ignore_for_file: unused_element, unnecessary_cast

import 'system_data_response.dart';

/// Result data returned by getWebPubSubCustomCertificate.
class GetWebPubSubCustomCertificateResult {
  /// The Azure API version of the resource.
  final String azureApiVersion;
  /// Fully qualified resource ID for the resource. E.g. "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}"
  final String id;
  /// Base uri of the KeyVault that stores certificate.
  final String keyVaultBaseUri;
  /// Certificate secret name.
  final String keyVaultSecretName;
  /// Certificate secret version.
  final String? keyVaultSecretVersion;
  /// The name of the resource
  final String name;
  /// Provisioning state of the resource.
  final String provisioningState;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  final SystemDataResponse systemData;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  final String type;

  /// Creates a new [GetWebPubSubCustomCertificateResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [id] Fully qualified resource ID for the resource. E.g. "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}"
  /// [keyVaultBaseUri] Base uri of the KeyVault that stores certificate.
  /// [keyVaultSecretName] Certificate secret name.
  /// [keyVaultSecretVersion] Certificate secret version.
  /// [name] The name of the resource
  /// [provisioningState] Provisioning state of the resource.
  /// [systemData] Azure Resource Manager metadata containing createdBy and modifiedBy information.
  /// [type] The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  const GetWebPubSubCustomCertificateResult({
    required this.azureApiVersion,
    required this.id,
    required this.keyVaultBaseUri,
    required this.keyVaultSecretName,
    this.keyVaultSecretVersion,
    required this.name,
    required this.provisioningState,
    required this.systemData,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': azureApiVersion,
      'id': id,
      'keyVaultBaseUri': keyVaultBaseUri,
      'keyVaultSecretName': keyVaultSecretName,
      'keyVaultSecretVersion': ?keyVaultSecretVersion,
      'name': name,
      'provisioningState': provisioningState,
      'systemData': systemData.toMap(),
      'type': type,
    };
  }

  factory GetWebPubSubCustomCertificateResult.fromMap(Map<String, dynamic> map) {
    return GetWebPubSubCustomCertificateResult(
      azureApiVersion: map['azureApiVersion'] as String,
      id: map['id'] as String,
      keyVaultBaseUri: map['keyVaultBaseUri'] as String,
      keyVaultSecretName: map['keyVaultSecretName'] as String,
      keyVaultSecretVersion: (() { final guardedValue = map['keyVaultSecretVersion']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: map['name'] as String,
      provisioningState: map['provisioningState'] as String,
      systemData: SystemDataResponse.fromMap((map['systemData']! as Map).cast<String, dynamic>()),
      type: map['type'] as String,
    );
  }
}

