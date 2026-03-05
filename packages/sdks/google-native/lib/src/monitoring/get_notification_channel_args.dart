// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_monitoring_v3_get_notification_channel_args_doc}
/// Arguments for getNotificationChannel.
/// {@endtemplate}
/// {@macro pulumi_monitoring_v3_get_notification_channel_args_doc}
class GetNotificationChannelArgs {
  final pulumi.Input<String> notificationChannelId;
  final pulumi.Input<String>? project;

  /// Creates a new [GetNotificationChannelArgs].
  /// [notificationChannelId] Required.
  /// [project] Optional.
  GetNotificationChannelArgs({
    required this.notificationChannelId,
    this.project,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'notificationChannelId': notificationChannelId,
      'project': ?project,
    };
  }

  factory GetNotificationChannelArgs.fromMap(Map<String, dynamic> map) {
    return GetNotificationChannelArgs(
      notificationChannelId: pulumi.Input.fromValue(map['notificationChannelId'] as String),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

