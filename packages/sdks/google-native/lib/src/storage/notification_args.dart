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
    required pulumi.Output<String> bucket,
    pulumi.Output<Map<String, String>>? customAttributes,
    pulumi.Output<String>? etag,
    pulumi.Output<List<String>>? eventTypes,
    pulumi.Output<String>? id,
    pulumi.Output<String>? kind,
    pulumi.Output<String>? objectNamePrefix,
    pulumi.Output<String>? payloadFormat,
    pulumi.Output<String>? selfLink,
    pulumi.Output<String>? topic,
    pulumi.Output<String>? userProject,
  }) :
      bucket = pulumi.Input.asInput<String>(bucket),
      customAttributes = pulumi.Input.asOptionalInput<Map<String, String>>(customAttributes),
      etag = pulumi.Input.asOptionalInput<String>(etag),
      eventTypes = pulumi.Input.asOptionalInput<List<String>>(eventTypes),
      id = pulumi.Input.asOptionalInput<String>(id),
      kind = pulumi.Input.asOptionalInput<String>(kind),
      objectNamePrefix = pulumi.Input.asOptionalInput<String>(objectNamePrefix),
      payloadFormat = pulumi.Input.asOptionalInput<String>(payloadFormat),
      selfLink = pulumi.Input.asOptionalInput<String>(selfLink),
      topic = pulumi.Input.asOptionalInput<String>(topic),
      userProject = pulumi.Input.asOptionalInput<String>(userProject);

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
      bucket: pulumi.Output.create<String>(map['bucket'] as String),
      customAttributes: map['customAttributes'] == null ? null : pulumi.Output.create<Map<String, String>>((map['customAttributes'] as Map).cast<String, String>()),
      etag: map['etag'] == null ? null : pulumi.Output.create<String>(map['etag'] as String),
      eventTypes: map['eventTypes'] == null ? null : pulumi.Output.create<List<String>>((map['eventTypes'] as List).cast<String>()),
      id: map['id'] == null ? null : pulumi.Output.create<String>(map['id'] as String),
      kind: map['kind'] == null ? null : pulumi.Output.create<String>(map['kind'] as String),
      objectNamePrefix: map['objectNamePrefix'] == null ? null : pulumi.Output.create<String>(map['objectNamePrefix'] as String),
      payloadFormat: map['payloadFormat'] == null ? null : pulumi.Output.create<String>(map['payloadFormat'] as String),
      selfLink: map['selfLink'] == null ? null : pulumi.Output.create<String>(map['selfLink'] as String),
      topic: map['topic'] == null ? null : pulumi.Output.create<String>(map['topic'] as String),
      userProject: map['userProject'] == null ? null : pulumi.Output.create<String>(map['userProject'] as String),
    );
  }
}

