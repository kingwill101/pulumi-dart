// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_notification_channel_sensitive_label.dart';

/// Result data returned by getNotificationChannel.
class GetNotificationChannelResult {
  /// An optional human-readable description of this notification channel.
  final String description;
  final String? displayName;

  /// Whether notifications are forwarded to the described channel.
  final bool enabled;
  final bool forceDelete;

  /// The provider-assigned unique ID for this managed resource.
  final String id;

  /// Configuration fields that define the channel and its behavior.
  final Map<String, String>? labels;

  /// The full REST resource name for this channel. The syntax is:
  /// `projects/[PROJECT_ID]/notificationChannels/[CHANNEL_ID]`.
  final String name;
  final String? project;
  final List<GetNotificationChannelSensitiveLabel> sensitiveLabels;
  final String? type;

  /// User-supplied key/value data that does not need to conform to the corresponding NotificationChannelDescriptor's schema, unlike the labels field.
  final Map<String, String>? userLabels;

  /// Indicates whether this channel has been verified or not.
  final String verificationStatus;

  /// Creates a new [GetNotificationChannelResult].
  /// [description] An optional human-readable description of this notification channel.
  /// [displayName] Optional.
  /// [enabled] Whether notifications are forwarded to the described channel.
  /// [forceDelete] Required.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [labels] Configuration fields that define the channel and its behavior.
  /// [name] The full REST resource name for this channel. The syntax is:
  /// [project] Optional.
  /// [sensitiveLabels] Required.
  /// [type] Optional.
  /// [userLabels] User-supplied key/value data that does not need to conform to the corresponding NotificationChannelDescriptor's schema, unlike the labels field.
  /// [verificationStatus] Indicates whether this channel has been verified or not.
  GetNotificationChannelResult({
    required this.description,
    this.displayName,
    required this.enabled,
    required this.forceDelete,
    required this.id,
    this.labels,
    required this.name,
    this.project,
    required this.sensitiveLabels,
    this.type,
    this.userLabels,
    required this.verificationStatus,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': description,
      'displayName': ?displayName,
      'enabled': enabled,
      'forceDelete': forceDelete,
      'id': id,
      'labels': ?labels,
      'name': name,
      'project': ?project,
      'sensitiveLabels':
          pulumi.Input.encodeList<
            GetNotificationChannelSensitiveLabel,
            Map<String, dynamic>
          >(sensitiveLabels, (value) => value.toMap()),
      'type': ?type,
      'userLabels': ?userLabels,
      'verificationStatus': verificationStatus,
    };
  }

  factory GetNotificationChannelResult.fromMap(Map<String, dynamic> map) {
    return GetNotificationChannelResult(
      description: map['description'] as String,
      displayName: (() {
        final guardedValue = map['displayName'];
        if (guardedValue == null) return null;
        return guardedValue as String;
      })(),
      enabled: map['enabled'] as bool,
      forceDelete: map['forceDelete'] as bool,
      id: map['id'] as String,
      labels: (() {
        final guardedValue = map['labels'];
        if (guardedValue == null) return null;
        return (guardedValue as Map).cast<String, String>();
      })(),
      name: map['name'] as String,
      project: (() {
        final guardedValue = map['project'];
        if (guardedValue == null) return null;
        return guardedValue as String;
      })(),
      sensitiveLabels:
          pulumi.Input.decodeList<GetNotificationChannelSensitiveLabel>(
            map['sensitiveLabels']!,
            (value) => GetNotificationChannelSensitiveLabel.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
      type: (() {
        final guardedValue = map['type'];
        if (guardedValue == null) return null;
        return guardedValue as String;
      })(),
      userLabels: (() {
        final guardedValue = map['userLabels'];
        if (guardedValue == null) return null;
        return (guardedValue as Map).cast<String, String>();
      })(),
      verificationStatus: map['verificationStatus'] as String,
    );
  }
}
