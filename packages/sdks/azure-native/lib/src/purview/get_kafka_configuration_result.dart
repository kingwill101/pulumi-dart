// ignore_for_file: unused_element, unnecessary_cast

import 'credentials_response.dart';
import 'system_data_response.dart';

/// Result data returned by getKafkaConfiguration.
class GetKafkaConfigurationResult {
  /// The Azure API version of the resource.
  final String? azureApiVersion;
  /// Consumer group for hook event hub.
  final String? consumerGroup;
  /// Credentials to access the event streaming service attached to the purview account.
  final CredentialsResponse? credentials;
  /// Optional partition Id for notification event hub. If not set, all partitions will be leveraged.
  final String? eventHubPartitionId;
  /// A type definition that refers the id to an Azure Resource Manager resource.
  final String? eventHubResourceId;
  /// The event hub type.
  final String? eventHubType;
  /// The state of the event streaming service
  final String? eventStreamingState;
  /// The event streaming service type
  final String? eventStreamingType;
  /// Fully qualified resource ID for the resource. Ex - /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}
  final String? id;
  /// The name of the resource
  final String? name;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  final SystemDataResponse? systemData;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  final String? type;

  /// Creates a new [GetKafkaConfigurationResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [consumerGroup] Consumer group for hook event hub.
  /// [credentials] Credentials to access the event streaming service attached to the purview account.
  /// [eventHubPartitionId] Optional partition Id for notification event hub. If not set, all partitions will be leveraged.
  /// [eventHubResourceId] A type definition that refers the id to an Azure Resource Manager resource.
  /// [eventHubType] The event hub type.
  /// [eventStreamingState] The state of the event streaming service
  /// [eventStreamingType] The event streaming service type
  /// [id] Fully qualified resource ID for the resource. Ex - /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}
  /// [name] The name of the resource
  /// [systemData] Azure Resource Manager metadata containing createdBy and modifiedBy information.
  /// [type] The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  GetKafkaConfigurationResult({
    this.azureApiVersion,
    this.consumerGroup,
    this.credentials,
    this.eventHubPartitionId,
    this.eventHubResourceId,
    this.eventHubType,
    String? eventStreamingState,
    String? eventStreamingType,
    this.id,
    this.name,
    this.systemData,
    this.type,
  }) : eventStreamingState = eventStreamingState ?? 'Enabled', eventStreamingType = eventStreamingType ?? 'None';

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': ?azureApiVersion,
      'consumerGroup': ?consumerGroup,
      'credentials': ?credentials?.toMap(),
      'eventHubPartitionId': ?eventHubPartitionId,
      'eventHubResourceId': ?eventHubResourceId,
      'eventHubType': ?eventHubType,
      'eventStreamingState': ?eventStreamingState,
      'eventStreamingType': ?eventStreamingType,
      'id': ?id,
      'name': ?name,
      'systemData': ?systemData?.toMap(),
      'type': ?type,
    };
  }

  factory GetKafkaConfigurationResult.fromMap(Map<String, dynamic> map) {
    return GetKafkaConfigurationResult(
      azureApiVersion: (() { final guardedValue = map['azureApiVersion']; if (guardedValue == null) return null; return guardedValue as String; })(),
      consumerGroup: (() { final guardedValue = map['consumerGroup']; if (guardedValue == null) return null; return guardedValue as String; })(),
      credentials: (() { final guardedValue = map['credentials']; if (guardedValue == null) return null; return CredentialsResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      eventHubPartitionId: (() { final guardedValue = map['eventHubPartitionId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      eventHubResourceId: (() { final guardedValue = map['eventHubResourceId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      eventHubType: (() { final guardedValue = map['eventHubType']; if (guardedValue == null) return null; return guardedValue as String; })(),
      eventStreamingState: (() { final guardedValue = map['eventStreamingState']; if (guardedValue == null) return null; return guardedValue as String; })(),
      eventStreamingType: (() { final guardedValue = map['eventStreamingType']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      systemData: (() { final guardedValue = map['systemData']; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
