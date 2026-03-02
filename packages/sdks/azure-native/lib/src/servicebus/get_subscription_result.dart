// ignore_for_file: unused_element, unnecessary_cast

import 'message_count_details_response.dart';
import 'sbclient_affine_properties_response.dart';
import 'system_data_response.dart';

/// Result data returned by getSubscription.
class GetSubscriptionResult {
  /// Last time there was a receive request to this subscription.
  final String accessedAt;
  /// ISO 8061 timeSpan idle interval after which the topic is automatically deleted. The minimum duration is 5 minutes.
  final String? autoDeleteOnIdle;
  /// The Azure API version of the resource.
  final String azureApiVersion;
  /// Properties specific to client affine subscriptions.
  final SBClientAffinePropertiesResponse? clientAffineProperties;
  /// Message count details
  final MessageCountDetailsResponse countDetails;
  /// Exact time the message was created.
  final String createdAt;
  /// Value that indicates whether a subscription has dead letter support on filter evaluation exceptions.
  final bool? deadLetteringOnFilterEvaluationExceptions;
  /// Value that indicates whether a subscription has dead letter support when a message expires.
  final bool? deadLetteringOnMessageExpiration;
  /// ISO 8061 Default message timespan to live value. This is the duration after which the message expires, starting from when the message is sent to Service Bus. This is the default value used when TimeToLive is not set on a message itself.
  final String? defaultMessageTimeToLive;
  /// ISO 8601 timeSpan structure that defines the duration of the duplicate detection history. The default value is 10 minutes.
  final String? duplicateDetectionHistoryTimeWindow;
  /// Value that indicates whether server-side batched operations are enabled.
  final bool? enableBatchedOperations;
  /// Queue/Topic name to forward the Dead Letter message
  final String? forwardDeadLetteredMessagesTo;
  /// Queue/Topic name to forward the messages
  final String? forwardTo;
  /// Fully qualified resource ID for the resource. Ex - /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}
  final String id;
  /// Value that indicates whether the subscription has an affinity to the client id.
  final bool? isClientAffine;
  /// The geo-location where the resource lives
  final String location;
  /// ISO 8061 lock duration timespan for the subscription. The default value is 1 minute.
  final String? lockDuration;
  /// Number of maximum deliveries.
  final int? maxDeliveryCount;
  /// Number of messages.
  final double messageCount;
  /// The name of the resource
  final String name;
  /// Value indicating if a subscription supports the concept of sessions.
  final bool? requiresSession;
  /// Enumerates the possible values for the status of a messaging entity.
  final String? status;
  /// The system meta data relating to this resource.
  final SystemDataResponse systemData;
  /// The type of the resource. E.g. "Microsoft.EventHub/Namespaces" or "Microsoft.EventHub/Namespaces/EventHubs"
  final String type;
  /// The exact time the message was updated.
  final String updatedAt;

  /// Creates a new [GetSubscriptionResult].
  /// [accessedAt] Last time there was a receive request to this subscription.
  /// [autoDeleteOnIdle] ISO 8061 timeSpan idle interval after which the topic is automatically deleted. The minimum duration is 5 minutes.
  /// [azureApiVersion] The Azure API version of the resource.
  /// [clientAffineProperties] Properties specific to client affine subscriptions.
  /// [countDetails] Message count details
  /// [createdAt] Exact time the message was created.
  /// [deadLetteringOnFilterEvaluationExceptions] Value that indicates whether a subscription has dead letter support on filter evaluation exceptions.
  /// [deadLetteringOnMessageExpiration] Value that indicates whether a subscription has dead letter support when a message expires.
  /// [defaultMessageTimeToLive] ISO 8061 Default message timespan to live value. This is the duration after which the message expires, starting from when the message is sent to Service Bus. This is the default value used when TimeToLive is not set on a message itself.
  /// [duplicateDetectionHistoryTimeWindow] ISO 8601 timeSpan structure that defines the duration of the duplicate detection history. The default value is 10 minutes.
  /// [enableBatchedOperations] Value that indicates whether server-side batched operations are enabled.
  /// [forwardDeadLetteredMessagesTo] Queue/Topic name to forward the Dead Letter message
  /// [forwardTo] Queue/Topic name to forward the messages
  /// [id] Fully qualified resource ID for the resource. Ex - /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}
  /// [isClientAffine] Value that indicates whether the subscription has an affinity to the client id.
  /// [location] The geo-location where the resource lives
  /// [lockDuration] ISO 8061 lock duration timespan for the subscription. The default value is 1 minute.
  /// [maxDeliveryCount] Number of maximum deliveries.
  /// [messageCount] Number of messages.
  /// [name] The name of the resource
  /// [requiresSession] Value indicating if a subscription supports the concept of sessions.
  /// [status] Enumerates the possible values for the status of a messaging entity.
  /// [systemData] The system meta data relating to this resource.
  /// [type] The type of the resource. E.g. "Microsoft.EventHub/Namespaces" or "Microsoft.EventHub/Namespaces/EventHubs"
  /// [updatedAt] The exact time the message was updated.
  GetSubscriptionResult({
    required this.accessedAt,
    this.autoDeleteOnIdle,
    required this.azureApiVersion,
    this.clientAffineProperties,
    required this.countDetails,
    required this.createdAt,
    this.deadLetteringOnFilterEvaluationExceptions,
    this.deadLetteringOnMessageExpiration,
    this.defaultMessageTimeToLive,
    this.duplicateDetectionHistoryTimeWindow,
    this.enableBatchedOperations,
    this.forwardDeadLetteredMessagesTo,
    this.forwardTo,
    required this.id,
    this.isClientAffine,
    required this.location,
    this.lockDuration,
    this.maxDeliveryCount,
    required this.messageCount,
    required this.name,
    this.requiresSession,
    this.status,
    required this.systemData,
    required this.type,
    required this.updatedAt,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accessedAt': accessedAt,
      'autoDeleteOnIdle': ?autoDeleteOnIdle,
      'azureApiVersion': azureApiVersion,
      'clientAffineProperties': ?clientAffineProperties == null ? null : clientAffineProperties!.toMap(),
      'countDetails': countDetails.toMap(),
      'createdAt': createdAt,
      'deadLetteringOnFilterEvaluationExceptions': ?deadLetteringOnFilterEvaluationExceptions,
      'deadLetteringOnMessageExpiration': ?deadLetteringOnMessageExpiration,
      'defaultMessageTimeToLive': ?defaultMessageTimeToLive,
      'duplicateDetectionHistoryTimeWindow': ?duplicateDetectionHistoryTimeWindow,
      'enableBatchedOperations': ?enableBatchedOperations,
      'forwardDeadLetteredMessagesTo': ?forwardDeadLetteredMessagesTo,
      'forwardTo': ?forwardTo,
      'id': id,
      'isClientAffine': ?isClientAffine,
      'location': location,
      'lockDuration': ?lockDuration,
      'maxDeliveryCount': ?maxDeliveryCount,
      'messageCount': messageCount,
      'name': name,
      'requiresSession': ?requiresSession,
      'status': ?status,
      'systemData': systemData.toMap(),
      'type': type,
      'updatedAt': updatedAt,
    };
  }

  factory GetSubscriptionResult.fromMap(Map<String, dynamic> map) {
    return GetSubscriptionResult(
      accessedAt: map['accessedAt'] as String,
      autoDeleteOnIdle: map['autoDeleteOnIdle'] == null ? null : map['autoDeleteOnIdle']! as String,
      azureApiVersion: map['azureApiVersion'] as String,
      clientAffineProperties: map['clientAffineProperties'] == null ? null : SBClientAffinePropertiesResponse.fromMap((map['clientAffineProperties']! as Map).cast<String, dynamic>()),
      countDetails: MessageCountDetailsResponse.fromMap((map['countDetails'] as Map).cast<String, dynamic>()),
      createdAt: map['createdAt'] as String,
      deadLetteringOnFilterEvaluationExceptions: map['deadLetteringOnFilterEvaluationExceptions'] == null ? null : map['deadLetteringOnFilterEvaluationExceptions']! as bool,
      deadLetteringOnMessageExpiration: map['deadLetteringOnMessageExpiration'] == null ? null : map['deadLetteringOnMessageExpiration']! as bool,
      defaultMessageTimeToLive: map['defaultMessageTimeToLive'] == null ? null : map['defaultMessageTimeToLive']! as String,
      duplicateDetectionHistoryTimeWindow: map['duplicateDetectionHistoryTimeWindow'] == null ? null : map['duplicateDetectionHistoryTimeWindow']! as String,
      enableBatchedOperations: map['enableBatchedOperations'] == null ? null : map['enableBatchedOperations']! as bool,
      forwardDeadLetteredMessagesTo: map['forwardDeadLetteredMessagesTo'] == null ? null : map['forwardDeadLetteredMessagesTo']! as String,
      forwardTo: map['forwardTo'] == null ? null : map['forwardTo']! as String,
      id: map['id'] as String,
      isClientAffine: map['isClientAffine'] == null ? null : map['isClientAffine']! as bool,
      location: map['location'] as String,
      lockDuration: map['lockDuration'] == null ? null : map['lockDuration']! as String,
      maxDeliveryCount: map['maxDeliveryCount'] == null ? null : map['maxDeliveryCount']! as int,
      messageCount: map['messageCount'] as double,
      name: map['name'] as String,
      requiresSession: map['requiresSession'] == null ? null : map['requiresSession']! as bool,
      status: map['status'] == null ? null : map['status']! as String,
      systemData: SystemDataResponse.fromMap((map['systemData'] as Map).cast<String, dynamic>()),
      type: map['type'] as String,
      updatedAt: map['updatedAt'] as String,
    );
  }
}

