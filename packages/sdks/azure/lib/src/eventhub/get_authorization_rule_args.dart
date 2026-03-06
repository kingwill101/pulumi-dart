// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_eventhub_get_authorization_rule_get_authorization_rule_args_doc}
/// Arguments for getAuthorizationRule.
/// {@endtemplate}
/// {@macro pulumi_eventhub_get_authorization_rule_get_authorization_rule_args_doc}
class GetAuthorizationRuleArgs {
  /// Specifies the name of the EventHub.
  final pulumi.Input<String> eventhubName;
  final pulumi.Input<bool>? listen;
  final pulumi.Input<bool>? manage;
  /// Specifies the name of the EventHub Authorization Rule resource. be created.
  final pulumi.Input<String> name;
  /// Specifies the name of the grandparent EventHub Namespace.
  final pulumi.Input<String> namespaceName;
  /// The name of the resource group in which the EventHub Authorization Rule's grandparent Namespace exists.
  final pulumi.Input<String> resourceGroupName;
  final pulumi.Input<bool>? send;

  /// Creates a new [GetAuthorizationRuleArgs].
  /// [eventhubName] Specifies the name of the EventHub.
  /// [listen] Optional.
  /// [manage] Optional.
  /// [name] Specifies the name of the EventHub Authorization Rule resource. be created.
  /// [namespaceName] Specifies the name of the grandparent EventHub Namespace.
  /// [resourceGroupName] The name of the resource group in which the EventHub Authorization Rule's grandparent Namespace exists.
  /// [send] Optional.
  const GetAuthorizationRuleArgs({
    required this.eventhubName,
    this.listen,
    this.manage,
    required this.name,
    required this.namespaceName,
    required this.resourceGroupName,
    this.send,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'eventhubName': eventhubName,
      'listen': ?listen,
      'manage': ?manage,
      'name': name,
      'namespaceName': namespaceName,
      'resourceGroupName': resourceGroupName,
      'send': ?send,
    };
  }

  factory GetAuthorizationRuleArgs.fromMap(Map<String, dynamic> map) {
    return GetAuthorizationRuleArgs(
      eventhubName: pulumi.Input.fromValue(map['eventhubName'] as String),
      listen: (() { final guardedValue = map['listen']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      manage: (() { final guardedValue = map['manage']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      name: pulumi.Input.fromValue(map['name'] as String),
      namespaceName: pulumi.Input.fromValue(map['namespaceName'] as String),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      send: (() { final guardedValue = map['send']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
    );
  }
}

