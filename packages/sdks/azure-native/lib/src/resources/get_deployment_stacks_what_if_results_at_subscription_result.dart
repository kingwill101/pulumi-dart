// ignore_for_file: unused_element, unnecessary_cast

import 'deployment_stacks_what_if_result_properties_deployment_stacks_what_if_results_at_subscription_response.dart';
import 'system_data_response.dart';

/// Result data returned by getDeploymentStacksWhatIfResultsAtSubscription.
class GetDeploymentStacksWhatIfResultsAtSubscriptionResult {
  /// The Azure API version of the resource.
  final String azureApiVersion;
  /// Fully qualified resource ID for the resource. E.g. "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}"
  final String id;
  /// The geo-location where the resource lives. Required for subscription and management group scoped stacks. The location is inherited from the resource group for resource group scoped stacks.
  final String? location;
  /// The name of the resource
  final String name;
  /// The resource-specific properties for this resource.
  final DeploymentStacksWhatIfResultPropertiesDeploymentStacksWhatIfResultsAtSubscriptionResponse properties;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  final SystemDataResponse systemData;
  /// Resource tags.
  final Map<String, String>? tags;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  final String type;

  /// Creates a new [GetDeploymentStacksWhatIfResultsAtSubscriptionResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [id] Fully qualified resource ID for the resource. E.g. "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}"
  /// [location] The geo-location where the resource lives. Required for subscription and management group scoped stacks. The location is inherited from the resource group for resource group scoped stacks.
  /// [name] The name of the resource
  /// [properties] The resource-specific properties for this resource.
  /// [systemData] Azure Resource Manager metadata containing createdBy and modifiedBy information.
  /// [tags] Resource tags.
  /// [type] The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  const GetDeploymentStacksWhatIfResultsAtSubscriptionResult({
    required this.azureApiVersion,
    required this.id,
    this.location,
    required this.name,
    required this.properties,
    required this.systemData,
    this.tags,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': azureApiVersion,
      'id': id,
      'location': ?location,
      'name': name,
      'properties': properties.toMap(),
      'systemData': systemData.toMap(),
      'tags': ?tags,
      'type': type,
    };
  }

  factory GetDeploymentStacksWhatIfResultsAtSubscriptionResult.fromMap(Map<String, dynamic> map) {
    return GetDeploymentStacksWhatIfResultsAtSubscriptionResult(
      azureApiVersion: map['azureApiVersion'] as String,
      id: map['id'] as String,
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: map['name'] as String,
      properties: DeploymentStacksWhatIfResultPropertiesDeploymentStacksWhatIfResultsAtSubscriptionResponse.fromMap((map['properties']! as Map).cast<String, dynamic>()),
      systemData: SystemDataResponse.fromMap((map['systemData']! as Map).cast<String, dynamic>()),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      type: map['type'] as String,
    );
  }
}
