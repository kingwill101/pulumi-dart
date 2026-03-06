// ignore_for_file: unused_element, unnecessary_cast

import 'db2_provider_instance_properties_response.dart';
import 'error_detail_response.dart';
import 'health_response.dart';
import 'system_data_response.dart';

/// Result data returned by getProviderInstance.
class GetProviderInstanceResult {
  /// The Azure API version of the resource.
  final String azureApiVersion;
  /// Defines the provider instance errors.
  final ErrorDetailResponse errors;
  /// Resource health details
  final HealthResponse health;
  /// Fully qualified resource ID for the resource. E.g. "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}"
  final String id;
  /// The name of the resource
  final String name;
  /// Defines the provider specific properties.
  final Db2ProviderInstancePropertiesResponse? providerSettings;
  /// State of provisioning of the provider instance
  final String provisioningState;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  final SystemDataResponse systemData;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  final String type;

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
    required this.azureApiVersion,
    required this.errors,
    required this.health,
    required this.id,
    required this.name,
    this.providerSettings,
    required this.provisioningState,
    required this.systemData,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': azureApiVersion,
      'errors': errors.toMap(),
      'health': health.toMap(),
      'id': id,
      'name': name,
      'providerSettings': ?providerSettings?.toMap(),
      'provisioningState': provisioningState,
      'systemData': systemData.toMap(),
      'type': type,
    };
  }

  factory GetProviderInstanceResult.fromMap(Map<String, dynamic> map) {
    return GetProviderInstanceResult(
      azureApiVersion: map['azureApiVersion'] as String,
      errors: ErrorDetailResponse.fromMap((map['errors']! as Map).cast<String, dynamic>()),
      health: HealthResponse.fromMap((map['health']! as Map).cast<String, dynamic>()),
      id: map['id'] as String,
      name: map['name'] as String,
      providerSettings: (() { final guardedValue = map['providerSettings']; if (guardedValue == null) return null; return Db2ProviderInstancePropertiesResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      provisioningState: map['provisioningState'] as String,
      systemData: SystemDataResponse.fromMap((map['systemData']! as Map).cast<String, dynamic>()),
      type: map['type'] as String,
    );
  }
}

