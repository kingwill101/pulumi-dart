// ignore_for_file: unused_element, unnecessary_cast

import 'message_count_details_response.dart';
import 'system_data_response.dart';

/// Result data returned by getTopic.
class GetTopicResult {
  /// Last time the message was sent, or a request was received, for this topic.
  final String accessedAt;
  /// ISO 8601 timespan idle interval after which the topic is automatically deleted. The minimum duration is 5 minutes.
  final String? autoDeleteOnIdle;
  /// The Azure API version of the resource.
  final String azureApiVersion;
  /// Message count details
  final MessageCountDetailsResponse countDetails;
  /// Exact time the message was created.
  final String createdAt;
  /// ISO 8601 Default message timespan to live value. This is the duration after which the message expires, starting from when the message is sent to Service Bus. This is the default value used when TimeToLive is not set on a message itself.
  final String? defaultMessageTimeToLive;
  /// ISO8601 timespan structure that defines the duration of the duplicate detection history. The default value is 10 minutes.
  final String? duplicateDetectionHistoryTimeWindow;
  /// Value that indicates whether server-side batched operations are enabled.
  final bool? enableBatchedOperations;
  /// Value that indicates whether Express Entities are enabled. An express topic holds a message in memory temporarily before writing it to persistent storage.
  final bool? enableExpress;
  /// Value that indicates whether the topic to be partitioned across multiple message brokers is enabled.
  final bool? enablePartitioning;
  /// Fully qualified resource ID for the resource. Ex - /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}
  final String id;
  /// The geo-location where the resource lives
  final String location;
  /// Maximum size (in KB) of the message payload that can be accepted by the topic. This property is only used in Premium today and default is 1024.
  final double? maxMessageSizeInKilobytes;
  /// Maximum size of the topic in megabytes, which is the size of the memory allocated for the topic. Default is 1024.
  final int? maxSizeInMegabytes;
  /// The name of the resource
  final String name;
  /// Value indicating if this topic requires duplicate detection.
  final bool? requiresDuplicateDetection;
  /// Size of the topic, in bytes.
  final double sizeInBytes;
  /// Enumerates the possible values for the status of a messaging entity.
  final String? status;
  /// Number of subscriptions.
  final int subscriptionCount;
  /// Value that indicates whether the topic supports ordering.
  final bool? supportOrdering;
  /// The system meta data relating to this resource.
  final SystemDataResponse systemData;
  /// The type of the resource. E.g. "Microsoft.EventHub/Namespaces" or "Microsoft.EventHub/Namespaces/EventHubs"
  final String type;
  /// The exact time the message was updated.
  final String updatedAt;

  /// Creates a new [GetTopicResult].
  /// [accessedAt] Last time the message was sent, or a request was received, for this topic.
  /// [autoDeleteOnIdle] ISO 8601 timespan idle interval after which the topic is automatically deleted. The minimum duration is 5 minutes.
  /// [azureApiVersion] The Azure API version of the resource.
  /// [countDetails] Message count details
  /// [createdAt] Exact time the message was created.
  /// [defaultMessageTimeToLive] ISO 8601 Default message timespan to live value. This is the duration after which the message expires, starting from when the message is sent to Service Bus. This is the default value used when TimeToLive is not set on a message itself.
  /// [duplicateDetectionHistoryTimeWindow] ISO8601 timespan structure that defines the duration of the duplicate detection history. The default value is 10 minutes.
  /// [enableBatchedOperations] Value that indicates whether server-side batched operations are enabled.
  /// [enableExpress] Value that indicates whether Express Entities are enabled. An express topic holds a message in memory temporarily before writing it to persistent storage.
  /// [enablePartitioning] Value that indicates whether the topic to be partitioned across multiple message brokers is enabled.
  /// [id] Fully qualified resource ID for the resource. Ex - /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}
  /// [location] The geo-location where the resource lives
  /// [maxMessageSizeInKilobytes] Maximum size (in KB) of the message payload that can be accepted by the topic. This property is only used in Premium today and default is 1024.
  /// [maxSizeInMegabytes] Maximum size of the topic in megabytes, which is the size of the memory allocated for the topic. Default is 1024.
  /// [name] The name of the resource
  /// [requiresDuplicateDetection] Value indicating if this topic requires duplicate detection.
  /// [sizeInBytes] Size of the topic, in bytes.
  /// [status] Enumerates the possible values for the status of a messaging entity.
  /// [subscriptionCount] Number of subscriptions.
  /// [supportOrdering] Value that indicates whether the topic supports ordering.
  /// [systemData] The system meta data relating to this resource.
  /// [type] The type of the resource. E.g. "Microsoft.EventHub/Namespaces" or "Microsoft.EventHub/Namespaces/EventHubs"
  /// [updatedAt] The exact time the message was updated.
  const GetTopicResult({
    required this.accessedAt,
    this.autoDeleteOnIdle,
    required this.azureApiVersion,
    required this.countDetails,
    required this.createdAt,
    this.defaultMessageTimeToLive,
    this.duplicateDetectionHistoryTimeWindow,
    this.enableBatchedOperations,
    this.enableExpress,
    this.enablePartitioning,
    required this.id,
    required this.location,
    this.maxMessageSizeInKilobytes,
    this.maxSizeInMegabytes,
    required this.name,
    this.requiresDuplicateDetection,
    required this.sizeInBytes,
    this.status,
    required this.subscriptionCount,
    this.supportOrdering,
    required this.systemData,
    required this.type,
    required this.updatedAt,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accessedAt': accessedAt,
      'autoDeleteOnIdle': ?autoDeleteOnIdle,
      'azureApiVersion': azureApiVersion,
      'countDetails': countDetails.toMap(),
      'createdAt': createdAt,
      'defaultMessageTimeToLive': ?defaultMessageTimeToLive,
      'duplicateDetectionHistoryTimeWindow': ?duplicateDetectionHistoryTimeWindow,
      'enableBatchedOperations': ?enableBatchedOperations,
      'enableExpress': ?enableExpress,
      'enablePartitioning': ?enablePartitioning,
      'id': id,
      'location': location,
      'maxMessageSizeInKilobytes': ?maxMessageSizeInKilobytes,
      'maxSizeInMegabytes': ?maxSizeInMegabytes,
      'name': name,
      'requiresDuplicateDetection': ?requiresDuplicateDetection,
      'sizeInBytes': sizeInBytes,
      'status': ?status,
      'subscriptionCount': subscriptionCount,
      'supportOrdering': ?supportOrdering,
      'systemData': systemData.toMap(),
      'type': type,
      'updatedAt': updatedAt,
    };
  }

  factory GetTopicResult.fromMap(Map<String, dynamic> map) {
    return GetTopicResult(
      accessedAt: map['accessedAt'] as String,
      autoDeleteOnIdle: (() { final guardedValue = map['autoDeleteOnIdle']; if (guardedValue == null) return null; return guardedValue as String; })(),
      azureApiVersion: map['azureApiVersion'] as String,
      countDetails: MessageCountDetailsResponse.fromMap((map['countDetails']! as Map).cast<String, dynamic>()),
      createdAt: map['createdAt'] as String,
      defaultMessageTimeToLive: (() { final guardedValue = map['defaultMessageTimeToLive']; if (guardedValue == null) return null; return guardedValue as String; })(),
      duplicateDetectionHistoryTimeWindow: (() { final guardedValue = map['duplicateDetectionHistoryTimeWindow']; if (guardedValue == null) return null; return guardedValue as String; })(),
      enableBatchedOperations: (() { final guardedValue = map['enableBatchedOperations']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      enableExpress: (() { final guardedValue = map['enableExpress']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      enablePartitioning: (() { final guardedValue = map['enablePartitioning']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      id: map['id'] as String,
      location: map['location'] as String,
      maxMessageSizeInKilobytes: (() { final guardedValue = map['maxMessageSizeInKilobytes']; if (guardedValue == null) return null; return guardedValue as double; })(),
      maxSizeInMegabytes: (() { final guardedValue = map['maxSizeInMegabytes']; if (guardedValue == null) return null; return guardedValue as int; })(),
      name: map['name'] as String,
      requiresDuplicateDetection: (() { final guardedValue = map['requiresDuplicateDetection']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      sizeInBytes: map['sizeInBytes'] as double,
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return guardedValue as String; })(),
      subscriptionCount: map['subscriptionCount'] as int,
      supportOrdering: (() { final guardedValue = map['supportOrdering']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      systemData: SystemDataResponse.fromMap((map['systemData']! as Map).cast<String, dynamic>()),
      type: map['type'] as String,
      updatedAt: map['updatedAt'] as String,
    );
  }
}

