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
    pulumi.Output<bool>? listen,
    pulumi.Output<bool>? manage,
    pulumi.Output<String>? name,
    required pulumi.Output<String> namespaceName,
    required pulumi.Output<String> notificationHubName,
    required pulumi.Output<String> resourceGroupName,
    pulumi.Output<bool>? send,
  }) :
      listen = pulumi.Input.asOptionalInput<bool>(listen),
      manage = pulumi.Input.asOptionalInput<bool>(manage),
      name = pulumi.Input.asOptionalInput<String>(name),
      namespaceName = pulumi.Input.asInput<String>(namespaceName),
      notificationHubName = pulumi.Input.asInput<String>(notificationHubName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      send = pulumi.Input.asOptionalInput<bool>(send);

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
      listen: map['listen'] == null ? null : pulumi.Output.create<bool>(map['listen'] as bool),
      manage: map['manage'] == null ? null : pulumi.Output.create<bool>(map['manage'] as bool),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      namespaceName: pulumi.Output.create<String>(map['namespaceName'] as String),
      notificationHubName: pulumi.Output.create<String>(map['notificationHubName'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      send: map['send'] == null ? null : pulumi.Output.create<bool>(map['send'] as bool),
    );
  }
}

