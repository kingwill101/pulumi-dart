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
    required pulumi.Output<String> notificationConfigId,
    pulumi.Output<String>? project,
  }) :
      notificationConfigId = pulumi.Input.asInput<String>(notificationConfigId),
      project = pulumi.Input.asOptionalInput<String>(project);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'notificationConfigId': notificationConfigId,
      'project': ?project,
    };
  }

  factory GetNotificationConfigArgs.fromMap(Map<String, dynamic> map) {
    return GetNotificationConfigArgs(
      notificationConfigId: pulumi.Output.create<String>(map['notificationConfigId'] as String),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
    );
  }
}

