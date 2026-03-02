// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering Notification resources.
class NotificationState {
  /// The name of the bucket.
  final pulumi.Input<String>? bucket;
  /// A set of key/value attribute pairs to attach to each Cloud PubSub message published for this notification subscription
  final pulumi.Input<Map<String, String>>? customAttributes;
  /// List of event type filters for this notification config. If not specified, Cloud Storage will send notifications for all event types. The valid types are: `"OBJECT_FINALIZE"`, `"OBJECT_METADATA_UPDATE"`, `"OBJECT_DELETE"`, `"OBJECT_ARCHIVE"`
  final pulumi.Input<List<String>>? eventTypes;
  /// The ID of the created notification.
  final pulumi.Input<String>? notificationId;
  /// Specifies a prefix path filter for this notification config. Cloud Storage will only send notifications for objects in this bucket whose names begin with the specified prefix.
  final pulumi.Input<String>? objectNamePrefix;
  /// The desired content of the Payload. One of `"JSON_API_V1"` or `"NONE"`.
  final pulumi.Input<String>? payloadFormat;
  /// The URI of the created resource.
  final pulumi.Input<String>? selfLink;
  /// The Cloud PubSub topic to which this subscription publishes. Expects either the
  /// topic name, assumed to belong to the default GCP provider project, or the project-level name,
  /// i.e. `projects/my-gcp-project/topics/my-topic` or `my-topic`. If the project is not set in the provider,
  /// you will need to use the project-level name.
  ///
  /// - - -
  final pulumi.Input<String>? topic;

  /// Creates a new [NotificationState].
  /// [bucket] The name of the bucket.
  /// [customAttributes] A set of key/value attribute pairs to attach to each Cloud PubSub message published for this notification subscription
  /// [eventTypes] List of event type filters for this notification config. If not specified, Cloud Storage will send notifications for all event types. The valid types are: `"OBJECT_FINALIZE"`, `"OBJECT_METADATA_UPDATE"`, `"OBJECT_DELETE"`, `"OBJECT_ARCHIVE"`
  /// [notificationId] The ID of the created notification.
  /// [objectNamePrefix] Specifies a prefix path filter for this notification config. Cloud Storage will only send notifications for objects in this bucket whose names begin with the specified prefix.
  /// [payloadFormat] The desired content of the Payload. One of `"JSON_API_V1"` or `"NONE"`.
  /// [selfLink] The URI of the created resource.
  /// [topic] The Cloud PubSub topic to which this subscription publishes. Expects either the
  NotificationState({
    this.bucket,
    this.customAttributes,
    this.eventTypes,
    this.notificationId,
    this.objectNamePrefix,
    this.payloadFormat,
    this.selfLink,
    this.topic,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bucket': ?bucket,
      'customAttributes': ?customAttributes,
      'eventTypes': ?eventTypes,
      'notificationId': ?notificationId,
      'objectNamePrefix': ?objectNamePrefix,
      'payloadFormat': ?payloadFormat,
      'selfLink': ?selfLink,
      'topic': ?topic,
    };
  }

  factory NotificationState.fromMap(Map<String, dynamic> map) {
    return NotificationState(
      bucket: map['bucket'] == null ? null : (map['bucket'] as String).input(),
      customAttributes: map['customAttributes'] == null ? null : ((map['customAttributes'] as Map).cast<String, String>()).input(),
      eventTypes: map['eventTypes'] == null ? null : ((map['eventTypes'] as List).cast<String>()).input(),
      notificationId: map['notificationId'] == null ? null : (map['notificationId'] as String).input(),
      objectNamePrefix: map['objectNamePrefix'] == null ? null : (map['objectNamePrefix'] as String).input(),
      payloadFormat: map['payloadFormat'] == null ? null : (map['payloadFormat'] as String).input(),
      selfLink: map['selfLink'] == null ? null : (map['selfLink'] as String).input(),
      topic: map['topic'] == null ? null : (map['topic'] as String).input(),
    );
  }
}

