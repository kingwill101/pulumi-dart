// ignore_for_file: unused_element, unnecessary_cast

import 'error_detail_response.dart';
import 'health_response.dart';
import 'system_data_response.dart';

/// Result data returned by getProviderInstance.
class GetProviderInstanceResult {
  /// The Azure API version of the resource.
  final String? azureApiVersion;
  /// Defines the provider instance errors.
  final ErrorDetailResponse? errors;
  /// Resource health details
  final HealthResponse? health;
  /// Fully qualified resource ID for the resource. E.g. "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}"
  final String? id;
  /// The name of the resource
  final String? name;
  /// Defines the provider specific properties.
  final dynamic providerSettings;
  /// State of provisioning of the provider instance
  final String? provisioningState;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  final SystemDataResponse? systemData;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  final String? type;

  /// Creates a new [GetProviderInstanceResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [errors] Defines the provider instance errors.
  /// [health] Resource health details
  /// [id] Fully qualified resource ID for the resource. E.g. "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}"
  /// [name] The name of the resource
  /// [providerSettings] Defines the provider specific properties.
  /// [provisioningState] State of provisioning of the provider instance
  /// [systemData] Azure Resource Manager metadata containing createdBy and modifiedBy information.
  /// [type] The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  const GetProviderInstanceResult({
    this.azureApiVersion,
    this.errors,
    this.health,
    this.id,
    this.name,
    this.providerSettings,
    this.provisioningState,
    this.systemData,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': ?azureApiVersion,
      'errors': ?errors?.toMap(),
      'health': ?health?.toMap(),
      'id': ?id,
      'name': ?name,
      'providerSettings': ?providerSettings,
      'provisioningState': ?provisioningState,
      'systemData': ?systemData?.toMap(),
      'type': ?type,
    };
  }

  factory GetProviderInstanceResult.fromMap(Map<String, dynamic> map) {
    return GetProviderInstanceResult(
      azureApiVersion: (() { final guardedValue = map['azureApiVersion']; if (guardedValue == null) return null; return guardedValue as String; })(),
      errors: (() { final guardedValue = map['errors']; if (guardedValue == null) return null; return ErrorDetailResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      health: (() { final guardedValue = map['health']; if (guardedValue == null) return null; return HealthResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      providerSettings: (() { final guardedValue = map['providerSettings']; if (guardedValue == null) return null; return guardedValue; })(),
      provisioningState: (() { final guardedValue = map['provisioningState']; if (guardedValue == null) return null; return guardedValue as String; })(),
      systemData: (() { final guardedValue = map['systemData']; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
