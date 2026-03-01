// ignore_for_file: unused_element, unnecessary_cast

import 'agent_properties_error_details_response.dart';
import 'system_data_response.dart';
import 'upload_limit_schedule_response.dart';

/// Result data returned by getAgent.
class GetAgentResult {
  /// The Agent status.
  final String agentStatus;
  /// The Agent version.
  final String agentVersion;
  /// The fully qualified resource ID of the Hybrid Compute resource for the Agent.
  final String arcResourceId;
  /// The VM UUID of the Hybrid Compute resource for the Agent.
  final String arcVmUuid;
  /// The Azure API version of the resource.
  final String azureApiVersion;
  /// A description for the Agent.
  final String? description;
  final AgentPropertiesErrorDetailsResponse errorDetails;
  /// Fully qualified resource ID for the resource. Ex - /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}
  final String id;
  /// The last updated time of the Agent status.
  final String lastStatusUpdate;
  /// Local IP address reported by the Agent.
  final String localIPAddress;
  /// Available memory reported by the Agent, in MB.
  final double memoryInMB;
  /// The name of the resource
  final String name;
  /// Available compute cores reported by the Agent.
  final double numberOfCores;
  /// The provisioning state of this resource.
  final String provisioningState;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  final SystemDataResponse systemData;
  /// The agent's local time zone represented in Windows format.
  final String timeZone;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  final String type;
  /// The WAN-link upload limit schedule that applies to any Job Run the agent executes. Data plane operations (migrating files) are affected. Control plane operations ensure seamless migration functionality and are not limited by this schedule. The schedule is interpreted with the agent's local time.
  final UploadLimitScheduleResponse? uploadLimitSchedule;
  /// Uptime of the Agent in seconds.
  final double uptimeInSeconds;

  /// Creates a new [GetAgentResult].
  /// [agentStatus] The Agent status.
  /// [agentVersion] The Agent version.
  /// [arcResourceId] The fully qualified resource ID of the Hybrid Compute resource for the Agent.
  /// [arcVmUuid] The VM UUID of the Hybrid Compute resource for the Agent.
  /// [azureApiVersion] The Azure API version of the resource.
  /// [description] A description for the Agent.
  /// [errorDetails] Required.
  /// [id] Fully qualified resource ID for the resource. Ex - /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}
  /// [lastStatusUpdate] The last updated time of the Agent status.
  /// [localIPAddress] Local IP address reported by the Agent.
  /// [memoryInMB] Available memory reported by the Agent, in MB.
  /// [name] The name of the resource
  /// [numberOfCores] Available compute cores reported by the Agent.
  /// [provisioningState] The provisioning state of this resource.
  /// [systemData] Azure Resource Manager metadata containing createdBy and modifiedBy information.
  /// [timeZone] The agent's local time zone represented in Windows format.
  /// [type] The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  /// [uploadLimitSchedule] The WAN-link upload limit schedule that applies to any Job Run the agent executes. Data plane operations (migrating files) are affected. Control plane operations ensure seamless migration functionality and are not limited by this schedule. The schedule is interpreted with the agent's local time.
  /// [uptimeInSeconds] Uptime of the Agent in seconds.
  GetAgentResult({
    required this.agentStatus,
    required this.agentVersion,
    required this.arcResourceId,
    required this.arcVmUuid,
    required this.azureApiVersion,
    this.description,
    required this.errorDetails,
    required this.id,
    required this.lastStatusUpdate,
    required this.localIPAddress,
    required this.memoryInMB,
    required this.name,
    required this.numberOfCores,
    required this.provisioningState,
    required this.systemData,
    required this.timeZone,
    required this.type,
    this.uploadLimitSchedule,
    required this.uptimeInSeconds,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'agentStatus': agentStatus,
      'agentVersion': agentVersion,
      'arcResourceId': arcResourceId,
      'arcVmUuid': arcVmUuid,
      'azureApiVersion': azureApiVersion,
      'description': ?description,
      'errorDetails': errorDetails.toMap(),
      'id': id,
      'lastStatusUpdate': lastStatusUpdate,
      'localIPAddress': localIPAddress,
      'memoryInMB': memoryInMB,
      'name': name,
      'numberOfCores': numberOfCores,
      'provisioningState': provisioningState,
      'systemData': systemData.toMap(),
      'timeZone': timeZone,
      'type': type,
      'uploadLimitSchedule': ?uploadLimitSchedule == null ? null : uploadLimitSchedule!.toMap(),
      'uptimeInSeconds': uptimeInSeconds,
    };
  }

  factory GetAgentResult.fromMap(Map<String, dynamic> map) {
    return GetAgentResult(
      agentStatus: map['agentStatus'] as String,
      agentVersion: map['agentVersion'] as String,
      arcResourceId: map['arcResourceId'] as String,
      arcVmUuid: map['arcVmUuid'] as String,
      azureApiVersion: map['azureApiVersion'] as String,
      description: map['description'] == null ? null : map['description'] as String,
      errorDetails: AgentPropertiesErrorDetailsResponse.fromMap((map['errorDetails'] as Map).cast<String, dynamic>()),
      id: map['id'] as String,
      lastStatusUpdate: map['lastStatusUpdate'] as String,
      localIPAddress: map['localIPAddress'] as String,
      memoryInMB: map['memoryInMB'] as double,
      name: map['name'] as String,
      numberOfCores: map['numberOfCores'] as double,
      provisioningState: map['provisioningState'] as String,
      systemData: SystemDataResponse.fromMap((map['systemData'] as Map).cast<String, dynamic>()),
      timeZone: map['timeZone'] as String,
      type: map['type'] as String,
      uploadLimitSchedule: map['uploadLimitSchedule'] == null ? null : UploadLimitScheduleResponse.fromMap((map['uploadLimitSchedule'] as Map).cast<String, dynamic>()),
      uptimeInSeconds: map['uptimeInSeconds'] as double,
    );
  }
}

