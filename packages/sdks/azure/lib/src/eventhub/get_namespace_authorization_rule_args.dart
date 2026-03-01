// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_eventhub_get_namespace_authorization_rule_get_namespace_authorization_rule_args_doc}
/// Arguments for getNamespaceAuthorizationRule.
/// {@endtemplate}
/// {@macro pulumi_eventhub_get_namespace_authorization_rule_get_namespace_authorization_rule_args_doc}
class GetNamespaceAuthorizationRuleArgs {
  /// The name of the EventHub Authorization Rule resource.
  final pulumi.Input<String> name;
  /// Specifies the name of the EventHub Namespace.
  final pulumi.Input<String> namespaceName;
  /// The name of the resource group in which the EventHub Namespace exists.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetNamespaceAuthorizationRuleArgs].
  /// [name] The name of the EventHub Authorization Rule resource.
  /// [namespaceName] Specifies the name of the EventHub Namespace.
  /// [resourceGroupName] The name of the resource group in which the EventHub Namespace exists.
  GetNamespaceAuthorizationRuleArgs({
    required pulumi.Output<String> name,
    required pulumi.Output<String> namespaceName,
    required pulumi.Output<String> resourceGroupName,
  }) :
      name = pulumi.Input.asInput<String>(name),
      namespaceName = pulumi.Input.asInput<String>(namespaceName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'namespaceName': namespaceName,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetNamespaceAuthorizationRuleArgs.fromMap(Map<String, dynamic> map) {
    return GetNamespaceAuthorizationRuleArgs(
      name: pulumi.Output.create<String>(map['name'] as String),
      namespaceName: pulumi.Output.create<String>(map['namespaceName'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
    );
  }
}

