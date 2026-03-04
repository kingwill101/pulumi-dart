// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering Topic resources.
class TopicState {
  /// The ISO 8601 timespan duration of the idle interval after which the Topic is automatically deleted, minimum of 5 minutes. Defaults to `P10675199DT2H48M5.4775807S`.
  final pulumi.Input<String>? autoDeleteOnIdle;

  /// Boolean flag which controls if server-side batched operations are enabled.
  final pulumi.Input<bool>? batchedOperationsEnabled;

  /// The ISO 8601 timespan duration of TTL of messages sent to this topic if no TTL value is set on the message itself. Defaults to `P10675199DT2H48M5.4775807S`.
  final pulumi.Input<String>? defaultMessageTtl;

  /// The ISO 8601 timespan duration during which duplicates can be detected. Defaults to `PT10M` (10 Minutes).
  final pulumi.Input<String>? duplicateDetectionHistoryTimeWindow;

  /// Boolean flag which controls whether Express Entities are enabled. An express topic holds a message in memory temporarily before writing it to persistent storage.
  final pulumi.Input<bool>? expressEnabled;

  /// Integer value which controls the maximum size of a message allowed on the topic for Premium SKU. For supported values see the "Large messages support" section of [this document](https://docs.microsoft.com/azure/service-bus-messaging/service-bus-premium-messaging#large-messages-support-preview). Defaults to `256`.
  final pulumi.Input<int>? maxMessageSizeInKilobytes;

  /// Integer value which controls the size of memory allocated for the topic. For supported values see the "Queue/topic size" section of [this document](https://docs.microsoft.com/azure/service-bus-messaging/service-bus-quotas). Defaults to `5120`.
  final pulumi.Input<int>? maxSizeInMegabytes;

  /// Specifies the name of the ServiceBus Topic resource. Changing this forces a new resource to be created.
  final pulumi.Input<String>? name;

  /// The ID of the ServiceBus Namespace to create this topic in. Changing this forces a new resource to be created.
  final pulumi.Input<String>? namespaceId;
  final pulumi.Input<String>? namespaceName;

  /// Boolean flag which controls whether to enable the topic to be partitioned across multiple message brokers. Changing this forces a new resource to be created.
  ///
  /// &gt; **Note:** Partitioning is available at entity creation for all queues and topics in Basic or Standard SKUs. It is not available for the Premium messaging SKU, but any previously existing partitioned entities in Premium namespaces continue to work as expected. For premium namespaces, partitioning is available at namespace creation and all queues and topics in the partitioned namespace will be partitioned. Premium namespaces that have `premium_messaging_partitions` set to `1` are not partitioned. Please [see the documentation](https://docs.microsoft.com/azure/service-bus-messaging/service-bus-partitioning) for more information.
  final pulumi.Input<bool>? partitioningEnabled;

  /// Boolean flag which controls whether the Topic requires duplicate detection. Defaults to `false`. Changing this forces a new resource to be created.
  final pulumi.Input<bool>? requiresDuplicateDetection;
  final pulumi.Input<String>? resourceGroupName;

  /// The Status of the Service Bus Topic. Acceptable values are `Active` or `Disabled`. Defaults to `Active`.
  final pulumi.Input<String>? status;

  /// Boolean flag which controls whether the Topic supports ordering.
  final pulumi.Input<bool>? supportOrdering;

  /// Creates a new [TopicState].
  /// [autoDeleteOnIdle] The ISO 8601 timespan duration of the idle interval after which the Topic is automatically deleted, minimum of 5 minutes. Defaults to `P10675199DT2H48M5.4775807S`.
  /// [batchedOperationsEnabled] Boolean flag which controls if server-side batched operations are enabled.
  /// [defaultMessageTtl] The ISO 8601 timespan duration of TTL of messages sent to this topic if no TTL value is set on the message itself. Defaults to `P10675199DT2H48M5.4775807S`.
  /// [duplicateDetectionHistoryTimeWindow] The ISO 8601 timespan duration during which duplicates can be detected. Defaults to `PT10M` (10 Minutes).
  /// [expressEnabled] Boolean flag which controls whether Express Entities are enabled. An express topic holds a message in memory temporarily before writing it to persistent storage.
  /// [maxMessageSizeInKilobytes] Integer value which controls the maximum size of a message allowed on the topic for Premium SKU. For supported values see the "Large messages support" section of [this document](https://docs.microsoft.com/azure/service-bus-messaging/service-bus-premium-messaging#large-messages-support-preview). Defaults to `256`.
  /// [maxSizeInMegabytes] Integer value which controls the size of memory allocated for the topic. For supported values see the "Queue/topic size" section of [this document](https://docs.microsoft.com/azure/service-bus-messaging/service-bus-quotas). Defaults to `5120`.
  /// [name] Specifies the name of the ServiceBus Topic resource. Changing this forces a new resource to be created.
  /// [namespaceId] The ID of the ServiceBus Namespace to create this topic in. Changing this forces a new resource to be created.
  /// [namespaceName] Optional.
  /// [partitioningEnabled] Boolean flag which controls whether to enable the topic to be partitioned across multiple message brokers. Changing this forces a new resource to be created.
  /// [requiresDuplicateDetection] Boolean flag which controls whether the Topic requires duplicate detection. Defaults to `false`. Changing this forces a new resource to be created.
  /// [resourceGroupName] Optional.
  /// [status] The Status of the Service Bus Topic. Acceptable values are `Active` or `Disabled`. Defaults to `Active`.
  /// [supportOrdering] Boolean flag which controls whether the Topic supports ordering.
  TopicState({
    this.autoDeleteOnIdle,
    this.batchedOperationsEnabled,
    this.defaultMessageTtl,
    this.duplicateDetectionHistoryTimeWindow,
    this.expressEnabled,
    this.maxMessageSizeInKilobytes,
    this.maxSizeInMegabytes,
    this.name,
    this.namespaceId,
    this.namespaceName,
    this.partitioningEnabled,
    this.requiresDuplicateDetection,
    this.resourceGroupName,
    this.status,
    this.supportOrdering,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'autoDeleteOnIdle': ?autoDeleteOnIdle,
      'batchedOperationsEnabled': ?batchedOperationsEnabled,
      'defaultMessageTtl': ?defaultMessageTtl,
      'duplicateDetectionHistoryTimeWindow':
          ?duplicateDetectionHistoryTimeWindow,
      'expressEnabled': ?expressEnabled,
      'maxMessageSizeInKilobytes': ?maxMessageSizeInKilobytes,
      'maxSizeInMegabytes': ?maxSizeInMegabytes,
      'name': ?name,
      'namespaceId': ?namespaceId,
      'namespaceName': ?namespaceName,
      'partitioningEnabled': ?partitioningEnabled,
      'requiresDuplicateDetection': ?requiresDuplicateDetection,
      'resourceGroupName': ?resourceGroupName,
      'status': ?status,
      'supportOrdering': ?supportOrdering,
    };
  }

  factory TopicState.fromMap(Map<String, dynamic> map) {
    return TopicState(
      autoDeleteOnIdle: (() {
        final guardedValue = map['autoDeleteOnIdle'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      batchedOperationsEnabled: (() {
        final guardedValue = map['batchedOperationsEnabled'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      defaultMessageTtl: (() {
        final guardedValue = map['defaultMessageTtl'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      duplicateDetectionHistoryTimeWindow: (() {
        final guardedValue = map['duplicateDetectionHistoryTimeWindow'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      expressEnabled: (() {
        final guardedValue = map['expressEnabled'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      maxMessageSizeInKilobytes: (() {
        final guardedValue = map['maxMessageSizeInKilobytes'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      maxSizeInMegabytes: (() {
        final guardedValue = map['maxSizeInMegabytes'];
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
      partitioningEnabled: (() {
        final guardedValue = map['partitioningEnabled'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      requiresDuplicateDetection: (() {
        final guardedValue = map['requiresDuplicateDetection'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      resourceGroupName: (() {
        final guardedValue = map['resourceGroupName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      status: (() {
        final guardedValue = map['status'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      supportOrdering: (() {
        final guardedValue = map['supportOrdering'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
    );
  }
}
