// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_eventhub_authorization_rule_authorization_rule_args_doc}
/// The set of arguments for AuthorizationRule.
/// {@endtemplate}
/// {@macro pulumi_eventhub_authorization_rule_authorization_rule_args_doc}
class AuthorizationRuleArgs {
  /// Specifies the name of the EventHub. Changing this forces a new resource to be created.
  final pulumi.Input<String> eventhubName;
  /// Does this Authorization Rule have permissions to Listen to the Event Hub? Defaults to `false`.
  final pulumi.Input<bool>? listen;
  /// Does this Authorization Rule have permissions to Manage to the Event Hub? When this property is `true` - both `listen` and `send` must be too. Defaults to `false`.
  final pulumi.Input<bool>? manage;
  /// Specifies the name of the EventHub Authorization Rule resource. Changing this forces a new resource to be created.
  final pulumi.Input<String>? name;
  /// Specifies the name of the grandparent EventHub Namespace. Changing this forces a new resource to be created.
  final pulumi.Input<String> namespaceName;
  /// The name of the resource group in which the EventHub Namespace exists. Changing this forces a new resource to be created.
  ///
  /// > **Note:** At least one of the 3 permissions below needs to be set.
  final pulumi.Input<String> resourceGroupName;
  /// Does this Authorization Rule have permissions to Send to the Event Hub? Defaults to `false`.
  final pulumi.Input<bool>? send;

  /// Creates a new [AuthorizationRuleArgs].
  /// [eventhubName] Specifies the name of the EventHub. Changing this forces a new resource to be created.
  /// [listen] Does this Authorization Rule have permissions to Listen to the Event Hub? Defaults to `false`.
  /// [manage] Does this Authorization Rule have permissions to Manage to the Event Hub? When this property is `true` - both `listen` and `send` must be too. Defaults to `false`.
  /// [name] Specifies the name of the EventHub Authorization Rule resource. Changing this forces a new resource to be created.
  /// [namespaceName] Specifies the name of the grandparent EventHub Namespace. Changing this forces a new resource to be created.
  /// [resourceGroupName] The name of the resource group in which the EventHub Namespace exists. Changing this forces a new resource to be created.
  /// [send] Does this Authorization Rule have permissions to Send to the Event Hub? Defaults to `false`.
  AuthorizationRuleArgs({
    required this.eventhubName,
    this.listen,
    this.manage,
    this.name,
    required this.namespaceName,
    required this.resourceGroupName,
    this.send,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'eventhubName': eventhubName,
      'listen': ?listen,
      'manage': ?manage,
      'name': ?name,
      'namespaceName': namespaceName,
      'resourceGroupName': resourceGroupName,
      'send': ?send,
    };
  }

  factory AuthorizationRuleArgs.fromMap(Map<String, dynamic> map) {
    return AuthorizationRuleArgs(
      eventhubName: (map['eventhubName'] as String).input(),
      listen: map['listen'] == null ? null : (map['listen'] as bool).input(),
      manage: map['manage'] == null ? null : (map['manage'] as bool).input(),
      name: map['name'] == null ? null : (map['name'] as String).input(),
      namespaceName: (map['namespaceName'] as String).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
      send: map['send'] == null ? null : (map['send'] as bool).input(),
    );
  }
}

