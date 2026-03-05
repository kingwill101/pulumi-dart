// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'credentials.dart';

/// {@template pulumi_purview_kafka_configuration_args_doc}
/// The set of arguments for KafkaConfiguration.
/// {@endtemplate}
/// {@macro pulumi_purview_kafka_configuration_args_doc}
class KafkaConfigurationArgs {
  /// The name of the account.
  final pulumi.Input<String> accountName;
  /// Consumer group for hook event hub.
  final pulumi.Input<String>? consumerGroup;
  /// Credentials to access the event streaming service attached to the purview account.
  final pulumi.Input<Credentials>? credentials;
  /// Optional partition Id for notification event hub. If not set, all partitions will be leveraged.
  final pulumi.Input<String>? eventHubPartitionId;
  final pulumi.Input<String>? eventHubResourceId;
  /// The event hub type.
  final pulumi.Input<String>? eventHubType;
  /// The state of the event streaming service
  final pulumi.Input<String>? eventStreamingState;
  /// The event streaming service type
  final pulumi.Input<String>? eventStreamingType;
  /// The kafka configuration name.
  final pulumi.Input<String>? kafkaConfigurationName;
  /// The resource group name.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [KafkaConfigurationArgs].
  /// [accountName] The name of the account.
  /// [consumerGroup] Consumer group for hook event hub.
  /// [credentials] Credentials to access the event streaming service attached to the purview account.
  /// [eventHubPartitionId] Optional partition Id for notification event hub. If not set, all partitions will be leveraged.
  /// [eventHubResourceId] Optional.
  /// [eventHubType] The event hub type.
  /// [eventStreamingState] The state of the event streaming service
  /// [eventStreamingType] The event streaming service type
  /// [kafkaConfigurationName] The kafka configuration name.
  /// [resourceGroupName] The resource group name.
  KafkaConfigurationArgs({
    required this.accountName,
    this.consumerGroup,
    this.credentials,
    this.eventHubPartitionId,
    this.eventHubResourceId,
    this.eventHubType,
    this.eventStreamingState,
    this.eventStreamingType,
    this.kafkaConfigurationName,
    required this.resourceGroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountName': accountName,
      'consumerGroup': ?consumerGroup,
      'credentials': ?pulumi.Input.mapOptionalInputValue<Credentials, Map<String, dynamic>>(credentials, (value) => value.toMap()),
      'eventHubPartitionId': ?eventHubPartitionId,
      'eventHubResourceId': ?eventHubResourceId,
      'eventHubType': ?eventHubType,
      'eventStreamingState': ?eventStreamingState,
      'eventStreamingType': ?eventStreamingType,
      'kafkaConfigurationName': ?kafkaConfigurationName,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory KafkaConfigurationArgs.fromMap(Map<String, dynamic> map) {
    return KafkaConfigurationArgs(
      accountName: pulumi.Input.fromValue(map['accountName'] as String),
      consumerGroup: (() { final guardedValue = map['consumerGroup']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      credentials: (() { final guardedValue = map['credentials']; if (guardedValue == null) return null; return pulumi.Input.fromValue(Credentials.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      eventHubPartitionId: (() { final guardedValue = map['eventHubPartitionId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      eventHubResourceId: (() { final guardedValue = map['eventHubResourceId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      eventHubType: (() { final guardedValue = map['eventHubType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      eventStreamingState: (() { final guardedValue = map['eventStreamingState']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      eventStreamingType: (() { final guardedValue = map['eventStreamingType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      kafkaConfigurationName: (() { final guardedValue = map['kafkaConfigurationName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
    );
  }
}

