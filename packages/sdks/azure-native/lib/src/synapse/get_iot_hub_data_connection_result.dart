// ignore_for_file: unused_element, unnecessary_cast

import 'system_data_response.dart';

/// Result data returned by getIotHubDataConnection.
class GetIotHubDataConnectionResult {
  /// The Azure API version of the resource.
  final String? azureApiVersion;
  /// The iot hub consumer group.
  final String? consumerGroup;
  /// The data format of the message. Optionally the data format can be added to each message.
  final String? dataFormat;
  /// System properties of the iot hub
  final List<String>? eventSystemProperties;
  /// Fully qualified resource ID for the resource. Ex - /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}
  final String? id;
  /// The resource ID of the Iot hub to be used to create a data connection.
  final String? iotHubResourceId;
  /// Kind of the endpoint for the data connection
  /// Expected value is 'IotHub'.
  final String? kind;
  /// Resource location.
  final String? location;
  /// The mapping rule to be used to ingest the data. Optionally the mapping information can be added to each message.
  final String? mappingRuleName;
  /// The name of the resource
  final String? name;
  /// The provisioned state of the resource.
  final String? provisioningState;
  /// The name of the share access policy
  final String? sharedAccessPolicyName;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  final SystemDataResponse? systemData;
  /// The table where the data should be ingested. Optionally the table information can be added to each message.
  final String? tableName;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  final String? type;

  /// Creates a new [GetIotHubDataConnectionResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [consumerGroup] The iot hub consumer group.
  /// [dataFormat] The data format of the message. Optionally the data format can be added to each message.
  /// [eventSystemProperties] System properties of the iot hub
  /// [id] Fully qualified resource ID for the resource. Ex - /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}
  /// [iotHubResourceId] The resource ID of the Iot hub to be used to create a data connection.
  /// [kind] Kind of the endpoint for the data connection
  /// [location] Resource location.
  /// [mappingRuleName] The mapping rule to be used to ingest the data. Optionally the mapping information can be added to each message.
  /// [name] The name of the resource
  /// [provisioningState] The provisioned state of the resource.
  /// [sharedAccessPolicyName] The name of the share access policy
  /// [systemData] Azure Resource Manager metadata containing createdBy and modifiedBy information.
  /// [tableName] The table where the data should be ingested. Optionally the table information can be added to each message.
  /// [type] The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  const GetIotHubDataConnectionResult({
    this.azureApiVersion,
    this.consumerGroup,
    this.dataFormat,
    this.eventSystemProperties,
    this.id,
    this.iotHubResourceId,
    this.kind,
    this.location,
    this.mappingRuleName,
    this.name,
    this.provisioningState,
    this.sharedAccessPolicyName,
    this.systemData,
    this.tableName,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': ?azureApiVersion,
      'consumerGroup': ?consumerGroup,
      'dataFormat': ?dataFormat,
      'eventSystemProperties': ?eventSystemProperties,
      'id': ?id,
      'iotHubResourceId': ?iotHubResourceId,
      'kind': ?kind,
      'location': ?location,
      'mappingRuleName': ?mappingRuleName,
      'name': ?name,
      'provisioningState': ?provisioningState,
      'sharedAccessPolicyName': ?sharedAccessPolicyName,
      'systemData': ?systemData?.toMap(),
      'tableName': ?tableName,
      'type': ?type,
    };
  }

  factory GetIotHubDataConnectionResult.fromMap(Map<String, dynamic> map) {
    return GetIotHubDataConnectionResult(
      azureApiVersion: (() { final guardedValue = map['azureApiVersion']; if (guardedValue == null) return null; return guardedValue as String; })(),
      consumerGroup: (() { final guardedValue = map['consumerGroup']; if (guardedValue == null) return null; return guardedValue as String; })(),
      dataFormat: (() { final guardedValue = map['dataFormat']; if (guardedValue == null) return null; return guardedValue as String; })(),
      eventSystemProperties: (() { final guardedValue = map['eventSystemProperties']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      iotHubResourceId: (() { final guardedValue = map['iotHubResourceId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      kind: (() { final guardedValue = map['kind']; if (guardedValue == null) return null; return guardedValue as String; })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return guardedValue as String; })(),
      mappingRuleName: (() { final guardedValue = map['mappingRuleName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      provisioningState: (() { final guardedValue = map['provisioningState']; if (guardedValue == null) return null; return guardedValue as String; })(),
      sharedAccessPolicyName: (() { final guardedValue = map['sharedAccessPolicyName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      systemData: (() { final guardedValue = map['systemData']; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      tableName: (() { final guardedValue = map['tableName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
