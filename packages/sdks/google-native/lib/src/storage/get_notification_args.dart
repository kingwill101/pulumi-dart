// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_storage_v1_get_notification_args_doc}
/// Arguments for getNotification.
/// {@endtemplate}
/// {@macro pulumi_storage_v1_get_notification_args_doc}
class GetNotificationArgs {
  final pulumi.Input<String> bucket;
  final pulumi.Input<String> notification;
  final pulumi.Input<String>? userProject;

  /// Creates a new [GetNotificationArgs].
  /// [bucket] Required.
  /// [notification] Required.
  /// [userProject] Optional.
  const GetNotificationArgs({
    required this.bucket,
    required this.notification,
    this.userProject,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bucket': bucket,
      'notification': notification,
      'userProject': ?userProject,
    };
  }

  factory GetNotificationArgs.fromMap(Map<String, dynamic> map) {
    return GetNotificationArgs(
      bucket: pulumi.Input.fromValue(map['bucket'] as String),
      notification: pulumi.Input.fromValue(map['notification'] as String),
      userProject: (() { final guardedValue = map['userProject']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

