// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_notificationhubs_get_notification_hub_pns_credentials_args_doc}
/// Arguments for getNotificationHubPnsCredentials.
/// {@endtemplate}
/// {@macro pulumi_notificationhubs_get_notification_hub_pns_credentials_args_doc}
class GetNotificationHubPnsCredentialsArgs {
  /// Namespace name
  final pulumi.Input<String> namespaceName;
  /// Notification Hub name
  final pulumi.Input<String> notificationHubName;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetNotificationHubPnsCredentialsArgs].
  /// [namespaceName] Namespace name
  /// [notificationHubName] Notification Hub name
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  GetNotificationHubPnsCredentialsArgs({
    required this.namespaceName,
    required this.notificationHubName,
    required this.resourceGroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'namespaceName': namespaceName,
      'notificationHubName': notificationHubName,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetNotificationHubPnsCredentialsArgs.fromMap(Map<String, dynamic> map) {
    return GetNotificationHubPnsCredentialsArgs(
      namespaceName: pulumi.Input.fromValue(map['namespaceName'] as String),
      notificationHubName: pulumi.Input.fromValue(map['notificationHubName'] as String),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
    );
  }
}

