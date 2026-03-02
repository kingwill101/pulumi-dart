// ignore_for_file: unused_element, unnecessary_cast

import 'credentials_response.dart';
import 'proxy_resource_response_system_data.dart';

/// Result data returned by getKafkaConfiguration.
class GetKafkaConfigurationResult {
  /// The Azure API version of the resource.
  final String azureApiVersion;
  /// Consumer group for hook event hub.
  final String? consumerGroup;
  /// Credentials to access the event streaming service attached to the purview account.
  final CredentialsResponse? credentials;
  /// Optional partition Id for notification event hub. If not set, all partitions will be leveraged.
  final String? eventHubPartitionId;
  final String? eventHubResourceId;
  /// The event hub type.
  final String? eventHubType;
  /// The state of the event streaming service
  final String? eventStreamingState;
  /// The event streaming service type
  final String? eventStreamingType;
  /// Gets or sets the identifier.
  final String id;
  /// Gets or sets the name.
  final String name;
  /// Metadata pertaining to creation and last modification of the resource.
  final ProxyResourceResponseSystemData systemData;
  /// Gets or sets the type.
  final String type;

  /// Creates a new [GetKafkaConfigurationResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [consumerGroup] Consumer group for hook event hub.
  /// [credentials] Credentials to access the event streaming service attached to the purview account.
  /// [eventHubPartitionId] Optional partition Id for notification event hub. If not set, all partitions will be leveraged.
  /// [eventHubResourceId] Optional.
  /// [eventHubType] The event hub type.
  /// [eventStreamingState] The state of the event streaming service
  /// [eventStreamingType] The event streaming service type
  /// [id] Gets or sets the identifier.
  /// [name] Gets or sets the name.
  /// [systemData] Metadata pertaining to creation and last modification of the resource.
  /// [type] Gets or sets the type.
  GetKafkaConfigurationResult({
    required this.azureApiVersion,
    this.consumerGroup,
    this.credentials,
    this.eventHubPartitionId,
    this.eventHubResourceId,
    this.eventHubType,
    this.eventStreamingState,
    this.eventStreamingType,
    required this.id,
    required this.name,
    required this.systemData,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': azureApiVersion,
      'consumerGroup': ?consumerGroup,
      'credentials': ?credentials == null ? null : credentials!.toMap(),
      'eventHubPartitionId': ?eventHubPartitionId,
      'eventHubResourceId': ?eventHubResourceId,
      'eventHubType': ?eventHubType,
      'eventStreamingState': ?eventStreamingState,
      'eventStreamingType': ?eventStreamingType,
      'id': id,
      'name': name,
      'systemData': systemData.toMap(),
      'type': type,
    };
  }

  factory GetKafkaConfigurationResult.fromMap(Map<String, dynamic> map) {
    return GetKafkaConfigurationResult(
      azureApiVersion: map['azureApiVersion'] as String,
      consumerGroup: map['consumerGroup'] == null ? null : map['consumerGroup']! as String,
      credentials: map['credentials'] == null ? null : CredentialsResponse.fromMap((map['credentials']! as Map).cast<String, dynamic>()),
      eventHubPartitionId: map['eventHubPartitionId'] == null ? null : map['eventHubPartitionId']! as String,
      eventHubResourceId: map['eventHubResourceId'] == null ? null : map['eventHubResourceId']! as String,
      eventHubType: map['eventHubType'] == null ? null : map['eventHubType']! as String,
      eventStreamingState: map['eventStreamingState'] == null ? null : map['eventStreamingState']! as String,
      eventStreamingType: map['eventStreamingType'] == null ? null : map['eventStreamingType']! as String,
      id: map['id'] as String,
      name: map['name'] as String,
      systemData: ProxyResourceResponseSystemData.fromMap((map['systemData'] as Map).cast<String, dynamic>()),
      type: map['type'] as String,
    );
  }
}

