// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'entity_status.dart';

/// {@template pulumi_servicebus_topic_args_doc}
/// The set of arguments for Topic.
/// {@endtemplate}
/// {@macro pulumi_servicebus_topic_args_doc}
class TopicArgs {
  /// ISO 8601 timespan idle interval after which the topic is automatically deleted. The minimum duration is 5 minutes.
  final pulumi.Input<String>? autoDeleteOnIdle;
  /// ISO 8601 Default message timespan to live value. This is the duration after which the message expires, starting from when the message is sent to Service Bus. This is the default value used when TimeToLive is not set on a message itself.
  final pulumi.Input<String>? defaultMessageTimeToLive;
  /// ISO8601 timespan structure that defines the duration of the duplicate detection history. The default value is 10 minutes.
  final pulumi.Input<String>? duplicateDetectionHistoryTimeWindow;
  /// Value that indicates whether server-side batched operations are enabled.
  final pulumi.Input<bool>? enableBatchedOperations;
  /// Value that indicates whether Express Entities are enabled. An express topic holds a message in memory temporarily before writing it to persistent storage.
  final pulumi.Input<bool>? enableExpress;
  /// Value that indicates whether the topic to be partitioned across multiple message brokers is enabled.
  final pulumi.Input<bool>? enablePartitioning;
  /// Maximum size (in KB) of the message payload that can be accepted by the topic. This property is only used in Premium today and default is 1024.
  final pulumi.Input<double>? maxMessageSizeInKilobytes;
  /// Maximum size of the topic in megabytes, which is the size of the memory allocated for the topic. Default is 1024.
  final pulumi.Input<int>? maxSizeInMegabytes;
  /// The namespace name
  final pulumi.Input<String> namespaceName;
  /// Value indicating if this topic requires duplicate detection.
  final pulumi.Input<bool>? requiresDuplicateDetection;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// Enumerates the possible values for the status of a messaging entity.
  final pulumi.Input<EntityStatus>? status;
  /// Value that indicates whether the topic supports ordering.
  final pulumi.Input<bool>? supportOrdering;
  /// The topic name.
  final pulumi.Input<String>? topicName;

  /// Creates a new [TopicArgs].
  /// [autoDeleteOnIdle] ISO 8601 timespan idle interval after which the topic is automatically deleted. The minimum duration is 5 minutes.
  /// [defaultMessageTimeToLive] ISO 8601 Default message timespan to live value. This is the duration after which the message expires, starting from when the message is sent to Service Bus. This is the default value used when TimeToLive is not set on a message itself.
  /// [duplicateDetectionHistoryTimeWindow] ISO8601 timespan structure that defines the duration of the duplicate detection history. The default value is 10 minutes.
  /// [enableBatchedOperations] Value that indicates whether server-side batched operations are enabled.
  /// [enableExpress] Value that indicates whether Express Entities are enabled. An express topic holds a message in memory temporarily before writing it to persistent storage.
  /// [enablePartitioning] Value that indicates whether the topic to be partitioned across multiple message brokers is enabled.
  /// [maxMessageSizeInKilobytes] Maximum size (in KB) of the message payload that can be accepted by the topic. This property is only used in Premium today and default is 1024.
  /// [maxSizeInMegabytes] Maximum size of the topic in megabytes, which is the size of the memory allocated for the topic. Default is 1024.
  /// [namespaceName] The namespace name
  /// [requiresDuplicateDetection] Value indicating if this topic requires duplicate detection.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [status] Enumerates the possible values for the status of a messaging entity.
  /// [supportOrdering] Value that indicates whether the topic supports ordering.
  /// [topicName] The topic name.
  TopicArgs({
    this.autoDeleteOnIdle,
    this.defaultMessageTimeToLive,
    this.duplicateDetectionHistoryTimeWindow,
    this.enableBatchedOperations,
    this.enableExpress,
    this.enablePartitioning,
    this.maxMessageSizeInKilobytes,
    this.maxSizeInMegabytes,
    required this.namespaceName,
    this.requiresDuplicateDetection,
    required this.resourceGroupName,
    this.status,
    this.supportOrdering,
    this.topicName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'autoDeleteOnIdle': ?autoDeleteOnIdle,
      'defaultMessageTimeToLive': ?defaultMessageTimeToLive,
      'duplicateDetectionHistoryTimeWindow': ?duplicateDetectionHistoryTimeWindow,
      'enableBatchedOperations': ?enableBatchedOperations,
      'enableExpress': ?enableExpress,
      'enablePartitioning': ?enablePartitioning,
      'maxMessageSizeInKilobytes': ?maxMessageSizeInKilobytes,
      'maxSizeInMegabytes': ?maxSizeInMegabytes,
      'namespaceName': namespaceName,
      'requiresDuplicateDetection': ?requiresDuplicateDetection,
      'resourceGroupName': resourceGroupName,
      'status': ?pulumi.Input.mapOptionalInputValue<EntityStatus, String>(status, (value) => value.wireValue),
      'supportOrdering': ?supportOrdering,
      'topicName': ?topicName,
    };
  }

  factory TopicArgs.fromMap(Map<String, dynamic> map) {
    return TopicArgs(
      autoDeleteOnIdle: (() { final guardedValue = map['autoDeleteOnIdle']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      defaultMessageTimeToLive: (() { final guardedValue = map['defaultMessageTimeToLive']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      duplicateDetectionHistoryTimeWindow: (() { final guardedValue = map['duplicateDetectionHistoryTimeWindow']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      enableBatchedOperations: (() { final guardedValue = map['enableBatchedOperations']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      enableExpress: (() { final guardedValue = map['enableExpress']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      enablePartitioning: (() { final guardedValue = map['enablePartitioning']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      maxMessageSizeInKilobytes: (() { final guardedValue = map['maxMessageSizeInKilobytes']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as double); })(),
      maxSizeInMegabytes: (() { final guardedValue = map['maxSizeInMegabytes']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      namespaceName: pulumi.Input.fromValue(map['namespaceName'] as String),
      requiresDuplicateDetection: (() { final guardedValue = map['requiresDuplicateDetection']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return pulumi.Input.fromValue(EntityStatus.fromValue(guardedValue as String)); })(),
      supportOrdering: (() { final guardedValue = map['supportOrdering']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      topicName: (() { final guardedValue = map['topicName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

