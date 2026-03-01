// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_relay_wcfrelay_authorization_rule_args_doc}
/// The set of arguments for WCFRelayAuthorizationRule.
/// {@endtemplate}
/// {@macro pulumi_relay_wcfrelay_authorization_rule_args_doc}
class WCFRelayAuthorizationRuleArgs {
  /// The authorization rule name.
  final pulumi.Input<String>? authorizationRuleName;
  /// The namespace name
  final pulumi.Input<String> namespaceName;
  /// The relay name.
  final pulumi.Input<String> relayName;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// The rights associated with the rule.
  final pulumi.Input<List<String>> rights;

  /// Creates a new [WCFRelayAuthorizationRuleArgs].
  /// [authorizationRuleName] The authorization rule name.
  /// [namespaceName] The namespace name
  /// [relayName] The relay name.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [rights] The rights associated with the rule.
  WCFRelayAuthorizationRuleArgs({
    pulumi.Output<String>? authorizationRuleName,
    required pulumi.Output<String> namespaceName,
    required pulumi.Output<String> relayName,
    required pulumi.Output<String> resourceGroupName,
    required pulumi.Output<List<String>> rights,
  }) :
      authorizationRuleName = pulumi.Input.asOptionalInput<String>(authorizationRuleName),
      namespaceName = pulumi.Input.asInput<String>(namespaceName),
      relayName = pulumi.Input.asInput<String>(relayName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      rights = pulumi.Input.asInput<List<String>>(rights);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'authorizationRuleName': ?authorizationRuleName,
      'namespaceName': namespaceName,
      'relayName': relayName,
      'resourceGroupName': resourceGroupName,
      'rights': rights,
    };
  }

  factory WCFRelayAuthorizationRuleArgs.fromMap(Map<String, dynamic> map) {
    return WCFRelayAuthorizationRuleArgs(
      authorizationRuleName: map['authorizationRuleName'] == null ? null : pulumi.Output.create<String>(map['authorizationRuleName'] as String),
      namespaceName: pulumi.Output.create<String>(map['namespaceName'] as String),
      relayName: pulumi.Output.create<String>(map['relayName'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      rights: pulumi.Output.create<List<String>>((map['rights'] as List).cast<String>()),
    );
  }
}

