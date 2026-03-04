// ignore_for_file: unused_element, unnecessary_cast

import 'system_data_response.dart';

/// Result data returned by getJobDefinition.
class GetJobDefinitionResult {
  /// Name of the Agent to assign for new Job Runs of this Job Definition.
  final String? agentName;

  /// Fully qualified resource id of the Agent to assign for new Job Runs of this Job Definition.
  final String agentResourceId;

  /// The Azure API version of the resource.
  final String azureApiVersion;

  /// Strategy to use for copy.
  final String copyMode;

  /// A description for the Job Definition. OnPremToCloud is for migrating data from on-premises to cloud. CloudToCloud is for migrating data between cloud to cloud.
  final String? description;

  /// Fully qualified resource ID for the resource. Ex - /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}
  final String id;

  /// The name of the Job Run in a non-terminal state, if exists.
  final String latestJobRunName;

  /// The fully qualified resource ID of the Job Run in a non-terminal state, if exists.
  final String latestJobRunResourceId;

  /// The current status of the Job Run in a non-terminal state, if exists.
  final String latestJobRunStatus;

  /// The name of the resource
  final String name;

  /// The provisioning state of this resource.
  final String provisioningState;

  /// The name of the source Endpoint.
  final String sourceName;

  /// Fully qualified resource ID of the source Endpoint.
  final String sourceResourceId;

  /// The subpath to use when reading from the source Endpoint.
  final String? sourceSubpath;

  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  final SystemDataResponse systemData;

  /// The name of the target Endpoint.
  final String targetName;

  /// Fully qualified resource ID of the target Endpoint.
  final String targetResourceId;

  /// The subpath to use when writing to the target Endpoint.
  final String? targetSubpath;

  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  final String type;

  /// Creates a new [GetJobDefinitionResult].
  /// [agentName] Name of the Agent to assign for new Job Runs of this Job Definition.
  /// [agentResourceId] Fully qualified resource id of the Agent to assign for new Job Runs of this Job Definition.
  /// [azureApiVersion] The Azure API version of the resource.
  /// [copyMode] Strategy to use for copy.
  /// [description] A description for the Job Definition. OnPremToCloud is for migrating data from on-premises to cloud. CloudToCloud is for migrating data between cloud to cloud.
  /// [id] Fully qualified resource ID for the resource. Ex - /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}
  /// [latestJobRunName] The name of the Job Run in a non-terminal state, if exists.
  /// [latestJobRunResourceId] The fully qualified resource ID of the Job Run in a non-terminal state, if exists.
  /// [latestJobRunStatus] The current status of the Job Run in a non-terminal state, if exists.
  /// [name] The name of the resource
  /// [provisioningState] The provisioning state of this resource.
  /// [sourceName] The name of the source Endpoint.
  /// [sourceResourceId] Fully qualified resource ID of the source Endpoint.
  /// [sourceSubpath] The subpath to use when reading from the source Endpoint.
  /// [systemData] Azure Resource Manager metadata containing createdBy and modifiedBy information.
  /// [targetName] The name of the target Endpoint.
  /// [targetResourceId] Fully qualified resource ID of the target Endpoint.
  /// [targetSubpath] The subpath to use when writing to the target Endpoint.
  /// [type] The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  GetJobDefinitionResult({
    this.agentName,
    required this.agentResourceId,
    required this.azureApiVersion,
    required this.copyMode,
    this.description,
    required this.id,
    required this.latestJobRunName,
    required this.latestJobRunResourceId,
    required this.latestJobRunStatus,
    required this.name,
    required this.provisioningState,
    required this.sourceName,
    required this.sourceResourceId,
    this.sourceSubpath,
    required this.systemData,
    required this.targetName,
    required this.targetResourceId,
    this.targetSubpath,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'agentName': ?agentName,
      'agentResourceId': agentResourceId,
      'azureApiVersion': azureApiVersion,
      'copyMode': copyMode,
      'description': ?description,
      'id': id,
      'latestJobRunName': latestJobRunName,
      'latestJobRunResourceId': latestJobRunResourceId,
      'latestJobRunStatus': latestJobRunStatus,
      'name': name,
      'provisioningState': provisioningState,
      'sourceName': sourceName,
      'sourceResourceId': sourceResourceId,
      'sourceSubpath': ?sourceSubpath,
      'systemData': systemData.toMap(),
      'targetName': targetName,
      'targetResourceId': targetResourceId,
      'targetSubpath': ?targetSubpath,
      'type': type,
    };
  }

  factory GetJobDefinitionResult.fromMap(Map<String, dynamic> map) {
    return GetJobDefinitionResult(
      agentName: (() {
        final guardedValue = map['agentName'];
        if (guardedValue == null) return null;
        return guardedValue as String;
      })(),
      agentResourceId: map['agentResourceId'] as String,
      azureApiVersion: map['azureApiVersion'] as String,
      copyMode: map['copyMode'] as String,
      description: (() {
        final guardedValue = map['description'];
        if (guardedValue == null) return null;
        return guardedValue as String;
      })(),
      id: map['id'] as String,
      latestJobRunName: map['latestJobRunName'] as String,
      latestJobRunResourceId: map['latestJobRunResourceId'] as String,
      latestJobRunStatus: map['latestJobRunStatus'] as String,
      name: map['name'] as String,
      provisioningState: map['provisioningState'] as String,
      sourceName: map['sourceName'] as String,
      sourceResourceId: map['sourceResourceId'] as String,
      sourceSubpath: (() {
        final guardedValue = map['sourceSubpath'];
        if (guardedValue == null) return null;
        return guardedValue as String;
      })(),
      systemData: SystemDataResponse.fromMap(
        (map['systemData']! as Map).cast<String, dynamic>(),
      ),
      targetName: map['targetName'] as String,
      targetResourceId: map['targetResourceId'] as String,
      targetSubpath: (() {
        final guardedValue = map['targetSubpath'];
        if (guardedValue == null) return null;
        return guardedValue as String;
      })(),
      type: map['type'] as String,
    );
  }
}
