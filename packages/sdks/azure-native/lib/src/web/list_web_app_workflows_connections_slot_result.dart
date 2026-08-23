// ignore_for_file: unused_element, unnecessary_cast

import 'system_data_response.dart';
import 'workflow_envelope_properties_response.dart';

/// Result data returned by listWebAppWorkflowsConnectionsSlot.
class ListWebAppWorkflowsConnectionsSlotResult {
  /// Fully qualified resource ID for the resource. E.g. "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}"
  final String id;
  /// The resource kind.
  final String? kind;
  /// The resource location.
  final String? location;
  /// The name of the resource
  final String name;
  /// Additional workflow properties.
  final WorkflowEnvelopePropertiesResponse properties;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  final SystemDataResponse systemData;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  final String type;

  /// Creates a new [ListWebAppWorkflowsConnectionsSlotResult].
  /// [id] Fully qualified resource ID for the resource. E.g. "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}"
  /// [kind] The resource kind.
  /// [location] The resource location.
  /// [name] The name of the resource
  /// [properties] Additional workflow properties.
  /// [systemData] Azure Resource Manager metadata containing createdBy and modifiedBy information.
  /// [type] The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  const ListWebAppWorkflowsConnectionsSlotResult({
    required this.id,
    this.kind,
    this.location,
    required this.name,
    required this.properties,
    required this.systemData,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'kind': ?kind,
      'location': ?location,
      'name': name,
      'properties': properties.toMap(),
      'systemData': systemData.toMap(),
      'type': type,
    };
  }

  factory ListWebAppWorkflowsConnectionsSlotResult.fromMap(Map<String, dynamic> map) {
    return ListWebAppWorkflowsConnectionsSlotResult(
      id: map['id'] as String,
      kind: (() { final guardedValue = map['kind']; if (guardedValue == null) return null; return guardedValue as String; })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: map['name'] as String,
      properties: WorkflowEnvelopePropertiesResponse.fromMap((map['properties']! as Map).cast<String, dynamic>()),
      systemData: SystemDataResponse.fromMap((map['systemData']! as Map).cast<String, dynamic>()),
      type: map['type'] as String,
    );
  }
}
