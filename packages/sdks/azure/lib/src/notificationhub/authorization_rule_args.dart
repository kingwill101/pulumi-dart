// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_notificationhub_authorization_rule_authorization_rule_args_doc}
/// The set of arguments for AuthorizationRule.
/// {@endtemplate}
/// {@macro pulumi_notificationhub_authorization_rule_authorization_rule_args_doc}
class AuthorizationRuleArgs {
  /// Does this Authorization Rule have Listen access to the Notification Hub? Defaults to `false`.
  final pulumi.Input<bool>? listen;
  /// Does this Authorization Rule have Manage access to the Notification Hub? Defaults to `false`.
  ///
  /// > **Note:** If `manage` is set to `true` then both `send` and `listen` must also be set to `true`.
  final pulumi.Input<bool>? manage;
  /// The name to use for this Authorization Rule. Changing this forces a new resource to be created.
  final pulumi.Input<String>? name;
  /// The name of the Notification Hub Namespace in which the Notification Hub exists. Changing this forces a new resource to be created.
  final pulumi.Input<String> namespaceName;
  /// The name of the Notification Hub for which the Authorization Rule should be created. Changing this forces a new resource to be created.
  final pulumi.Input<String> notificationHubName;
  /// The name of the Resource Group in which the Notification Hub Namespace exists. Changing this forces a new resource to be created.
  final pulumi.Input<String> resourceGroupName;
  /// Does this Authorization Rule have Send access to the Notification Hub? Defaults to `false`.
  final pulumi.Input<bool>? send;

  /// Creates a new [AuthorizationRuleArgs].
  /// [listen] Does this Authorization Rule have Listen access to the Notification Hub? Defaults to `false`.
  /// [manage] Does this Authorization Rule have Manage access to the Notification Hub? Defaults to `false`.
  /// [name] The name to use for this Authorization Rule. Changing this forces a new resource to be created.
  /// [namespaceName] The name of the Notification Hub Namespace in which the Notification Hub exists. Changing this forces a new resource to be created.
  /// [notificationHubName] The name of the Notification Hub for which the Authorization Rule should be created. Changing this forces a new resource to be created.
  /// [resourceGroupName] The name of the Resource Group in which the Notification Hub Namespace exists. Changing this forces a new resource to be created.
  /// [send] Does this Authorization Rule have Send access to the Notification Hub? Defaults to `false`.
  AuthorizationRuleArgs({
    this.listen,
    this.manage,
    this.name,
    required this.namespaceName,
    required this.notificationHubName,
    required this.resourceGroupName,
    this.send,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'listen': ?listen,
      'manage': ?manage,
      'name': ?name,
      'namespaceName': namespaceName,
      'notificationHubName': notificationHubName,
      'resourceGroupName': resourceGroupName,
      'send': ?send,
    };
  }

  factory AuthorizationRuleArgs.fromMap(Map<String, dynamic> map) {
    return AuthorizationRuleArgs(
      listen: map['listen'] == null ? null : (map['listen']! as bool).input(),
      manage: map['manage'] == null ? null : (map['manage']! as bool).input(),
      name: map['name'] == null ? null : (map['name']! as String).input(),
      namespaceName: (map['namespaceName'] as String).input(),
      notificationHubName: (map['notificationHubName'] as String).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
      send: map['send'] == null ? null : (map['send']! as bool).input(),
    );
  }
}

