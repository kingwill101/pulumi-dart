// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getTopic.
class GetTopicResult {
  /// The ISO 8601 timespan duration of the idle interval after which the Topic is automatically deleted, minimum of 5 minutes.
  final String autoDeleteOnIdle;
  /// Boolean flag which controls if server-side batched operations are enabled.
  final bool batchedOperationsEnabled;
  /// The ISO 8601 timespan duration of TTL of messages sent to this topic if no TTL value is set on the message itself.
  final String defaultMessageTtl;
  /// The ISO 8601 timespan duration during which duplicates can be detected.
  final String duplicateDetectionHistoryTimeWindow;
  final bool enableBatchedOperations;
  final bool enableExpress;
  final bool enablePartitioning;
  /// Boolean flag which controls whether Express Entities are enabled. An express topic holds a message in memory temporarily before writing it to persistent storage.
  final bool expressEnabled;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  /// Integer value which controls the size of memory allocated for the topic. For supported values see the "Queue/topic size" section of [this document](https://docs.microsoft.com/azure/service-bus-messaging/service-bus-quotas).
  final int maxSizeInMegabytes;
  final String name;
  final String? namespaceId;
  final String? namespaceName;
  /// Boolean flag which controls whether to enable the topic to be partitioned across multiple message brokers.
  final bool partitioningEnabled;
  /// Boolean flag which controls whether the Topic requires duplicate detection.
  final bool requiresDuplicateDetection;
  final String? resourceGroupName;
  /// The Status of the Service Bus Topic. Acceptable values are Active or Disabled.
  final String status;
  /// Boolean flag which controls whether the Topic supports ordering.
  final bool supportOrdering;

  /// Creates a new [GetTopicResult].
  /// [autoDeleteOnIdle] The ISO 8601 timespan duration of the idle interval after which the Topic is automatically deleted, minimum of 5 minutes.
  /// [batchedOperationsEnabled] Boolean flag which controls if server-side batched operations are enabled.
  /// [defaultMessageTtl] The ISO 8601 timespan duration of TTL of messages sent to this topic if no TTL value is set on the message itself.
  /// [duplicateDetectionHistoryTimeWindow] The ISO 8601 timespan duration during which duplicates can be detected.
  /// [enableBatchedOperations] Required.
  /// [enableExpress] Required.
  /// [enablePartitioning] Required.
  /// [expressEnabled] Boolean flag which controls whether Express Entities are enabled. An express topic holds a message in memory temporarily before writing it to persistent storage.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [maxSizeInMegabytes] Integer value which controls the size of memory allocated for the topic. For supported values see the "Queue/topic size" section of [this document](https://docs.microsoft.com/azure/service-bus-messaging/service-bus-quotas).
  /// [name] Required.
  /// [namespaceId] Optional.
  /// [namespaceName] Optional.
  /// [partitioningEnabled] Boolean flag which controls whether to enable the topic to be partitioned across multiple message brokers.
  /// [requiresDuplicateDetection] Boolean flag which controls whether the Topic requires duplicate detection.
  /// [resourceGroupName] Optional.
  /// [status] The Status of the Service Bus Topic. Acceptable values are Active or Disabled.
  /// [supportOrdering] Boolean flag which controls whether the Topic supports ordering.
  GetTopicResult({
    required this.autoDeleteOnIdle,
    required this.batchedOperationsEnabled,
    required this.defaultMessageTtl,
    required this.duplicateDetectionHistoryTimeWindow,
    required this.enableBatchedOperations,
    required this.enableExpress,
    required this.enablePartitioning,
    required this.expressEnabled,
    required this.id,
    required this.maxSizeInMegabytes,
    required this.name,
    this.namespaceId,
    this.namespaceName,
    required this.partitioningEnabled,
    required this.requiresDuplicateDetection,
    this.resourceGroupName,
    required this.status,
    required this.supportOrdering,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'autoDeleteOnIdle': autoDeleteOnIdle,
      'batchedOperationsEnabled': batchedOperationsEnabled,
      'defaultMessageTtl': defaultMessageTtl,
      'duplicateDetectionHistoryTimeWindow': duplicateDetectionHistoryTimeWindow,
      'enableBatchedOperations': enableBatchedOperations,
      'enableExpress': enableExpress,
      'enablePartitioning': enablePartitioning,
      'expressEnabled': expressEnabled,
      'id': id,
      'maxSizeInMegabytes': maxSizeInMegabytes,
      'name': name,
      'namespaceId': ?namespaceId,
      'namespaceName': ?namespaceName,
      'partitioningEnabled': partitioningEnabled,
      'requiresDuplicateDetection': requiresDuplicateDetection,
      'resourceGroupName': ?resourceGroupName,
      'status': status,
      'supportOrdering': supportOrdering,
    };
  }

  factory GetTopicResult.fromMap(Map<String, dynamic> map) {
    return GetTopicResult(
      autoDeleteOnIdle: map['autoDeleteOnIdle'] as String,
      batchedOperationsEnabled: map['batchedOperationsEnabled'] as bool,
      defaultMessageTtl: map['defaultMessageTtl'] as String,
      duplicateDetectionHistoryTimeWindow: map['duplicateDetectionHistoryTimeWindow'] as String,
      enableBatchedOperations: map['enableBatchedOperations'] as bool,
      enableExpress: map['enableExpress'] as bool,
      enablePartitioning: map['enablePartitioning'] as bool,
      expressEnabled: map['expressEnabled'] as bool,
      id: map['id'] as String,
      maxSizeInMegabytes: map['maxSizeInMegabytes'] as int,
      name: map['name'] as String,
      namespaceId: (() { final guardedValue = map['namespaceId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      namespaceName: (() { final guardedValue = map['namespaceName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      partitioningEnabled: map['partitioningEnabled'] as bool,
      requiresDuplicateDetection: map['requiresDuplicateDetection'] as bool,
      resourceGroupName: (() { final guardedValue = map['resourceGroupName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      status: map['status'] as String,
      supportOrdering: map['supportOrdering'] as bool,
    );
  }
}

