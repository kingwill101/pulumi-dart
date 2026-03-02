// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'governance_rule_email_notification.dart';
import 'governance_rule_owner_source.dart';

/// {@template pulumi_security_governance_rule_args_doc}
/// The set of arguments for GovernanceRule.
/// {@endtemplate}
/// {@macro pulumi_security_governance_rule_args_doc}
class GovernanceRuleArgs {
  /// Description of the governance rule
  final pulumi.Input<String>? description;
  /// Display name of the governance rule
  final pulumi.Input<String> displayName;
  /// Excluded scopes, filter out the descendants of the scope (on management scopes)
  final pulumi.Input<List<String>>? excludedScopes;
  /// The email notifications settings for the governance rule, states whether to disable notifications for mangers and owners
  final pulumi.Input<GovernanceRuleEmailNotification>? governanceEmailNotification;
  /// Defines whether the rule is management scope rule (master connector as a single scope or management scope)
  final pulumi.Input<bool>? includeMemberScopes;
  /// Defines whether the rule is active/inactive
  final pulumi.Input<bool>? isDisabled;
  /// Defines whether there is a grace period on the governance rule
  final pulumi.Input<bool>? isGracePeriod;
  /// The owner source for the governance rule - e.g. Manually by user@contoso.com - see example
  final pulumi.Input<GovernanceRuleOwnerSource> ownerSource;
  /// Governance rule remediation timeframe - this is the time that will affect on the grace-period duration e.g. 7.00:00:00 - means 7 days
  final pulumi.Input<String>? remediationTimeframe;
  /// The governance rule key - unique key for the standard governance rule (GUID)
  final pulumi.Input<String>? ruleId;
  /// The governance rule priority, priority to the lower number. Rules with the same priority on the same scope will not be allowed
  final pulumi.Input<int> rulePriority;
  /// The rule type of the governance rule, defines the source of the rule e.g. Integrated
  final pulumi.Input<String> ruleType;
  /// The scope of the Governance rules. Valid scopes are: management group (format: 'providers/Microsoft.Management/managementGroups/{managementGroup}'), subscription (format: 'subscriptions/{subscriptionId}'), or security connector (format: 'subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Security/securityConnectors/{securityConnectorName})'
  final pulumi.Input<String> scope;
  /// The governance rule source, what the rule affects, e.g. Assessments
  final pulumi.Input<String> sourceResourceType;

  /// Creates a new [GovernanceRuleArgs].
  /// [description] Description of the governance rule
  /// [displayName] Display name of the governance rule
  /// [excludedScopes] Excluded scopes, filter out the descendants of the scope (on management scopes)
  /// [governanceEmailNotification] The email notifications settings for the governance rule, states whether to disable notifications for mangers and owners
  /// [includeMemberScopes] Defines whether the rule is management scope rule (master connector as a single scope or management scope)
  /// [isDisabled] Defines whether the rule is active/inactive
  /// [isGracePeriod] Defines whether there is a grace period on the governance rule
  /// [ownerSource] The owner source for the governance rule - e.g. Manually by user@contoso.com - see example
  /// [remediationTimeframe] Governance rule remediation timeframe - this is the time that will affect on the grace-period duration e.g. 7.00:00:00 - means 7 days
  /// [ruleId] The governance rule key - unique key for the standard governance rule (GUID)
  /// [rulePriority] The governance rule priority, priority to the lower number. Rules with the same priority on the same scope will not be allowed
  /// [ruleType] The rule type of the governance rule, defines the source of the rule e.g. Integrated
  /// [scope] The scope of the Governance rules. Valid scopes are: management group (format: 'providers/Microsoft.Management/managementGroups/{managementGroup}'), subscription (format: 'subscriptions/{subscriptionId}'), or security connector (format: 'subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Security/securityConnectors/{securityConnectorName})'
  /// [sourceResourceType] The governance rule source, what the rule affects, e.g. Assessments
  GovernanceRuleArgs({
    this.description,
    required this.displayName,
    this.excludedScopes,
    this.governanceEmailNotification,
    this.includeMemberScopes,
    this.isDisabled,
    this.isGracePeriod,
    required this.ownerSource,
    this.remediationTimeframe,
    this.ruleId,
    required this.rulePriority,
    required this.ruleType,
    required this.scope,
    required this.sourceResourceType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'displayName': displayName,
      'excludedScopes': ?excludedScopes,
      'governanceEmailNotification': ?pulumi.Input.mapOptionalInputValue<GovernanceRuleEmailNotification, Map<String, dynamic>>(governanceEmailNotification, (value) => value.toMap()),
      'includeMemberScopes': ?includeMemberScopes,
      'isDisabled': ?isDisabled,
      'isGracePeriod': ?isGracePeriod,
      'ownerSource': pulumi.Input.mapInputValue<GovernanceRuleOwnerSource, Map<String, dynamic>>(ownerSource, (value) => value.toMap()),
      'remediationTimeframe': ?remediationTimeframe,
      'ruleId': ?ruleId,
      'rulePriority': rulePriority,
      'ruleType': ruleType,
      'scope': scope,
      'sourceResourceType': sourceResourceType,
    };
  }

  factory GovernanceRuleArgs.fromMap(Map<String, dynamic> map) {
    return GovernanceRuleArgs(
      description: map['description'] == null ? null : (map['description']! as String).input(),
      displayName: (map['displayName'] as String).input(),
      excludedScopes: map['excludedScopes'] == null ? null : ((map['excludedScopes']! as List).cast<String>()).input(),
      governanceEmailNotification: map['governanceEmailNotification'] == null ? null : (GovernanceRuleEmailNotification.fromMap((map['governanceEmailNotification']! as Map).cast<String, dynamic>())).input(),
      includeMemberScopes: map['includeMemberScopes'] == null ? null : (map['includeMemberScopes']! as bool).input(),
      isDisabled: map['isDisabled'] == null ? null : (map['isDisabled']! as bool).input(),
      isGracePeriod: map['isGracePeriod'] == null ? null : (map['isGracePeriod']! as bool).input(),
      ownerSource: (GovernanceRuleOwnerSource.fromMap((map['ownerSource'] as Map).cast<String, dynamic>())).input(),
      remediationTimeframe: map['remediationTimeframe'] == null ? null : (map['remediationTimeframe']! as String).input(),
      ruleId: map['ruleId'] == null ? null : (map['ruleId']! as String).input(),
      rulePriority: (map['rulePriority'] as int).input(),
      ruleType: (map['ruleType'] as String).input(),
      scope: (map['scope'] as String).input(),
      sourceResourceType: (map['sourceResourceType'] as String).input(),
    );
  }
}

