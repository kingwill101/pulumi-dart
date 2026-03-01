// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_notificationhubs_get_namespace_authorization_rule_args_doc}
/// Arguments for getNamespaceAuthorizationRule.
/// {@endtemplate}
/// {@macro pulumi_notificationhubs_get_namespace_authorization_rule_args_doc}
class GetNamespaceAuthorizationRuleArgs {
  /// Authorization Rule Name
  final pulumi.Input<String> authorizationRuleName;
  /// Namespace name
  final pulumi.Input<String> namespaceName;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetNamespaceAuthorizationRuleArgs].
  /// [authorizationRuleName] Authorization Rule Name
  /// [namespaceName] Namespace name
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  GetNamespaceAuthorizationRuleArgs({
    required pulumi.Output<String> authorizationRuleName,
    required pulumi.Output<String> namespaceName,
    required pulumi.Output<String> resourceGroupName,
  }) :
      authorizationRuleName = pulumi.Input.asInput<String>(authorizationRuleName),
      namespaceName = pulumi.Input.asInput<String>(namespaceName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'authorizationRuleName': authorizationRuleName,
      'namespaceName': namespaceName,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetNamespaceAuthorizationRuleArgs.fromMap(Map<String, dynamic> map) {
    return GetNamespaceAuthorizationRuleArgs(
      authorizationRuleName: pulumi.Output.create<String>(map['authorizationRuleName'] as String),
      namespaceName: pulumi.Output.create<String>(map['namespaceName'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
    );
  }
}

