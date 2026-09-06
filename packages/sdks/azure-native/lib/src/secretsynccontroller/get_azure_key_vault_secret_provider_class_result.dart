// ignore_for_file: unused_element, unnecessary_cast

import 'extended_location_response.dart';
import 'system_data_response.dart';

/// Result data returned by getAzureKeyVaultSecretProviderClass.
class GetAzureKeyVaultSecretProviderClassResult {
  /// The Azure API version of the resource.
  final String? azureApiVersion;
  /// The user assigned managed identity client ID that should be used to access the Azure Key Vault.
  final String? clientId;
  /// The complex type of the extended location.
  final ExtendedLocationResponse? extendedLocation;
  /// Fully qualified resource ID for the resource. E.g. "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}"
  final String? id;
  /// The name of the Azure Key Vault to sync secrets from.
  final String? keyvaultName;
  /// The geo-location where the resource lives
  final String? location;
  /// The name of the resource
  final String? name;
  /// Objects defines the desired state of synced K8s secret objects
  final String? objects;
  /// Provisioning state of the AzureKeyVaultSecretProviderClass instance.
  final String? provisioningState;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  final SystemDataResponse? systemData;
  /// Resource tags.
  final Map<String, String>? tags;
  /// The Azure Active Directory tenant ID that should be used for authenticating requests to the Azure Key Vault.
  final String? tenantId;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  final String? type;

  /// Creates a new [GetAzureKeyVaultSecretProviderClassResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [clientId] The user assigned managed identity client ID that should be used to access the Azure Key Vault.
  /// [extendedLocation] The complex type of the extended location.
  /// [id] Fully qualified resource ID for the resource. E.g. "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}"
  /// [keyvaultName] The name of the Azure Key Vault to sync secrets from.
  /// [location] The geo-location where the resource lives
  /// [name] The name of the resource
  /// [objects] Objects defines the desired state of synced K8s secret objects
  /// [provisioningState] Provisioning state of the AzureKeyVaultSecretProviderClass instance.
  /// [systemData] Azure Resource Manager metadata containing createdBy and modifiedBy information.
  /// [tags] Resource tags.
  /// [tenantId] The Azure Active Directory tenant ID that should be used for authenticating requests to the Azure Key Vault.
  /// [type] The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  const GetAzureKeyVaultSecretProviderClassResult({
    this.azureApiVersion,
    this.clientId,
    this.extendedLocation,
    this.id,
    this.keyvaultName,
    this.location,
    this.name,
    this.objects,
    this.provisioningState,
    this.systemData,
    this.tags,
    this.tenantId,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': ?azureApiVersion,
      'clientId': ?clientId,
      'extendedLocation': ?extendedLocation?.toMap(),
      'id': ?id,
      'keyvaultName': ?keyvaultName,
      'location': ?location,
      'name': ?name,
      'objects': ?objects,
      'provisioningState': ?provisioningState,
      'systemData': ?systemData?.toMap(),
      'tags': ?tags,
      'tenantId': ?tenantId,
      'type': ?type,
    };
  }

  factory GetAzureKeyVaultSecretProviderClassResult.fromMap(Map<String, dynamic> map) {
    return GetAzureKeyVaultSecretProviderClassResult(
      azureApiVersion: (() { final guardedValue = map['azureApiVersion']; if (guardedValue == null) return null; return guardedValue as String; })(),
      clientId: (() { final guardedValue = map['clientId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      extendedLocation: (() { final guardedValue = map['extendedLocation']; if (guardedValue == null) return null; return ExtendedLocationResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      keyvaultName: (() { final guardedValue = map['keyvaultName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      objects: (() { final guardedValue = map['objects']; if (guardedValue == null) return null; return guardedValue as String; })(),
      provisioningState: (() { final guardedValue = map['provisioningState']; if (guardedValue == null) return null; return guardedValue as String; })(),
      systemData: (() { final guardedValue = map['systemData']; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      tenantId: (() { final guardedValue = map['tenantId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
