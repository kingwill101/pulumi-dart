// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_monitoring_get_notification_channel_get_notification_channel_args_doc}
/// Arguments for getNotificationChannel.
/// {@endtemplate}
/// {@macro pulumi_monitoring_get_notification_channel_get_notification_channel_args_doc}
class GetNotificationChannelArgs {
  /// The display name for this notification channel.
  final pulumi.Input<String>? displayName;
  /// Labels (corresponding to the
  /// NotificationChannelDescriptor schema) to filter the notification channels by.
  final pulumi.Input<Map<String, String>>? labels;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;
  /// The type of the notification channel.
  ///
  /// - - -
  ///
  /// Other optional fields include:
  final pulumi.Input<String>? type;
  /// User-provided key-value labels to filter by.
  final pulumi.Input<Map<String, String>>? userLabels;

  /// Creates a new [GetNotificationChannelArgs].
  /// [displayName] The display name for this notification channel.
  /// [labels] Labels (corresponding to the
  /// [project] The ID of the project in which the resource belongs.
  /// [type] The type of the notification channel.
  /// [userLabels] User-provided key-value labels to filter by.
  const GetNotificationChannelArgs({
    this.displayName,
    this.labels,
    this.project,
    this.type,
    this.userLabels,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'displayName': ?displayName,
      'labels': ?labels,
      'project': ?project,
      'type': ?type,
      'userLabels': ?userLabels,
    };
  }

  factory GetNotificationChannelArgs.fromMap(Map<String, dynamic> map) {
    return GetNotificationChannelArgs(
      displayName: (() { final guardedValue = map['displayName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      labels: (() { final guardedValue = map['labels']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      userLabels: (() { final guardedValue = map['userLabels']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
    );
  }
}
