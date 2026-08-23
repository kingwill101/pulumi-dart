// ignore_for_file: unused_element, unnecessary_cast

import 'system_data_response.dart';

/// Result data returned by getSecurityConnectorApplication.
class GetSecurityConnectorApplicationResult {
  /// The Azure API version of the resource.
  final String azureApiVersion;
  /// The application conditionSets - see examples
  final List<dynamic> conditionSets;
  /// description of the application
  final String? description;
  /// display name of the application
  final String? displayName;
  /// Fully qualified resource ID for the resource. E.g. "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}"
  final String id;
  /// The name of the resource
  final String name;
  /// The application source, what it affects, e.g. Assessments
  final String sourceResourceType;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  final SystemDataResponse systemData;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  final String type;

  /// Creates a new [GetSecurityConnectorApplicationResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [conditionSets] The application conditionSets - see examples
  /// [description] description of the application
  /// [displayName] display name of the application
  /// [id] Fully qualified resource ID for the resource. E.g. "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}"
  /// [name] The name of the resource
  /// [sourceResourceType] The application source, what it affects, e.g. Assessments
  /// [systemData] Azure Resource Manager metadata containing createdBy and modifiedBy information.
  /// [type] The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  const GetSecurityConnectorApplicationResult({
    required this.azureApiVersion,
    required this.conditionSets,
    this.description,
    this.displayName,
    required this.id,
    required this.name,
    required this.sourceResourceType,
    required this.systemData,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': azureApiVersion,
      'conditionSets': conditionSets,
      'description': ?description,
      'displayName': ?displayName,
      'id': id,
      'name': name,
      'sourceResourceType': sourceResourceType,
      'systemData': systemData.toMap(),
      'type': type,
    };
  }

  factory GetSecurityConnectorApplicationResult.fromMap(Map<String, dynamic> map) {
    return GetSecurityConnectorApplicationResult(
      azureApiVersion: map['azureApiVersion'] as String,
      conditionSets: (map['conditionSets'] as List).cast<dynamic>(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return guardedValue as String; })(),
      displayName: (() { final guardedValue = map['displayName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: map['id'] as String,
      name: map['name'] as String,
      sourceResourceType: map['sourceResourceType'] as String,
      systemData: SystemDataResponse.fromMap((map['systemData']! as Map).cast<String, dynamic>()),
      type: map['type'] as String,
    );
  }
}
