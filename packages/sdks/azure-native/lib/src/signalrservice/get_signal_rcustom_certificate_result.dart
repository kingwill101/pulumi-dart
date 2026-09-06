// ignore_for_file: unused_element, unnecessary_cast

import 'system_data_response.dart';

/// Result data returned by getSignalRCustomCertificate.
class GetSignalRCustomCertificateResult {
  /// The Azure API version of the resource.
  final String? azureApiVersion;
  /// Fully qualified resource ID for the resource. E.g. "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}"
  final String? id;
  /// Base uri of the KeyVault that stores certificate.
  final String? keyVaultBaseUri;
  /// Certificate secret name.
  final String? keyVaultSecretName;
  /// Certificate secret version.
  final String? keyVaultSecretVersion;
  /// The name of the resource
  final String? name;
  /// Provisioning state of the resource.
  final String? provisioningState;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  final SystemDataResponse? systemData;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  final String? type;

  /// Creates a new [GetSignalRCustomCertificateResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [id] Fully qualified resource ID for the resource. E.g. "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}"
  /// [keyVaultBaseUri] Base uri of the KeyVault that stores certificate.
  /// [keyVaultSecretName] Certificate secret name.
  /// [keyVaultSecretVersion] Certificate secret version.
  /// [name] The name of the resource
  /// [provisioningState] Provisioning state of the resource.
  /// [systemData] Azure Resource Manager metadata containing createdBy and modifiedBy information.
  /// [type] The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  const GetSignalRCustomCertificateResult({
    this.azureApiVersion,
    this.id,
    this.keyVaultBaseUri,
    this.keyVaultSecretName,
    this.keyVaultSecretVersion,
    this.name,
    this.provisioningState,
    this.systemData,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': ?azureApiVersion,
      'id': ?id,
      'keyVaultBaseUri': ?keyVaultBaseUri,
      'keyVaultSecretName': ?keyVaultSecretName,
      'keyVaultSecretVersion': ?keyVaultSecretVersion,
      'name': ?name,
      'provisioningState': ?provisioningState,
      'systemData': ?systemData?.toMap(),
      'type': ?type,
    };
  }

  factory GetSignalRCustomCertificateResult.fromMap(Map<String, dynamic> map) {
    return GetSignalRCustomCertificateResult(
      azureApiVersion: (() { final guardedValue = map['azureApiVersion']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      keyVaultBaseUri: (() { final guardedValue = map['keyVaultBaseUri']; if (guardedValue == null) return null; return guardedValue as String; })(),
      keyVaultSecretName: (() { final guardedValue = map['keyVaultSecretName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      keyVaultSecretVersion: (() { final guardedValue = map['keyVaultSecretVersion']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      provisioningState: (() { final guardedValue = map['provisioningState']; if (guardedValue == null) return null; return guardedValue as String; })(),
      systemData: (() { final guardedValue = map['systemData']; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
