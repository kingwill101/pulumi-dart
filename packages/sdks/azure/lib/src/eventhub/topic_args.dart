// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_eventhub_topic_topic_args_doc}
/// The set of arguments for Topic.
/// {@endtemplate}
/// {@macro pulumi_eventhub_topic_topic_args_doc}
class TopicArgs {
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
  final pulumi.Input<String> namespaceId;
  /// Boolean flag which controls whether to enable the topic to be partitioned across multiple message brokers. Changing this forces a new resource to be created.
  ///
  /// > **Note:** Partitioning is available at entity creation for all queues and topics in Basic or Standard SKUs. It is not available for the Premium messaging SKU, but any previously existing partitioned entities in Premium namespaces continue to work as expected. For premium namespaces, partitioning is available at namespace creation and all queues and topics in the partitioned namespace will be partitioned. Premium namespaces that have `premium_messaging_partitions` set to `1` are not partitioned. Please [see the documentation](https://docs.microsoft.com/azure/service-bus-messaging/service-bus-partitioning) for more information.
  final pulumi.Input<bool>? partitioningEnabled;
  /// Boolean flag which controls whether the Topic requires duplicate detection. Defaults to `false`. Changing this forces a new resource to be created.
  final pulumi.Input<bool>? requiresDuplicateDetection;
  /// The Status of the Service Bus Topic. Acceptable values are `Active` or `Disabled`. Defaults to `Active`.
  final pulumi.Input<String>? status;
  /// Boolean flag which controls whether the Topic supports ordering.
  final pulumi.Input<bool>? supportOrdering;

  /// Creates a new [TopicArgs].
  /// [autoDeleteOnIdle] The ISO 8601 timespan duration of the idle interval after which the Topic is automatically deleted, minimum of 5 minutes. Defaults to `P10675199DT2H48M5.4775807S`.
  /// [batchedOperationsEnabled] Boolean flag which controls if server-side batched operations are enabled.
  /// [defaultMessageTtl] The ISO 8601 timespan duration of TTL of messages sent to this topic if no TTL value is set on the message itself. Defaults to `P10675199DT2H48M5.4775807S`.
  /// [duplicateDetectionHistoryTimeWindow] The ISO 8601 timespan duration during which duplicates can be detected. Defaults to `PT10M` (10 Minutes).
  /// [expressEnabled] Boolean flag which controls whether Express Entities are enabled. An express topic holds a message in memory temporarily before writing it to persistent storage.
  /// [maxMessageSizeInKilobytes] Integer value which controls the maximum size of a message allowed on the topic for Premium SKU. For supported values see the "Large messages support" section of [this document](https://docs.microsoft.com/azure/service-bus-messaging/service-bus-premium-messaging#large-messages-support-preview). Defaults to `256`.
  /// [maxSizeInMegabytes] Integer value which controls the size of memory allocated for the topic. For supported values see the "Queue/topic size" section of [this document](https://docs.microsoft.com/azure/service-bus-messaging/service-bus-quotas). Defaults to `5120`.
  /// [name] Specifies the name of the ServiceBus Topic resource. Changing this forces a new resource to be created.
  /// [namespaceId] The ID of the ServiceBus Namespace to create this topic in. Changing this forces a new resource to be created.
  /// [partitioningEnabled] Boolean flag which controls whether to enable the topic to be partitioned across multiple message brokers. Changing this forces a new resource to be created.
  /// [requiresDuplicateDetection] Boolean flag which controls whether the Topic requires duplicate detection. Defaults to `false`. Changing this forces a new resource to be created.
  /// [status] The Status of the Service Bus Topic. Acceptable values are `Active` or `Disabled`. Defaults to `Active`.
  /// [supportOrdering] Boolean flag which controls whether the Topic supports ordering.
  TopicArgs({
    this.autoDeleteOnIdle,
    this.batchedOperationsEnabled,
    this.defaultMessageTtl,
    this.duplicateDetectionHistoryTimeWindow,
    this.expressEnabled,
    this.maxMessageSizeInKilobytes,
    this.maxSizeInMegabytes,
    this.name,
    required this.namespaceId,
    this.partitioningEnabled,
    this.requiresDuplicateDetection,
    this.status,
    this.supportOrdering,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'autoDeleteOnIdle': ?autoDeleteOnIdle,
      'batchedOperationsEnabled': ?batchedOperationsEnabled,
      'defaultMessageTtl': ?defaultMessageTtl,
      'duplicateDetectionHistoryTimeWindow': ?duplicateDetectionHistoryTimeWindow,
      'expressEnabled': ?expressEnabled,
      'maxMessageSizeInKilobytes': ?maxMessageSizeInKilobytes,
      'maxSizeInMegabytes': ?maxSizeInMegabytes,
      'name': ?name,
      'namespaceId': namespaceId,
      'partitioningEnabled': ?partitioningEnabled,
      'requiresDuplicateDetection': ?requiresDuplicateDetection,
      'status': ?status,
      'supportOrdering': ?supportOrdering,
    };
  }

  factory TopicArgs.fromMap(Map<String, dynamic> map) {
    return TopicArgs(
      autoDeleteOnIdle: map['autoDeleteOnIdle'] == null ? null : (map['autoDeleteOnIdle'] as String).input(),
      batchedOperationsEnabled: map['batchedOperationsEnabled'] == null ? null : (map['batchedOperationsEnabled'] as bool).input(),
      defaultMessageTtl: map['defaultMessageTtl'] == null ? null : (map['defaultMessageTtl'] as String).input(),
      duplicateDetectionHistoryTimeWindow: map['duplicateDetectionHistoryTimeWindow'] == null ? null : (map['duplicateDetectionHistoryTimeWindow'] as String).input(),
      expressEnabled: map['expressEnabled'] == null ? null : (map['expressEnabled'] as bool).input(),
      maxMessageSizeInKilobytes: map['maxMessageSizeInKilobytes'] == null ? null : (map['maxMessageSizeInKilobytes'] as int).input(),
      maxSizeInMegabytes: map['maxSizeInMegabytes'] == null ? null : (map['maxSizeInMegabytes'] as int).input(),
      name: map['name'] == null ? null : (map['name'] as String).input(),
      namespaceId: (map['namespaceId'] as String).input(),
      partitioningEnabled: map['partitioningEnabled'] == null ? null : (map['partitioningEnabled'] as bool).input(),
      requiresDuplicateDetection: map['requiresDuplicateDetection'] == null ? null : (map['requiresDuplicateDetection'] as bool).input(),
      status: map['status'] == null ? null : (map['status'] as String).input(),
      supportOrdering: map['supportOrdering'] == null ? null : (map['supportOrdering'] as bool).input(),
    );
  }
}

