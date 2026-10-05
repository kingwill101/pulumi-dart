// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getNotification.
class GetNotificationResult {
  /// An optional list of additional attributes to attach to each Cloud PubSub message published for this notification subscription.
  final Map<String, String>? customAttributes;
  /// HTTP 1.1 Entity tag for this subscription notification.
  final String? etag;
  /// If present, only send notifications about listed event types. If empty, sent notifications for all event types.
  final List<String>? eventTypes;
  /// The kind of item this is. For notifications, this is always storage#notification.
  final String? kind;
  /// If present, only apply this notification configuration to object names that begin with this prefix.
  final String? objectNamePrefix;
  /// The desired content of the Payload.
  final String? payloadFormat;
  /// The canonical URL of this notification.
  final String? selfLink;
  /// The Cloud PubSub topic to which this subscription publishes. Formatted as: '//pubsub.googleapis.com/projects/{project-identifier}/topics/{my-topic}'
  final String? topic;

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
    this.customAttributes,
    this.etag,
    this.eventTypes,
    this.kind,
    this.objectNamePrefix,
    this.payloadFormat,
    this.selfLink,
    this.topic,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'customAttributes': ?customAttributes,
      'etag': ?etag,
      'eventTypes': ?eventTypes,
      'kind': ?kind,
      'objectNamePrefix': ?objectNamePrefix,
      'payloadFormat': ?payloadFormat,
      'selfLink': ?selfLink,
      'topic': ?topic,
    };
  }

  factory GetNotificationResult.fromMap(Map<String, dynamic> map) {
    return GetNotificationResult(
      customAttributes: (() { final guardedValue = map['customAttributes']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      etag: (() { final guardedValue = map['etag']; if (guardedValue == null) return null; return guardedValue as String; })(),
      eventTypes: (() { final guardedValue = map['eventTypes']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      kind: (() { final guardedValue = map['kind']; if (guardedValue == null) return null; return guardedValue as String; })(),
      objectNamePrefix: (() { final guardedValue = map['objectNamePrefix']; if (guardedValue == null) return null; return guardedValue as String; })(),
      payloadFormat: (() { final guardedValue = map['payloadFormat']; if (guardedValue == null) return null; return guardedValue as String; })(),
      selfLink: (() { final guardedValue = map['selfLink']; if (guardedValue == null) return null; return guardedValue as String; })(),
      topic: (() { final guardedValue = map['topic']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
