// ignore_for_file: unused_element, unnecessary_cast

import 'agent_properties_error_details_response.dart';
import 'system_data_response.dart';
import 'upload_limit_schedule_response.dart';

/// Result data returned by getAgent.
class GetAgentResult {
  /// The Agent status.
  final String? agentStatus;
  /// The Agent version.
  final String? agentVersion;
  /// The fully qualified resource ID of the Hybrid Compute resource for the Agent.
  final String? arcResourceId;
  /// The VM UUID of the Hybrid Compute resource for the Agent.
  final String? arcVmUuid;
  /// The Azure API version of the resource.
  final String? azureApiVersion;
  /// A description for the Agent.
  final String? description;
  final AgentPropertiesErrorDetailsResponse? errorDetails;
  /// Fully qualified resource ID for the resource. Ex - /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}
  final String? id;
  /// The last updated time of the Agent status.
  final String? lastStatusUpdate;
  /// Local IP address reported by the Agent.
  final String? localIPAddress;
  /// Available memory reported by the Agent, in MB.
  final double? memoryInMB;
  /// The name of the resource
  final String? name;
  /// Available compute cores reported by the Agent.
  final double? numberOfCores;
  /// The provisioning state of this resource.
  final String? provisioningState;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  final SystemDataResponse? systemData;
  /// The agent's local time zone represented in Windows format.
  final String? timeZone;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  final String? type;
  /// The WAN-link upload limit schedule that applies to any Job Run the agent executes. Data plane operations (migrating files) are affected. Control plane operations ensure seamless migration functionality and are not limited by this schedule. The schedule is interpreted with the agent's local time.
  final UploadLimitScheduleResponse? uploadLimitSchedule;
  /// Uptime of the Agent in seconds.
  final double? uptimeInSeconds;

  /// Creates a new [GetAgentResult].
  /// [agentStatus] The Agent status.
  /// [agentVersion] The Agent version.
  /// [arcResourceId] The fully qualified resource ID of the Hybrid Compute resource for the Agent.
  /// [arcVmUuid] The VM UUID of the Hybrid Compute resource for the Agent.
  /// [azureApiVersion] The Azure API version of the resource.
  /// [description] A description for the Agent.
  /// [errorDetails] Optional.
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
  const GetAgentResult({
    this.agentStatus,
    this.agentVersion,
    this.arcResourceId,
    this.arcVmUuid,
    this.azureApiVersion,
    this.description,
    this.errorDetails,
    this.id,
    this.lastStatusUpdate,
    this.localIPAddress,
    this.memoryInMB,
    this.name,
    this.numberOfCores,
    this.provisioningState,
    this.systemData,
    this.timeZone,
    this.type,
    this.uploadLimitSchedule,
    this.uptimeInSeconds,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'agentStatus': ?agentStatus,
      'agentVersion': ?agentVersion,
      'arcResourceId': ?arcResourceId,
      'arcVmUuid': ?arcVmUuid,
      'azureApiVersion': ?azureApiVersion,
      'description': ?description,
      'errorDetails': ?errorDetails?.toMap(),
      'id': ?id,
      'lastStatusUpdate': ?lastStatusUpdate,
      'localIPAddress': ?localIPAddress,
      'memoryInMB': ?memoryInMB,
      'name': ?name,
      'numberOfCores': ?numberOfCores,
      'provisioningState': ?provisioningState,
      'systemData': ?systemData?.toMap(),
      'timeZone': ?timeZone,
      'type': ?type,
      'uploadLimitSchedule': ?uploadLimitSchedule?.toMap(),
      'uptimeInSeconds': ?uptimeInSeconds,
    };
  }

  factory GetAgentResult.fromMap(Map<String, dynamic> map) {
    return GetAgentResult(
      agentStatus: (() { final guardedValue = map['agentStatus']; if (guardedValue == null) return null; return guardedValue as String; })(),
      agentVersion: (() { final guardedValue = map['agentVersion']; if (guardedValue == null) return null; return guardedValue as String; })(),
      arcResourceId: (() { final guardedValue = map['arcResourceId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      arcVmUuid: (() { final guardedValue = map['arcVmUuid']; if (guardedValue == null) return null; return guardedValue as String; })(),
      azureApiVersion: (() { final guardedValue = map['azureApiVersion']; if (guardedValue == null) return null; return guardedValue as String; })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return guardedValue as String; })(),
      errorDetails: (() { final guardedValue = map['errorDetails']; if (guardedValue == null) return null; return AgentPropertiesErrorDetailsResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      lastStatusUpdate: (() { final guardedValue = map['lastStatusUpdate']; if (guardedValue == null) return null; return guardedValue as String; })(),
      localIPAddress: (() { final guardedValue = map['localIPAddress']; if (guardedValue == null) return null; return guardedValue as String; })(),
      memoryInMB: (() { final guardedValue = map['memoryInMB']; if (guardedValue == null) return null; return (guardedValue as num).toDouble(); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      numberOfCores: (() { final guardedValue = map['numberOfCores']; if (guardedValue == null) return null; return (guardedValue as num).toDouble(); })(),
      provisioningState: (() { final guardedValue = map['provisioningState']; if (guardedValue == null) return null; return guardedValue as String; })(),
      systemData: (() { final guardedValue = map['systemData']; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      timeZone: (() { final guardedValue = map['timeZone']; if (guardedValue == null) return null; return guardedValue as String; })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return guardedValue as String; })(),
      uploadLimitSchedule: (() { final guardedValue = map['uploadLimitSchedule']; if (guardedValue == null) return null; return UploadLimitScheduleResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      uptimeInSeconds: (() { final guardedValue = map['uptimeInSeconds']; if (guardedValue == null) return null; return (guardedValue as num).toDouble(); })(),
    );
  }
}
