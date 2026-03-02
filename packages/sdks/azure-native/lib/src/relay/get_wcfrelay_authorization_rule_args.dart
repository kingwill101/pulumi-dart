// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_relay_get_wcfrelay_authorization_rule_args_doc}
/// Arguments for getWCFRelayAuthorizationRule.
/// {@endtemplate}
/// {@macro pulumi_relay_get_wcfrelay_authorization_rule_args_doc}
class GetWCFRelayAuthorizationRuleArgs {
  /// The authorization rule name.
  final pulumi.Input<String> authorizationRuleName;
  /// The namespace name
  final pulumi.Input<String> namespaceName;
  /// The relay name.
  final pulumi.Input<String> relayName;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetWCFRelayAuthorizationRuleArgs].
  /// [authorizationRuleName] The authorization rule name.
  /// [namespaceName] The namespace name
  /// [relayName] The relay name.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  GetWCFRelayAuthorizationRuleArgs({
    required this.authorizationRuleName,
    required this.namespaceName,
    required this.relayName,
    required this.resourceGroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'authorizationRuleName': authorizationRuleName,
      'namespaceName': namespaceName,
      'relayName': relayName,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetWCFRelayAuthorizationRuleArgs.fromMap(Map<String, dynamic> map) {
    return GetWCFRelayAuthorizationRuleArgs(
      authorizationRuleName: (map['authorizationRuleName'] as String).input(),
      namespaceName: (map['namespaceName'] as String).input(),
      relayName: (map['relayName'] as String).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
    );
  }
}

