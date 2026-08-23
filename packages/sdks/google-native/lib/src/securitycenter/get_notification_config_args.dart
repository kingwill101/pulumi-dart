// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_securitycenter_v1_get_notification_config_args_doc}
/// Arguments for getNotificationConfig.
/// {@endtemplate}
/// {@macro pulumi_securitycenter_v1_get_notification_config_args_doc}
class GetNotificationConfigArgs {
  final pulumi.Input<String> notificationConfigId;
  final pulumi.Input<String>? project;

  /// Creates a new [GetNotificationConfigArgs].
  /// [notificationConfigId] Required.
  /// [project] Optional.
  const GetNotificationConfigArgs({
    required this.notificationConfigId,
    this.project,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'notificationConfigId': notificationConfigId,
      'project': ?project,
    };
  }

  factory GetNotificationConfigArgs.fromMap(Map<String, dynamic> map) {
    return GetNotificationConfigArgs(
      notificationConfigId: pulumi.Input.fromValue(map['notificationConfigId'] as String),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
