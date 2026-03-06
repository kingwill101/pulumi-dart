// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_servicebus_get_namespace_authorization_rule_get_namespace_authorization_rule_args_doc}
/// Arguments for getNamespaceAuthorizationRule.
/// {@endtemplate}
/// {@macro pulumi_servicebus_get_namespace_authorization_rule_get_namespace_authorization_rule_args_doc}
class GetNamespaceAuthorizationRuleArgs {
  /// Specifies the name of the ServiceBus Namespace Authorization Rule.
  final pulumi.Input<String> name;
  /// Specifies the ID of the ServiceBus Namespace where the Service Bus Namespace Authorization Rule exists.
  final pulumi.Input<String>? namespaceId;
  final pulumi.Input<String>? namespaceName;
  final pulumi.Input<String>? resourceGroupName;

  /// Creates a new [GetNamespaceAuthorizationRuleArgs].
  /// [name] Specifies the name of the ServiceBus Namespace Authorization Rule.
  /// [namespaceId] Specifies the ID of the ServiceBus Namespace where the Service Bus Namespace Authorization Rule exists.
  /// [namespaceName] Optional.
  /// [resourceGroupName] Optional.
  const GetNamespaceAuthorizationRuleArgs({
    required this.name,
    this.namespaceId,
    this.namespaceName,
    this.resourceGroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'namespaceId': ?namespaceId,
      'namespaceName': ?namespaceName,
      'resourceGroupName': ?resourceGroupName,
    };
  }

  factory GetNamespaceAuthorizationRuleArgs.fromMap(Map<String, dynamic> map) {
    return GetNamespaceAuthorizationRuleArgs(
      name: pulumi.Input.fromValue(map['name'] as String),
      namespaceId: (() { final guardedValue = map['namespaceId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      namespaceName: (() { final guardedValue = map['namespaceName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      resourceGroupName: (() { final guardedValue = map['resourceGroupName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

