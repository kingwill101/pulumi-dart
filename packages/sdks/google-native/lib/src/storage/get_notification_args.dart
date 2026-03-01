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
  GetNotificationArgs({
    required pulumi.Output<String> bucket,
    required pulumi.Output<String> notification,
    pulumi.Output<String>? userProject,
  }) :
      bucket = pulumi.Input.asInput<String>(bucket),
      notification = pulumi.Input.asInput<String>(notification),
      userProject = pulumi.Input.asOptionalInput<String>(userProject);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bucket': bucket,
      'notification': notification,
      'userProject': ?userProject,
    };
  }

  factory GetNotificationArgs.fromMap(Map<String, dynamic> map) {
    return GetNotificationArgs(
      bucket: pulumi.Output.create<String>(map['bucket'] as String),
      notification: pulumi.Output.create<String>(map['notification'] as String),
      userProject: map['userProject'] == null ? null : pulumi.Output.create<String>(map['userProject'] as String),
    );
  }
}

