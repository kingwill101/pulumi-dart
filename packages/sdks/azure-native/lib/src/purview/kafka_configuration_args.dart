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
    required pulumi.Output<String> accountName,
    pulumi.Output<String>? consumerGroup,
    pulumi.Output<Credentials>? credentials,
    pulumi.Output<String>? eventHubPartitionId,
    pulumi.Output<String>? eventHubResourceId,
    pulumi.Output<String>? eventHubType,
    pulumi.Output<String>? eventStreamingState,
    pulumi.Output<String>? eventStreamingType,
    pulumi.Output<String>? kafkaConfigurationName,
    required pulumi.Output<String> resourceGroupName,
  }) :
      accountName = pulumi.Input.asInput<String>(accountName),
      consumerGroup = pulumi.Input.asOptionalInput<String>(consumerGroup),
      credentials = pulumi.Input.asOptionalInput<Credentials>(credentials),
      eventHubPartitionId = pulumi.Input.asOptionalInput<String>(eventHubPartitionId),
      eventHubResourceId = pulumi.Input.asOptionalInput<String>(eventHubResourceId),
      eventHubType = pulumi.Input.asOptionalInput<String>(eventHubType),
      eventStreamingState = pulumi.Input.asOptionalInput<String>(eventStreamingState),
      eventStreamingType = pulumi.Input.asOptionalInput<String>(eventStreamingType),
      kafkaConfigurationName = pulumi.Input.asOptionalInput<String>(kafkaConfigurationName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName);

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
      accountName: pulumi.Output.create<String>(map['accountName'] as String),
      consumerGroup: map['consumerGroup'] == null ? null : pulumi.Output.create<String>(map['consumerGroup'] as String),
      credentials: map['credentials'] == null ? null : pulumi.Output.create<Credentials>(Credentials.fromMap((map['credentials'] as Map).cast<String, dynamic>())),
      eventHubPartitionId: map['eventHubPartitionId'] == null ? null : pulumi.Output.create<String>(map['eventHubPartitionId'] as String),
      eventHubResourceId: map['eventHubResourceId'] == null ? null : pulumi.Output.create<String>(map['eventHubResourceId'] as String),
      eventHubType: map['eventHubType'] == null ? null : pulumi.Output.create<String>(map['eventHubType'] as String),
      eventStreamingState: map['eventStreamingState'] == null ? null : pulumi.Output.create<String>(map['eventStreamingState'] as String),
      eventStreamingType: map['eventStreamingType'] == null ? null : pulumi.Output.create<String>(map['eventStreamingType'] as String),
      kafkaConfigurationName: map['kafkaConfigurationName'] == null ? null : pulumi.Output.create<String>(map['kafkaConfigurationName'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
    );
  }
}

