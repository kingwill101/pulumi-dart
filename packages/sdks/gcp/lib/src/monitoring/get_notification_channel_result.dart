// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_notification_channel_sensitive_label.dart';

/// Result data returned by getNotificationChannel.
class GetNotificationChannelResult {
  final String? deletionPolicy;
  /// An optional human-readable description of this notification channel.
  final String? description;
  final String? displayName;
  /// Whether notifications are forwarded to the described channel.
  final bool? enabled;
  final bool? forceDelete;
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  /// Configuration fields that define the channel and its behavior.
  final Map<String, String>? labels;
  /// The full REST resource name for this channel. The syntax is:
  /// `projects/[PROJECT_ID]/notificationChannels/[CHANNEL_ID]`.
  final String? name;
  final String? project;
  final List<GetNotificationChannelSensitiveLabel>? sensitiveLabels;
  final String? type;
  /// User-supplied key/value data that does not need to conform to the corresponding NotificationChannelDescriptor's schema, unlike the labels field.
  final Map<String, String>? userLabels;
  /// Indicates whether this channel has been verified or not.
  final String? verificationStatus;

  /// Creates a new [GetNotificationChannelResult].
  /// [deletionPolicy] Optional.
  /// [description] An optional human-readable description of this notification channel.
  /// [displayName] Optional.
  /// [enabled] Whether notifications are forwarded to the described channel.
  /// [forceDelete] Optional.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [labels] Configuration fields that define the channel and its behavior.
  /// [name] The full REST resource name for this channel. The syntax is:
  /// [project] Optional.
  /// [sensitiveLabels] Optional.
  /// [type] Optional.
  /// [userLabels] User-supplied key/value data that does not need to conform to the corresponding NotificationChannelDescriptor's schema, unlike the labels field.
  /// [verificationStatus] Indicates whether this channel has been verified or not.
  const GetNotificationChannelResult({
    this.deletionPolicy,
    this.description,
    this.displayName,
    this.enabled,
    this.forceDelete,
    this.id,
    this.labels,
    this.name,
    this.project,
    this.sensitiveLabels,
    this.type,
    this.userLabels,
    this.verificationStatus,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'deletionPolicy': ?deletionPolicy,
      'description': ?description,
      'displayName': ?displayName,
      'enabled': ?enabled,
      'forceDelete': ?forceDelete,
      'id': ?id,
      'labels': ?labels,
      'name': ?name,
      'project': ?project,
      'sensitiveLabels': ?(() { final guardedValue = sensitiveLabels; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetNotificationChannelSensitiveLabel, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'type': ?type,
      'userLabels': ?userLabels,
      'verificationStatus': ?verificationStatus,
    };
  }

  factory GetNotificationChannelResult.fromMap(Map<String, dynamic> map) {
    return GetNotificationChannelResult(
      deletionPolicy: (() { final guardedValue = map['deletionPolicy']; if (guardedValue == null) return null; return guardedValue as String; })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return guardedValue as String; })(),
      displayName: (() { final guardedValue = map['displayName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      enabled: (() { final guardedValue = map['enabled']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      forceDelete: (() { final guardedValue = map['forceDelete']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      labels: (() { final guardedValue = map['labels']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return guardedValue as String; })(),
      sensitiveLabels: (() { final guardedValue = map['sensitiveLabels']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetNotificationChannelSensitiveLabel>(guardedValue, (value) => GetNotificationChannelSensitiveLabel.fromMap((value as Map).cast<String, dynamic>())); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return guardedValue as String; })(),
      userLabels: (() { final guardedValue = map['userLabels']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      verificationStatus: (() { final guardedValue = map['verificationStatus']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
