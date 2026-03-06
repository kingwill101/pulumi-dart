// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_security_get_governance_rule_args_doc}
/// Arguments for getGovernanceRule.
/// {@endtemplate}
/// {@macro pulumi_security_get_governance_rule_args_doc}
class GetGovernanceRuleArgs {
  /// The governance rule key - unique key for the standard governance rule (GUID)
  final pulumi.Input<String> ruleId;
  /// The scope of the Governance rules. Valid scopes are: management group (format: 'providers/Microsoft.Management/managementGroups/{managementGroup}'), subscription (format: 'subscriptions/{subscriptionId}'), or security connector (format: 'subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Security/securityConnectors/{securityConnectorName})'
  final pulumi.Input<String> scope;

  /// Creates a new [GetGovernanceRuleArgs].
  /// [ruleId] The governance rule key - unique key for the standard governance rule (GUID)
  /// [scope] The scope of the Governance rules. Valid scopes are: management group (format: 'providers/Microsoft.Management/managementGroups/{managementGroup}'), subscription (format: 'subscriptions/{subscriptionId}'), or security connector (format: 'subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Security/securityConnectors/{securityConnectorName})'
  const GetGovernanceRuleArgs({
    required this.ruleId,
    required this.scope,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ruleId': ruleId,
      'scope': scope,
    };
  }

  factory GetGovernanceRuleArgs.fromMap(Map<String, dynamic> map) {
    return GetGovernanceRuleArgs(
      ruleId: pulumi.Input.fromValue(map['ruleId'] as String),
      scope: pulumi.Input.fromValue(map['scope'] as String),
    );
  }
}

