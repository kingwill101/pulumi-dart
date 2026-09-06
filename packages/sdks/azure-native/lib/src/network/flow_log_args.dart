// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'flow_log_format_parameters.dart';
import 'managed_service_identity.dart';
import 'retention_policy_parameters.dart';
import 'traffic_analytics_properties.dart';

/// {@template pulumi_network_flow_log_args_doc}
/// The set of arguments for FlowLog.
/// {@endtemplate}
/// {@macro pulumi_network_flow_log_args_doc}
class FlowLogArgs {
  /// Flag to enable/disable flow logging.
  final pulumi.Input<bool?>? enabled;
  /// Optional field to filter network traffic logs based on SrcIP, SrcPort, DstIP, DstPort, Protocol, Encryption, Direction and Action. If not specified, all network traffic will be logged.
  final pulumi.Input<String?>? enabledFilteringCriteria;
  /// Parameters that define the configuration of traffic analytics.
  final pulumi.Input<TrafficAnalyticsProperties?>? flowAnalyticsConfiguration;
  /// The name of the flow log.
  final pulumi.Input<String?>? flowLogName;
  /// Parameters that define the flow log format.
  final pulumi.Input<FlowLogFormatParameters?>? format;
  /// Resource ID.
  final pulumi.Input<String?>? id;
  /// FlowLog resource Managed Identity
  final pulumi.Input<ManagedServiceIdentity?>? identity;
  /// Resource location.
  final pulumi.Input<String?>? location;
  /// The name of the network watcher.
  final pulumi.Input<String> networkWatcherName;
  /// The name of the resource group.
  final pulumi.Input<String> resourceGroupName;
  /// Parameters that define the retention policy for flow log.
  final pulumi.Input<RetentionPolicyParameters?>? retentionPolicy;
  /// ID of the storage account which is used to store the flow log.
  final pulumi.Input<String> storageId;
  /// Resource tags.
  final pulumi.Input<Map<String, String>?>? tags;
  /// ID of network security group to which flow log will be applied.
  final pulumi.Input<String> targetResourceId;

  /// Creates a new [FlowLogArgs].
  /// [enabled] Flag to enable/disable flow logging.
  /// [enabledFilteringCriteria] Optional field to filter network traffic logs based on SrcIP, SrcPort, DstIP, DstPort, Protocol, Encryption, Direction and Action. If not specified, all network traffic will be logged.
  /// [flowAnalyticsConfiguration] Parameters that define the configuration of traffic analytics.
  /// [flowLogName] The name of the flow log.
  /// [format] Parameters that define the flow log format.
  /// [id] Resource ID.
  /// [identity] FlowLog resource Managed Identity
  /// [location] Resource location.
  /// [networkWatcherName] The name of the network watcher.
  /// [resourceGroupName] The name of the resource group.
  /// [retentionPolicy] Parameters that define the retention policy for flow log.
  /// [storageId] ID of the storage account which is used to store the flow log.
  /// [tags] Resource tags.
  /// [targetResourceId] ID of network security group to which flow log will be applied.
  const FlowLogArgs({
    this.enabled,
    this.enabledFilteringCriteria,
    this.flowAnalyticsConfiguration,
    this.flowLogName,
    this.format,
    this.id,
    this.identity,
    this.location,
    required this.networkWatcherName,
    required this.resourceGroupName,
    this.retentionPolicy,
    required this.storageId,
    this.tags,
    required this.targetResourceId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enabled': ?enabled,
      'enabledFilteringCriteria': ?enabledFilteringCriteria,
      'flowAnalyticsConfiguration': ?pulumi.Input.mapOptionalInputValue<TrafficAnalyticsProperties, Map<String, dynamic>>(flowAnalyticsConfiguration, (value) => value.toMap()),
      'flowLogName': ?flowLogName,
      'format': ?pulumi.Input.mapOptionalInputValue<FlowLogFormatParameters, Map<String, dynamic>>(format, (value) => value.toMap()),
      'id': ?id,
      'identity': ?pulumi.Input.mapOptionalInputValue<ManagedServiceIdentity, Map<String, dynamic>>(identity, (value) => value.toMap()),
      'location': ?location,
      'networkWatcherName': networkWatcherName,
      'resourceGroupName': resourceGroupName,
      'retentionPolicy': ?pulumi.Input.mapOptionalInputValue<RetentionPolicyParameters, Map<String, dynamic>>(retentionPolicy, (value) => value.toMap()),
      'storageId': storageId,
      'tags': ?tags,
      'targetResourceId': targetResourceId,
    };
  }

  factory FlowLogArgs.fromMap(Map<String, dynamic> map) {
    return FlowLogArgs(
      enabled: (() { final guardedValue = map['enabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      enabledFilteringCriteria: (() { final guardedValue = map['enabledFilteringCriteria']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      flowAnalyticsConfiguration: (() { final guardedValue = map['flowAnalyticsConfiguration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(TrafficAnalyticsProperties.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      flowLogName: (() { final guardedValue = map['flowLogName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      format: (() { final guardedValue = map['format']; if (guardedValue == null) return null; return pulumi.Input.fromValue(FlowLogFormatParameters.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      identity: (() { final guardedValue = map['identity']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ManagedServiceIdentity.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      networkWatcherName: pulumi.Input.fromValue(map['networkWatcherName'] as String),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      retentionPolicy: (() { final guardedValue = map['retentionPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(RetentionPolicyParameters.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      storageId: pulumi.Input.fromValue(map['storageId'] as String),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      targetResourceId: pulumi.Input.fromValue(map['targetResourceId'] as String),
    );
  }
}
