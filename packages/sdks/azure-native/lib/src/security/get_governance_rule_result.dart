// ignore_for_file: unused_element, unnecessary_cast

import 'governance_rule_email_notification_response.dart';
import 'governance_rule_metadata_response.dart';
import 'governance_rule_owner_source_response.dart';
import 'system_data_response.dart';

/// Result data returned by getGovernanceRule.
class GetGovernanceRuleResult {
  /// The Azure API version of the resource.
  final String? azureApiVersion;
  /// The governance rule conditionSets - see examples
  final List<dynamic>? conditionSets;
  /// Description of the governance rule
  final String? description;
  /// Display name of the governance rule
  final String? displayName;
  /// Excluded scopes, filter out the descendants of the scope (on management scopes)
  final List<String>? excludedScopes;
  /// The email notifications settings for the governance rule, states whether to disable notifications for mangers and owners
  final GovernanceRuleEmailNotificationResponse? governanceEmailNotification;
  /// Fully qualified resource ID for the resource. E.g. "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}"
  final String? id;
  /// Defines whether the rule is management scope rule (master connector as a single scope or management scope)
  final bool? includeMemberScopes;
  /// Defines whether the rule is active/inactive
  final bool? isDisabled;
  /// Defines whether there is a grace period on the governance rule
  final bool? isGracePeriod;
  /// The governance rule metadata
  final GovernanceRuleMetadataResponse? metadata;
  /// The name of the resource
  final String? name;
  /// The owner source for the governance rule - e.g. Manually by user@contoso.com - see example
  final GovernanceRuleOwnerSourceResponse? ownerSource;
  /// Governance rule remediation timeframe - this is the time that will affect on the grace-period duration e.g. 7.00:00:00 - means 7 days
  final String? remediationTimeframe;
  /// The governance rule priority, priority to the lower number. Rules with the same priority on the same scope will not be allowed
  final int? rulePriority;
  /// The rule type of the governance rule, defines the source of the rule e.g. Integrated
  final String? ruleType;
  /// The governance rule source, what the rule affects, e.g. Assessments
  final String? sourceResourceType;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  final SystemDataResponse? systemData;
  /// The tenantId (GUID)
  final String? tenantId;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  final String? type;

  /// Creates a new [GetGovernanceRuleResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [conditionSets] The governance rule conditionSets - see examples
  /// [description] Description of the governance rule
  /// [displayName] Display name of the governance rule
  /// [excludedScopes] Excluded scopes, filter out the descendants of the scope (on management scopes)
  /// [governanceEmailNotification] The email notifications settings for the governance rule, states whether to disable notifications for mangers and owners
  /// [id] Fully qualified resource ID for the resource. E.g. "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}"
  /// [includeMemberScopes] Defines whether the rule is management scope rule (master connector as a single scope or management scope)
  /// [isDisabled] Defines whether the rule is active/inactive
  /// [isGracePeriod] Defines whether there is a grace period on the governance rule
  /// [metadata] The governance rule metadata
  /// [name] The name of the resource
  /// [ownerSource] The owner source for the governance rule - e.g. Manually by user@contoso.com - see example
  /// [remediationTimeframe] Governance rule remediation timeframe - this is the time that will affect on the grace-period duration e.g. 7.00:00:00 - means 7 days
  /// [rulePriority] The governance rule priority, priority to the lower number. Rules with the same priority on the same scope will not be allowed
  /// [ruleType] The rule type of the governance rule, defines the source of the rule e.g. Integrated
  /// [sourceResourceType] The governance rule source, what the rule affects, e.g. Assessments
  /// [systemData] Azure Resource Manager metadata containing createdBy and modifiedBy information.
  /// [tenantId] The tenantId (GUID)
  /// [type] The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  const GetGovernanceRuleResult({
    this.azureApiVersion,
    this.conditionSets,
    this.description,
    this.displayName,
    this.excludedScopes,
    this.governanceEmailNotification,
    this.id,
    this.includeMemberScopes,
    this.isDisabled,
    this.isGracePeriod,
    this.metadata,
    this.name,
    this.ownerSource,
    this.remediationTimeframe,
    this.rulePriority,
    this.ruleType,
    this.sourceResourceType,
    this.systemData,
    this.tenantId,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': ?azureApiVersion,
      'conditionSets': ?conditionSets,
      'description': ?description,
      'displayName': ?displayName,
      'excludedScopes': ?excludedScopes,
      'governanceEmailNotification': ?governanceEmailNotification?.toMap(),
      'id': ?id,
      'includeMemberScopes': ?includeMemberScopes,
      'isDisabled': ?isDisabled,
      'isGracePeriod': ?isGracePeriod,
      'metadata': ?metadata?.toMap(),
      'name': ?name,
      'ownerSource': ?ownerSource?.toMap(),
      'remediationTimeframe': ?remediationTimeframe,
      'rulePriority': ?rulePriority,
      'ruleType': ?ruleType,
      'sourceResourceType': ?sourceResourceType,
      'systemData': ?systemData?.toMap(),
      'tenantId': ?tenantId,
      'type': ?type,
    };
  }

  factory GetGovernanceRuleResult.fromMap(Map<String, dynamic> map) {
    return GetGovernanceRuleResult(
      azureApiVersion: (() { final guardedValue = map['azureApiVersion']; if (guardedValue == null) return null; return guardedValue as String; })(),
      conditionSets: (() { final guardedValue = map['conditionSets']; if (guardedValue == null) return null; return (guardedValue as List).cast<dynamic>(); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return guardedValue as String; })(),
      displayName: (() { final guardedValue = map['displayName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      excludedScopes: (() { final guardedValue = map['excludedScopes']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      governanceEmailNotification: (() { final guardedValue = map['governanceEmailNotification']; if (guardedValue == null) return null; return GovernanceRuleEmailNotificationResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      includeMemberScopes: (() { final guardedValue = map['includeMemberScopes']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      isDisabled: (() { final guardedValue = map['isDisabled']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      isGracePeriod: (() { final guardedValue = map['isGracePeriod']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      metadata: (() { final guardedValue = map['metadata']; if (guardedValue == null) return null; return GovernanceRuleMetadataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      ownerSource: (() { final guardedValue = map['ownerSource']; if (guardedValue == null) return null; return GovernanceRuleOwnerSourceResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      remediationTimeframe: (() { final guardedValue = map['remediationTimeframe']; if (guardedValue == null) return null; return guardedValue as String; })(),
      rulePriority: (() { final guardedValue = map['rulePriority']; if (guardedValue == null) return null; return ((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue); })(),
      ruleType: (() { final guardedValue = map['ruleType']; if (guardedValue == null) return null; return guardedValue as String; })(),
      sourceResourceType: (() { final guardedValue = map['sourceResourceType']; if (guardedValue == null) return null; return guardedValue as String; })(),
      systemData: (() { final guardedValue = map['systemData']; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      tenantId: (() { final guardedValue = map['tenantId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
