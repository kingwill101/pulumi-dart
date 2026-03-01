// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_securitycenter_v1_get_folder_notification_config_args_doc}
/// Arguments for getFolderNotificationConfig.
/// {@endtemplate}
/// {@macro pulumi_securitycenter_v1_get_folder_notification_config_args_doc}
class GetFolderNotificationConfigArgs {
  final pulumi.Input<String> folderId;
  final pulumi.Input<String> notificationConfigId;

  /// Creates a new [GetFolderNotificationConfigArgs].
  /// [folderId] Required.
  /// [notificationConfigId] Required.
  GetFolderNotificationConfigArgs({
    required pulumi.Output<String> folderId,
    required pulumi.Output<String> notificationConfigId,
  }) :
      folderId = pulumi.Input.asInput<String>(folderId),
      notificationConfigId = pulumi.Input.asInput<String>(notificationConfigId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'folderId': folderId,
      'notificationConfigId': notificationConfigId,
    };
  }

  factory GetFolderNotificationConfigArgs.fromMap(Map<String, dynamic> map) {
    return GetFolderNotificationConfigArgs(
      folderId: pulumi.Output.create<String>(map['folderId'] as String),
      notificationConfigId: pulumi.Output.create<String>(map['notificationConfigId'] as String),
    );
  }
}

