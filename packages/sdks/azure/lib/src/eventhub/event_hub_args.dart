// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'event_hub_capture_description.dart';
import 'event_hub_retention_description.dart';

/// {@template pulumi_eventhub_event_hub_event_hub_args_doc}
/// The set of arguments for EventHub.
/// {@endtemplate}
/// {@macro pulumi_eventhub_event_hub_event_hub_args_doc}
class EventHubArgs {
  /// A `capture_description` block as defined below.
  final pulumi.Input<EventHubCaptureDescription>? captureDescription;
  /// Specifies the number of days to retain the events for this Event Hub.
  ///
  /// > **Note:** When using a dedicated Event Hubs cluster, maximum value of `message_retention` is 90 days. When using a shared parent EventHub Namespace, maximum value is 7 days; or 1 day when using a Basic SKU for the shared parent EventHub Namespace.
  final pulumi.Input<int>? messageRetention;
  /// Specifies the name of the EventHub resource. Changing this forces a new resource to be created.
  final pulumi.Input<String>? name;
  /// Specifies the ID of the EventHub Namespace.
  final pulumi.Input<String>? namespaceId;
  final pulumi.Input<String>? namespaceName;
  /// Specifies the current number of shards on the Event Hub.
  ///
  /// > **Note:** When using a shared parent EventHub Namespace, `partition_count` cannot be changed unless the Eventhub Namespace SKU is `Premium`. When using a dedicated Event Hubs cluster, this restriction doesn't apply. In either case though, the `partition_count` cannot be decreased.
  ///
  /// > **Note:** When using a dedicated Event Hubs cluster, maximum value of `partition_count` is 1024. When using a shared parent EventHub Namespace, maximum value is 32.
  final pulumi.Input<int> partitionCount;
  final pulumi.Input<String>? resourceGroupName;
  /// A `retention_description` block as defined below.
  final pulumi.Input<EventHubRetentionDescription>? retentionDescription;
  /// Specifies the status of the Event Hub resource. Possible values are `Active`, `Disabled` and `SendDisabled`. Defaults to `Active`.
  final pulumi.Input<String>? status;

  /// Creates a new [EventHubArgs].
  /// [captureDescription] A `capture_description` block as defined below.
  /// [messageRetention] Specifies the number of days to retain the events for this Event Hub.
  /// [name] Specifies the name of the EventHub resource. Changing this forces a new resource to be created.
  /// [namespaceId] Specifies the ID of the EventHub Namespace.
  /// [namespaceName] Optional.
  /// [partitionCount] Specifies the current number of shards on the Event Hub.
  /// [resourceGroupName] Optional.
  /// [retentionDescription] A `retention_description` block as defined below.
  /// [status] Specifies the status of the Event Hub resource. Possible values are `Active`, `Disabled` and `SendDisabled`. Defaults to `Active`.
  EventHubArgs({
    pulumi.Output<EventHubCaptureDescription>? captureDescription,
    pulumi.Output<int>? messageRetention,
    pulumi.Output<String>? name,
    pulumi.Output<String>? namespaceId,
    pulumi.Output<String>? namespaceName,
    required pulumi.Output<int> partitionCount,
    pulumi.Output<String>? resourceGroupName,
    pulumi.Output<EventHubRetentionDescription>? retentionDescription,
    pulumi.Output<String>? status,
  }) :
      captureDescription = pulumi.Input.asOptionalInput<EventHubCaptureDescription>(captureDescription),
      messageRetention = pulumi.Input.asOptionalInput<int>(messageRetention),
      name = pulumi.Input.asOptionalInput<String>(name),
      namespaceId = pulumi.Input.asOptionalInput<String>(namespaceId),
      namespaceName = pulumi.Input.asOptionalInput<String>(namespaceName),
      partitionCount = pulumi.Input.asInput<int>(partitionCount),
      resourceGroupName = pulumi.Input.asOptionalInput<String>(resourceGroupName),
      retentionDescription = pulumi.Input.asOptionalInput<EventHubRetentionDescription>(retentionDescription),
      status = pulumi.Input.asOptionalInput<String>(status);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'captureDescription': ?pulumi.Input.mapOptionalInputValue<EventHubCaptureDescription, Map<String, dynamic>>(captureDescription, (value) => value.toMap()),
      'messageRetention': ?messageRetention,
      'name': ?name,
      'namespaceId': ?namespaceId,
      'namespaceName': ?namespaceName,
      'partitionCount': partitionCount,
      'resourceGroupName': ?resourceGroupName,
      'retentionDescription': ?pulumi.Input.mapOptionalInputValue<EventHubRetentionDescription, Map<String, dynamic>>(retentionDescription, (value) => value.toMap()),
      'status': ?status,
    };
  }

  factory EventHubArgs.fromMap(Map<String, dynamic> map) {
    return EventHubArgs(
      captureDescription: map['captureDescription'] == null ? null : pulumi.Output.create<EventHubCaptureDescription>(EventHubCaptureDescription.fromMap((map['captureDescription'] as Map).cast<String, dynamic>())),
      messageRetention: map['messageRetention'] == null ? null : pulumi.Output.create<int>(map['messageRetention'] as int),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      namespaceId: map['namespaceId'] == null ? null : pulumi.Output.create<String>(map['namespaceId'] as String),
      namespaceName: map['namespaceName'] == null ? null : pulumi.Output.create<String>(map['namespaceName'] as String),
      partitionCount: pulumi.Output.create<int>(map['partitionCount'] as int),
      resourceGroupName: map['resourceGroupName'] == null ? null : pulumi.Output.create<String>(map['resourceGroupName'] as String),
      retentionDescription: map['retentionDescription'] == null ? null : pulumi.Output.create<EventHubRetentionDescription>(EventHubRetentionDescription.fromMap((map['retentionDescription'] as Map).cast<String, dynamic>())),
      status: map['status'] == null ? null : pulumi.Output.create<String>(map['status'] as String),
    );
  }
}

