// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_notificationhubs_get_notification_hub_authorization_rule_args_doc}
/// Arguments for getNotificationHubAuthorizationRule.
/// {@endtemplate}
/// {@macro pulumi_notificationhubs_get_notification_hub_authorization_rule_args_doc}
class GetNotificationHubAuthorizationRuleArgs {
  /// Authorization Rule Name
  final pulumi.Input<String> authorizationRuleName;

  /// Namespace name
  final pulumi.Input<String> namespaceName;

  /// Notification Hub name
  final pulumi.Input<String> notificationHubName;

  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetNotificationHubAuthorizationRuleArgs].
  /// [authorizationRuleName] Authorization Rule Name
  /// [namespaceName] Namespace name
  /// [notificationHubName] Notification Hub name
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  GetNotificationHubAuthorizationRuleArgs({
    required this.authorizationRuleName,
    required this.namespaceName,
    required this.notificationHubName,
    required this.resourceGroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'authorizationRuleName': authorizationRuleName,
      'namespaceName': namespaceName,
      'notificationHubName': notificationHubName,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetNotificationHubAuthorizationRuleArgs.fromMap(
    Map<String, dynamic> map,
  ) {
    return GetNotificationHubAuthorizationRuleArgs(
      authorizationRuleName: pulumi.Input.fromValue(
        map['authorizationRuleName'] as String,
      ),
      namespaceName: pulumi.Input.fromValue(map['namespaceName'] as String),
      notificationHubName: pulumi.Input.fromValue(
        map['notificationHubName'] as String,
      ),
      resourceGroupName: pulumi.Input.fromValue(
        map['resourceGroupName'] as String,
      ),
    );
  }
}
