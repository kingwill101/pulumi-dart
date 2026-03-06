// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getNotification.
class GetNotificationResult {
  /// An optional list of additional attributes to attach to each Cloud PubSub message published for this notification subscription.
  final Map<String, String> customAttributes;
  /// HTTP 1.1 Entity tag for this subscription notification.
  final String etag;
  /// If present, only send notifications about listed event types. If empty, sent notifications for all event types.
  final List<String> eventTypes;
  /// The kind of item this is. For notifications, this is always storage#notification.
  final String kind;
  /// If present, only apply this notification configuration to object names that begin with this prefix.
  final String objectNamePrefix;
  /// The desired content of the Payload.
  final String payloadFormat;
  /// The canonical URL of this notification.
  final String selfLink;
  /// The Cloud PubSub topic to which this subscription publishes. Formatted as: '//pubsub.googleapis.com/projects/{project-identifier}/topics/{my-topic}'
  final String topic;

  /// Creates a new [GetNotificationResult].
  /// [customAttributes] An optional list of additional attributes to attach to each Cloud PubSub message published for this notification subscription.
  /// [etag] HTTP 1.1 Entity tag for this subscription notification.
  /// [eventTypes] If present, only send notifications about listed event types. If empty, sent notifications for all event types.
  /// [kind] The kind of item this is. For notifications, this is always storage#notification.
  /// [objectNamePrefix] If present, only apply this notification configuration to object names that begin with this prefix.
  /// [payloadFormat] The desired content of the Payload.
  /// [selfLink] The canonical URL of this notification.
  /// [topic] The Cloud PubSub topic to which this subscription publishes. Formatted as: '//pubsub.googleapis.com/projects/{project-identifier}/topics/{my-topic}'
  const GetNotificationResult({
    required this.customAttributes,
    required this.etag,
    required this.eventTypes,
    required this.kind,
    required this.objectNamePrefix,
    required this.payloadFormat,
    required this.selfLink,
    required this.topic,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'customAttributes': customAttributes,
      'etag': etag,
      'eventTypes': eventTypes,
      'kind': kind,
      'objectNamePrefix': objectNamePrefix,
      'payloadFormat': payloadFormat,
      'selfLink': selfLink,
      'topic': topic,
    };
  }

  factory GetNotificationResult.fromMap(Map<String, dynamic> map) {
    return GetNotificationResult(
      customAttributes: (map['customAttributes'] as Map).cast<String, String>(),
      etag: map['etag'] as String,
      eventTypes: (map['eventTypes'] as List).cast<String>(),
      kind: map['kind'] as String,
      objectNamePrefix: map['objectNamePrefix'] as String,
      payloadFormat: map['payloadFormat'] as String,
      selfLink: map['selfLink'] as String,
      topic: map['topic'] as String,
    );
  }
}

