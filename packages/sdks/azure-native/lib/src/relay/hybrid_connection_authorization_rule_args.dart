// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_relay_hybrid_connection_authorization_rule_args_doc}
/// The set of arguments for HybridConnectionAuthorizationRule.
/// {@endtemplate}
/// {@macro pulumi_relay_hybrid_connection_authorization_rule_args_doc}
class HybridConnectionAuthorizationRuleArgs {
  /// The authorization rule name.
  final pulumi.Input<String>? authorizationRuleName;
  /// The hybrid connection name.
  final pulumi.Input<String> hybridConnectionName;
  /// The namespace name
  final pulumi.Input<String> namespaceName;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// The rights associated with the rule.
  final pulumi.Input<List<String>> rights;

  /// Creates a new [HybridConnectionAuthorizationRuleArgs].
  /// [authorizationRuleName] The authorization rule name.
  /// [hybridConnectionName] The hybrid connection name.
  /// [namespaceName] The namespace name
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [rights] The rights associated with the rule.
  HybridConnectionAuthorizationRuleArgs({
    pulumi.Output<String>? authorizationRuleName,
    required pulumi.Output<String> hybridConnectionName,
    required pulumi.Output<String> namespaceName,
    required pulumi.Output<String> resourceGroupName,
    required pulumi.Output<List<String>> rights,
  }) :
      authorizationRuleName = pulumi.Input.asOptionalInput<String>(authorizationRuleName),
      hybridConnectionName = pulumi.Input.asInput<String>(hybridConnectionName),
      namespaceName = pulumi.Input.asInput<String>(namespaceName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      rights = pulumi.Input.asInput<List<String>>(rights);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'authorizationRuleName': ?authorizationRuleName,
      'hybridConnectionName': hybridConnectionName,
      'namespaceName': namespaceName,
      'resourceGroupName': resourceGroupName,
      'rights': rights,
    };
  }

  factory HybridConnectionAuthorizationRuleArgs.fromMap(Map<String, dynamic> map) {
    return HybridConnectionAuthorizationRuleArgs(
      authorizationRuleName: map['authorizationRuleName'] == null ? null : pulumi.Output.create<String>(map['authorizationRuleName'] as String),
      hybridConnectionName: pulumi.Output.create<String>(map['hybridConnectionName'] as String),
      namespaceName: pulumi.Output.create<String>(map['namespaceName'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      rights: pulumi.Output.create<List<String>>((map['rights'] as List).cast<String>()),
    );
  }
}

