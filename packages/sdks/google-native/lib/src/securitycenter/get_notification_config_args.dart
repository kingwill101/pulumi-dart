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
  GetNotificationConfigArgs({
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
      notificationConfigId: (map['notificationConfigId'] as String).input(),
      project: map['project'] == null ? null : (map['project']! as String).input(),
    );
  }
}

