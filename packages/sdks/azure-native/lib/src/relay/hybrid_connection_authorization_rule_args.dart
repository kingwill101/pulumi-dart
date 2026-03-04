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
    this.authorizationRuleName,
    required this.hybridConnectionName,
    required this.namespaceName,
    required this.resourceGroupName,
    required this.rights,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'authorizationRuleName': ?authorizationRuleName,
      'hybridConnectionName': hybridConnectionName,
      'namespaceName': namespaceName,
      'resourceGroupName': resourceGroupName,
      'rights': rights,
    };
  }

  factory HybridConnectionAuthorizationRuleArgs.fromMap(
    Map<String, dynamic> map,
  ) {
    return HybridConnectionAuthorizationRuleArgs(
      authorizationRuleName: (() {
        final guardedValue = map['authorizationRuleName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      hybridConnectionName: pulumi.Input.fromValue(
        map['hybridConnectionName'] as String,
      ),
      namespaceName: pulumi.Input.fromValue(map['namespaceName'] as String),
      resourceGroupName: pulumi.Input.fromValue(
        map['resourceGroupName'] as String,
      ),
      rights: pulumi.Input.fromValue((map['rights'] as List).cast<String>()),
    );
  }
}
