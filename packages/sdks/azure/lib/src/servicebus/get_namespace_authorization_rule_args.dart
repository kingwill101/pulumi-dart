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
  GetNamespaceAuthorizationRuleArgs({
    required pulumi.Output<String> name,
    pulumi.Output<String>? namespaceId,
    pulumi.Output<String>? namespaceName,
    pulumi.Output<String>? resourceGroupName,
  }) :
      name = pulumi.Input.asInput<String>(name),
      namespaceId = pulumi.Input.asOptionalInput<String>(namespaceId),
      namespaceName = pulumi.Input.asOptionalInput<String>(namespaceName),
      resourceGroupName = pulumi.Input.asOptionalInput<String>(resourceGroupName);

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
      name: pulumi.Output.create<String>(map['name'] as String),
      namespaceId: map['namespaceId'] == null ? null : pulumi.Output.create<String>(map['namespaceId'] as String),
      namespaceName: map['namespaceName'] == null ? null : pulumi.Output.create<String>(map['namespaceName'] as String),
      resourceGroupName: map['resourceGroupName'] == null ? null : pulumi.Output.create<String>(map['resourceGroupName'] as String),
    );
  }
}

