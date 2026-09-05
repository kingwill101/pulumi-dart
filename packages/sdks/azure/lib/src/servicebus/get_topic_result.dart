// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getTopic.
class GetTopicResult {
  /// The ISO 8601 timespan duration of the idle interval after which the Topic is automatically deleted, minimum of 5 minutes.
  final String? autoDeleteOnIdle;
  /// Boolean flag which controls if server-side batched operations are enabled.
  final bool? batchedOperationsEnabled;
  /// The ISO 8601 timespan duration of TTL of messages sent to this topic if no TTL value is set on the message itself.
  final String? defaultMessageTtl;
  /// The ISO 8601 timespan duration during which duplicates can be detected.
  final String? duplicateDetectionHistoryTimeWindow;
  final bool? enableBatchedOperations;
  final bool? enableExpress;
  final bool? enablePartitioning;
  /// Boolean flag which controls whether Express Entities are enabled. An express topic holds a message in memory temporarily before writing it to persistent storage.
  final bool? expressEnabled;
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  /// Integer value which controls the size of memory allocated for the topic. For supported values see the "Queue/topic size" section of [this document](https://docs.microsoft.com/azure/service-bus-messaging/service-bus-quotas).
  final int? maxSizeInMegabytes;
  final String? name;
  final String? namespaceId;
  final String? namespaceName;
  /// Boolean flag which controls whether to enable the topic to be partitioned across multiple message brokers.
  final bool? partitioningEnabled;
  /// Boolean flag which controls whether the Topic requires duplicate detection.
  final bool? requiresDuplicateDetection;
  final String? resourceGroupName;
  /// The Status of the Service Bus Topic. Acceptable values are Active or Disabled.
  final String? status;
  /// Boolean flag which controls whether the Topic supports ordering.
  final bool? supportOrdering;

  /// Creates a new [GetTopicResult].
  /// [autoDeleteOnIdle] The ISO 8601 timespan duration of the idle interval after which the Topic is automatically deleted, minimum of 5 minutes.
  /// [batchedOperationsEnabled] Boolean flag which controls if server-side batched operations are enabled.
  /// [defaultMessageTtl] The ISO 8601 timespan duration of TTL of messages sent to this topic if no TTL value is set on the message itself.
  /// [duplicateDetectionHistoryTimeWindow] The ISO 8601 timespan duration during which duplicates can be detected.
  /// [enableBatchedOperations] Optional.
  /// [enableExpress] Optional.
  /// [enablePartitioning] Optional.
  /// [expressEnabled] Boolean flag which controls whether Express Entities are enabled. An express topic holds a message in memory temporarily before writing it to persistent storage.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [maxSizeInMegabytes] Integer value which controls the size of memory allocated for the topic. For supported values see the "Queue/topic size" section of [this document](https://docs.microsoft.com/azure/service-bus-messaging/service-bus-quotas).
  /// [name] Optional.
  /// [namespaceId] Optional.
  /// [namespaceName] Optional.
  /// [partitioningEnabled] Boolean flag which controls whether to enable the topic to be partitioned across multiple message brokers.
  /// [requiresDuplicateDetection] Boolean flag which controls whether the Topic requires duplicate detection.
  /// [resourceGroupName] Optional.
  /// [status] The Status of the Service Bus Topic. Acceptable values are Active or Disabled.
  /// [supportOrdering] Boolean flag which controls whether the Topic supports ordering.
  const GetTopicResult({
    this.autoDeleteOnIdle,
    this.batchedOperationsEnabled,
    this.defaultMessageTtl,
    this.duplicateDetectionHistoryTimeWindow,
    this.enableBatchedOperations,
    this.enableExpress,
    this.enablePartitioning,
    this.expressEnabled,
    this.id,
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
      'duplicateDetectionHistoryTimeWindow': ?duplicateDetectionHistoryTimeWindow,
      'enableBatchedOperations': ?enableBatchedOperations,
      'enableExpress': ?enableExpress,
      'enablePartitioning': ?enablePartitioning,
      'expressEnabled': ?expressEnabled,
      'id': ?id,
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

  factory GetTopicResult.fromMap(Map<String, dynamic> map) {
    return GetTopicResult(
      autoDeleteOnIdle: (() { final guardedValue = map['autoDeleteOnIdle']; if (guardedValue == null) return null; return guardedValue as String; })(),
      batchedOperationsEnabled: (() { final guardedValue = map['batchedOperationsEnabled']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      defaultMessageTtl: (() { final guardedValue = map['defaultMessageTtl']; if (guardedValue == null) return null; return guardedValue as String; })(),
      duplicateDetectionHistoryTimeWindow: (() { final guardedValue = map['duplicateDetectionHistoryTimeWindow']; if (guardedValue == null) return null; return guardedValue as String; })(),
      enableBatchedOperations: (() { final guardedValue = map['enableBatchedOperations']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      enableExpress: (() { final guardedValue = map['enableExpress']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      enablePartitioning: (() { final guardedValue = map['enablePartitioning']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      expressEnabled: (() { final guardedValue = map['expressEnabled']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      maxSizeInMegabytes: (() { final guardedValue = map['maxSizeInMegabytes']; if (guardedValue == null) return null; return (guardedValue as num).toInt(); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      namespaceId: (() { final guardedValue = map['namespaceId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      namespaceName: (() { final guardedValue = map['namespaceName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      partitioningEnabled: (() { final guardedValue = map['partitioningEnabled']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      requiresDuplicateDetection: (() { final guardedValue = map['requiresDuplicateDetection']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      resourceGroupName: (() { final guardedValue = map['resourceGroupName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return guardedValue as String; })(),
      supportOrdering: (() { final guardedValue = map['supportOrdering']; if (guardedValue == null) return null; return guardedValue as bool; })(),
    );
  }
}
