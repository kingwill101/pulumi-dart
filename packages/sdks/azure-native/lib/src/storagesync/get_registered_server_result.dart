// ignore_for_file: unused_element, unnecessary_cast

import 'system_data_response.dart';

/// Result data returned by getRegisteredServer.
class GetRegisteredServerResult {
  /// Server auth type.
  final String? activeAuthType;
  /// Registered Server Agent Version
  final String? agentVersion;
  /// Registered Server Agent Version Expiration Date
  final String? agentVersionExpirationDate;
  /// Registered Server Agent Version Status
  final String? agentVersionStatus;
  /// Server Application Id
  final String? applicationId;
  /// The Azure API version of the resource.
  final String? azureApiVersion;
  /// Registered Server clusterId
  final String? clusterId;
  /// Registered Server clusterName
  final String? clusterName;
  /// Resource discoveryEndpointUri
  final String? discoveryEndpointUri;
  /// Friendly Name
  final String? friendlyName;
  /// Fully qualified resource ID for the resource. E.g. "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}"
  final String? id;
  /// Apply server with newly discovered ApplicationId if available.
  final bool? identity;
  /// Registered Server last heart beat
  final String? lastHeartBeat;
  /// Resource Last Operation Name
  final String? lastOperationName;
  /// Registered Server lastWorkflowId
  final String? lastWorkflowId;
  /// Latest Server Application Id discovered from the server. It is not yet applied.
  final String? latestApplicationId;
  /// Management Endpoint Uri
  final String? managementEndpointUri;
  /// Monitoring Configuration
  final String? monitoringConfiguration;
  /// Telemetry Endpoint Uri
  final String? monitoringEndpointUri;
  /// The name of the resource
  final String? name;
  /// Registered Server Provisioning State
  final String? provisioningState;
  /// Resource Location
  final String? resourceLocation;
  /// Registered Server Certificate
  final String? serverCertificate;
  /// Registered Server serverId
  final String? serverId;
  /// Registered Server Management Error Code
  final int? serverManagementErrorCode;
  /// Server name
  final String? serverName;
  /// Registered Server OS Version
  final String? serverOSVersion;
  /// Registered Server serverRole
  final String? serverRole;
  /// Service Location
  final String? serviceLocation;
  /// Registered Server storageSyncServiceUid
  final String? storageSyncServiceUid;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  final SystemDataResponse? systemData;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  final String? type;

  /// Creates a new [GetRegisteredServerResult].
  /// [activeAuthType] Server auth type.
  /// [agentVersion] Registered Server Agent Version
  /// [agentVersionExpirationDate] Registered Server Agent Version Expiration Date
  /// [agentVersionStatus] Registered Server Agent Version Status
  /// [applicationId] Server Application Id
  /// [azureApiVersion] The Azure API version of the resource.
  /// [clusterId] Registered Server clusterId
  /// [clusterName] Registered Server clusterName
  /// [discoveryEndpointUri] Resource discoveryEndpointUri
  /// [friendlyName] Friendly Name
  /// [id] Fully qualified resource ID for the resource. E.g. "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}"
  /// [identity] Apply server with newly discovered ApplicationId if available.
  /// [lastHeartBeat] Registered Server last heart beat
  /// [lastOperationName] Resource Last Operation Name
  /// [lastWorkflowId] Registered Server lastWorkflowId
  /// [latestApplicationId] Latest Server Application Id discovered from the server. It is not yet applied.
  /// [managementEndpointUri] Management Endpoint Uri
  /// [monitoringConfiguration] Monitoring Configuration
  /// [monitoringEndpointUri] Telemetry Endpoint Uri
  /// [name] The name of the resource
  /// [provisioningState] Registered Server Provisioning State
  /// [resourceLocation] Resource Location
  /// [serverCertificate] Registered Server Certificate
  /// [serverId] Registered Server serverId
  /// [serverManagementErrorCode] Registered Server Management Error Code
  /// [serverName] Server name
  /// [serverOSVersion] Registered Server OS Version
  /// [serverRole] Registered Server serverRole
  /// [serviceLocation] Service Location
  /// [storageSyncServiceUid] Registered Server storageSyncServiceUid
  /// [systemData] Azure Resource Manager metadata containing createdBy and modifiedBy information.
  /// [type] The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  const GetRegisteredServerResult({
    this.activeAuthType,
    this.agentVersion,
    this.agentVersionExpirationDate,
    this.agentVersionStatus,
    this.applicationId,
    this.azureApiVersion,
    this.clusterId,
    this.clusterName,
    this.discoveryEndpointUri,
    this.friendlyName,
    this.id,
    this.identity,
    this.lastHeartBeat,
    this.lastOperationName,
    this.lastWorkflowId,
    this.latestApplicationId,
    this.managementEndpointUri,
    this.monitoringConfiguration,
    this.monitoringEndpointUri,
    this.name,
    this.provisioningState,
    this.resourceLocation,
    this.serverCertificate,
    this.serverId,
    this.serverManagementErrorCode,
    this.serverName,
    this.serverOSVersion,
    this.serverRole,
    this.serviceLocation,
    this.storageSyncServiceUid,
    this.systemData,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'activeAuthType': ?activeAuthType,
      'agentVersion': ?agentVersion,
      'agentVersionExpirationDate': ?agentVersionExpirationDate,
      'agentVersionStatus': ?agentVersionStatus,
      'applicationId': ?applicationId,
      'azureApiVersion': ?azureApiVersion,
      'clusterId': ?clusterId,
      'clusterName': ?clusterName,
      'discoveryEndpointUri': ?discoveryEndpointUri,
      'friendlyName': ?friendlyName,
      'id': ?id,
      'identity': ?identity,
      'lastHeartBeat': ?lastHeartBeat,
      'lastOperationName': ?lastOperationName,
      'lastWorkflowId': ?lastWorkflowId,
      'latestApplicationId': ?latestApplicationId,
      'managementEndpointUri': ?managementEndpointUri,
      'monitoringConfiguration': ?monitoringConfiguration,
      'monitoringEndpointUri': ?monitoringEndpointUri,
      'name': ?name,
      'provisioningState': ?provisioningState,
      'resourceLocation': ?resourceLocation,
      'serverCertificate': ?serverCertificate,
      'serverId': ?serverId,
      'serverManagementErrorCode': ?serverManagementErrorCode,
      'serverName': ?serverName,
      'serverOSVersion': ?serverOSVersion,
      'serverRole': ?serverRole,
      'serviceLocation': ?serviceLocation,
      'storageSyncServiceUid': ?storageSyncServiceUid,
      'systemData': ?systemData?.toMap(),
      'type': ?type,
    };
  }

  factory GetRegisteredServerResult.fromMap(Map<String, dynamic> map) {
    return GetRegisteredServerResult(
      activeAuthType: (() { final guardedValue = map['activeAuthType']; if (guardedValue == null) return null; return guardedValue as String; })(),
      agentVersion: (() { final guardedValue = map['agentVersion']; if (guardedValue == null) return null; return guardedValue as String; })(),
      agentVersionExpirationDate: (() { final guardedValue = map['agentVersionExpirationDate']; if (guardedValue == null) return null; return guardedValue as String; })(),
      agentVersionStatus: (() { final guardedValue = map['agentVersionStatus']; if (guardedValue == null) return null; return guardedValue as String; })(),
      applicationId: (() { final guardedValue = map['applicationId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      azureApiVersion: (() { final guardedValue = map['azureApiVersion']; if (guardedValue == null) return null; return guardedValue as String; })(),
      clusterId: (() { final guardedValue = map['clusterId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      clusterName: (() { final guardedValue = map['clusterName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      discoveryEndpointUri: (() { final guardedValue = map['discoveryEndpointUri']; if (guardedValue == null) return null; return guardedValue as String; })(),
      friendlyName: (() { final guardedValue = map['friendlyName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      identity: (() { final guardedValue = map['identity']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      lastHeartBeat: (() { final guardedValue = map['lastHeartBeat']; if (guardedValue == null) return null; return guardedValue as String; })(),
      lastOperationName: (() { final guardedValue = map['lastOperationName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      lastWorkflowId: (() { final guardedValue = map['lastWorkflowId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      latestApplicationId: (() { final guardedValue = map['latestApplicationId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      managementEndpointUri: (() { final guardedValue = map['managementEndpointUri']; if (guardedValue == null) return null; return guardedValue as String; })(),
      monitoringConfiguration: (() { final guardedValue = map['monitoringConfiguration']; if (guardedValue == null) return null; return guardedValue as String; })(),
      monitoringEndpointUri: (() { final guardedValue = map['monitoringEndpointUri']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      provisioningState: (() { final guardedValue = map['provisioningState']; if (guardedValue == null) return null; return guardedValue as String; })(),
      resourceLocation: (() { final guardedValue = map['resourceLocation']; if (guardedValue == null) return null; return guardedValue as String; })(),
      serverCertificate: (() { final guardedValue = map['serverCertificate']; if (guardedValue == null) return null; return guardedValue as String; })(),
      serverId: (() { final guardedValue = map['serverId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      serverManagementErrorCode: (() { final guardedValue = map['serverManagementErrorCode']; if (guardedValue == null) return null; return ((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue); })(),
      serverName: (() { final guardedValue = map['serverName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      serverOSVersion: (() { final guardedValue = map['serverOSVersion']; if (guardedValue == null) return null; return guardedValue as String; })(),
      serverRole: (() { final guardedValue = map['serverRole']; if (guardedValue == null) return null; return guardedValue as String; })(),
      serviceLocation: (() { final guardedValue = map['serviceLocation']; if (guardedValue == null) return null; return guardedValue as String; })(),
      storageSyncServiceUid: (() { final guardedValue = map['storageSyncServiceUid']; if (guardedValue == null) return null; return guardedValue as String; })(),
      systemData: (() { final guardedValue = map['systemData']; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
