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
  const WCFRelayAuthorizationRuleArgs({
    this.authorizationRuleName,
    required this.namespaceName,
    required this.relayName,
    required this.resourceGroupName,
    required this.rights,
  });

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
      authorizationRuleName: (() { final guardedValue = map['authorizationRuleName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      namespaceName: pulumi.Input.fromValue(map['namespaceName'] as String),
      relayName: pulumi.Input.fromValue(map['relayName'] as String),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      rights: pulumi.Input.fromValue((map['rights'] as List).cast<String>()),
    );
  }
}
