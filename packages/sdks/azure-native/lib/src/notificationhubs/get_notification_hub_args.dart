// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_notificationhubs_get_notification_hub_args_doc}
/// Arguments for getNotificationHub.
/// {@endtemplate}
/// {@macro pulumi_notificationhubs_get_notification_hub_args_doc}
class GetNotificationHubArgs {
  /// Namespace name
  final pulumi.Input<String> namespaceName;
  /// Notification Hub name
  final pulumi.Input<String> notificationHubName;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetNotificationHubArgs].
  /// [namespaceName] Namespace name
  /// [notificationHubName] Notification Hub name
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  GetNotificationHubArgs({
    required pulumi.Output<String> namespaceName,
    required pulumi.Output<String> notificationHubName,
    required pulumi.Output<String> resourceGroupName,
  }) :
      namespaceName = pulumi.Input.asInput<String>(namespaceName),
      notificationHubName = pulumi.Input.asInput<String>(notificationHubName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'namespaceName': namespaceName,
      'notificationHubName': notificationHubName,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetNotificationHubArgs.fromMap(Map<String, dynamic> map) {
    return GetNotificationHubArgs(
      namespaceName: pulumi.Output.create<String>(map['namespaceName'] as String),
      notificationHubName: pulumi.Output.create<String>(map['notificationHubName'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
    );
  }
}

