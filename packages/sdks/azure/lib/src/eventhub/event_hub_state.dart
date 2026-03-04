// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'event_hub_capture_description.dart';
import 'event_hub_retention_description.dart';

/// Input properties used for looking up and filtering EventHub resources.
class EventHubState {
  /// A `capture_description` block as defined below.
  final pulumi.Input<EventHubCaptureDescription>? captureDescription;

  /// Specifies the number of days to retain the events for this Event Hub.
  ///
  /// &gt; **Note:** When using a dedicated Event Hubs cluster, maximum value of `message_retention` is 90 days. When using a shared parent EventHub Namespace, maximum value is 7 days; or 1 day when using a Basic SKU for the shared parent EventHub Namespace.
  final pulumi.Input<int>? messageRetention;

  /// Specifies the name of the EventHub resource. Changing this forces a new resource to be created.
  final pulumi.Input<String>? name;

  /// Specifies the ID of the EventHub Namespace.
  final pulumi.Input<String>? namespaceId;
  final pulumi.Input<String>? namespaceName;

  /// Specifies the current number of shards on the Event Hub.
  ///
  /// &gt; **Note:** When using a shared parent EventHub Namespace, `partition_count` cannot be changed unless the Eventhub Namespace SKU is `Premium`. When using a dedicated Event Hubs cluster, this restriction doesn't apply. In either case though, the `partition_count` cannot be decreased.
  ///
  /// &gt; **Note:** When using a dedicated Event Hubs cluster, maximum value of `partition_count` is 1024. When using a shared parent EventHub Namespace, maximum value is 32.
  final pulumi.Input<int>? partitionCount;

  /// The identifiers for partitions created for Event Hubs.
  final pulumi.Input<List<String>>? partitionIds;
  final pulumi.Input<String>? resourceGroupName;

  /// A `retention_description` block as defined below.
  final pulumi.Input<EventHubRetentionDescription>? retentionDescription;

  /// Specifies the status of the Event Hub resource. Possible values are `Active`, `Disabled` and `SendDisabled`. Defaults to `Active`.
  final pulumi.Input<String>? status;

  /// Creates a new [EventHubState].
  /// [captureDescription] A `capture_description` block as defined below.
  /// [messageRetention] Specifies the number of days to retain the events for this Event Hub.
  /// [name] Specifies the name of the EventHub resource. Changing this forces a new resource to be created.
  /// [namespaceId] Specifies the ID of the EventHub Namespace.
  /// [namespaceName] Optional.
  /// [partitionCount] Specifies the current number of shards on the Event Hub.
  /// [partitionIds] The identifiers for partitions created for Event Hubs.
  /// [resourceGroupName] Optional.
  /// [retentionDescription] A `retention_description` block as defined below.
  /// [status] Specifies the status of the Event Hub resource. Possible values are `Active`, `Disabled` and `SendDisabled`. Defaults to `Active`.
  EventHubState({
    this.captureDescription,
    this.messageRetention,
    this.name,
    this.namespaceId,
    this.namespaceName,
    this.partitionCount,
    this.partitionIds,
    this.resourceGroupName,
    this.retentionDescription,
    this.status,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'captureDescription':
          ?pulumi.Input.mapOptionalInputValue<
            EventHubCaptureDescription,
            Map<String, dynamic>
          >(captureDescription, (value) => value.toMap()),
      'messageRetention': ?messageRetention,
      'name': ?name,
      'namespaceId': ?namespaceId,
      'namespaceName': ?namespaceName,
      'partitionCount': ?partitionCount,
      'partitionIds': ?partitionIds,
      'resourceGroupName': ?resourceGroupName,
      'retentionDescription':
          ?pulumi.Input.mapOptionalInputValue<
            EventHubRetentionDescription,
            Map<String, dynamic>
          >(retentionDescription, (value) => value.toMap()),
      'status': ?status,
    };
  }

  factory EventHubState.fromMap(Map<String, dynamic> map) {
    return EventHubState(
      captureDescription: (() {
        final guardedValue = map['captureDescription'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          EventHubCaptureDescription.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      messageRetention: (() {
        final guardedValue = map['messageRetention'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      name: (() {
        final guardedValue = map['name'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      namespaceId: (() {
        final guardedValue = map['namespaceId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      namespaceName: (() {
        final guardedValue = map['namespaceName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      partitionCount: (() {
        final guardedValue = map['partitionCount'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      partitionIds: (() {
        final guardedValue = map['partitionIds'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
      })(),
      resourceGroupName: (() {
        final guardedValue = map['resourceGroupName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      retentionDescription: (() {
        final guardedValue = map['retentionDescription'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          EventHubRetentionDescription.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      status: (() {
        final guardedValue = map['status'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
