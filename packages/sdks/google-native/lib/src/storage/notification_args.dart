// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_storage_v1_notification_args_doc}
/// The set of arguments for Notification.
/// {@endtemplate}
/// {@macro pulumi_storage_v1_notification_args_doc}
class NotificationArgs {
  final pulumi.Input<String> bucket;
  /// An optional list of additional attributes to attach to each Cloud PubSub message published for this notification subscription.
  final pulumi.Input<Map<String, String>>? customAttributes;
  /// HTTP 1.1 Entity tag for this subscription notification.
  final pulumi.Input<String>? etag;
  /// If present, only send notifications about listed event types. If empty, sent notifications for all event types.
  final pulumi.Input<List<String>>? eventTypes;
  /// The ID of the notification.
  final pulumi.Input<String>? id;
  /// The kind of item this is. For notifications, this is always storage#notification.
  final pulumi.Input<String>? kind;
  /// If present, only apply this notification configuration to object names that begin with this prefix.
  final pulumi.Input<String>? objectNamePrefix;
  /// The desired content of the Payload.
  final pulumi.Input<String>? payloadFormat;
  /// The canonical URL of this notification.
  final pulumi.Input<String>? selfLink;
  /// The Cloud PubSub topic to which this subscription publishes. Formatted as: '//pubsub.googleapis.com/projects/{project-identifier}/topics/{my-topic}'
  final pulumi.Input<String>? topic;
  /// The project to be billed for this request. Required for Requester Pays buckets.
  final pulumi.Input<String>? userProject;

  /// Creates a new [NotificationArgs].
  /// [bucket] Required.
  /// [customAttributes] An optional list of additional attributes to attach to each Cloud PubSub message published for this notification subscription.
  /// [etag] HTTP 1.1 Entity tag for this subscription notification.
  /// [eventTypes] If present, only send notifications about listed event types. If empty, sent notifications for all event types.
  /// [id] The ID of the notification.
  /// [kind] The kind of item this is. For notifications, this is always storage#notification.
  /// [objectNamePrefix] If present, only apply this notification configuration to object names that begin with this prefix.
  /// [payloadFormat] The desired content of the Payload.
  /// [selfLink] The canonical URL of this notification.
  /// [topic] The Cloud PubSub topic to which this subscription publishes. Formatted as: '//pubsub.googleapis.com/projects/{project-identifier}/topics/{my-topic}'
  /// [userProject] The project to be billed for this request. Required for Requester Pays buckets.
  NotificationArgs({
    required this.bucket,
    this.customAttributes,
    this.etag,
    this.eventTypes,
    this.id,
    this.kind,
    this.objectNamePrefix,
    this.payloadFormat,
    this.selfLink,
    this.topic,
    this.userProject,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bucket': bucket,
      'customAttributes': ?customAttributes,
      'etag': ?etag,
      'eventTypes': ?eventTypes,
      'id': ?id,
      'kind': ?kind,
      'objectNamePrefix': ?objectNamePrefix,
      'payloadFormat': ?payloadFormat,
      'selfLink': ?selfLink,
      'topic': ?topic,
      'userProject': ?userProject,
    };
  }

  factory NotificationArgs.fromMap(Map<String, dynamic> map) {
    return NotificationArgs(
      bucket: (map['bucket'] as String).input(),
      customAttributes: map['customAttributes'] == null ? null : ((map['customAttributes'] as Map).cast<String, String>()).input(),
      etag: map['etag'] == null ? null : (map['etag'] as String).input(),
      eventTypes: map['eventTypes'] == null ? null : ((map['eventTypes'] as List).cast<String>()).input(),
      id: map['id'] == null ? null : (map['id'] as String).input(),
      kind: map['kind'] == null ? null : (map['kind'] as String).input(),
      objectNamePrefix: map['objectNamePrefix'] == null ? null : (map['objectNamePrefix'] as String).input(),
      payloadFormat: map['payloadFormat'] == null ? null : (map['payloadFormat'] as String).input(),
      selfLink: map['selfLink'] == null ? null : (map['selfLink'] as String).input(),
      topic: map['topic'] == null ? null : (map['topic'] as String).input(),
      userProject: map['userProject'] == null ? null : (map['userProject'] as String).input(),
    );
  }
}

