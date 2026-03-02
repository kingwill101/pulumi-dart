// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'governance_assignment_additional_data.dart';
import 'governance_email_notification.dart';
import 'remediation_eta.dart';

/// {@template pulumi_security_governance_assignment_args_doc}
/// The set of arguments for GovernanceAssignment.
/// {@endtemplate}
/// {@macro pulumi_security_governance_assignment_args_doc}
class GovernanceAssignmentArgs {
  /// The additional data for the governance assignment - e.g. links to ticket (optional), see example
  final pulumi.Input<GovernanceAssignmentAdditionalData>? additionalData;
  /// The Assessment Key - A unique key for the assessment type
  final pulumi.Input<String> assessmentName;
  /// The governance assignment key - the assessment key of the required governance assignment
  final pulumi.Input<String>? assignmentKey;
  /// The email notifications settings for the governance rule, states whether to disable notifications for mangers and owners
  final pulumi.Input<GovernanceEmailNotification>? governanceEmailNotification;
  /// Defines whether there is a grace period on the governance assignment
  final pulumi.Input<bool>? isGracePeriod;
  /// The Owner for the governance assignment - e.g. user@contoso.com - see example
  final pulumi.Input<String>? owner;
  /// The remediation due-date - after this date Secure Score will be affected (in case of  active grace-period)
  final pulumi.Input<String> remediationDueDate;
  /// The ETA (estimated time of arrival) for remediation (optional), see example
  final pulumi.Input<RemediationEta>? remediationEta;
  /// The scope of the Governance assignments. Valid scopes are: subscription (format: 'subscriptions/{subscriptionId}'), or security connector (format: 'subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Security/securityConnectors/{securityConnectorName})'
  final pulumi.Input<String> scope;

  /// Creates a new [GovernanceAssignmentArgs].
  /// [additionalData] The additional data for the governance assignment - e.g. links to ticket (optional), see example
  /// [assessmentName] The Assessment Key - A unique key for the assessment type
  /// [assignmentKey] The governance assignment key - the assessment key of the required governance assignment
  /// [governanceEmailNotification] The email notifications settings for the governance rule, states whether to disable notifications for mangers and owners
  /// [isGracePeriod] Defines whether there is a grace period on the governance assignment
  /// [owner] The Owner for the governance assignment - e.g. user@contoso.com - see example
  /// [remediationDueDate] The remediation due-date - after this date Secure Score will be affected (in case of  active grace-period)
  /// [remediationEta] The ETA (estimated time of arrival) for remediation (optional), see example
  /// [scope] The scope of the Governance assignments. Valid scopes are: subscription (format: 'subscriptions/{subscriptionId}'), or security connector (format: 'subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Security/securityConnectors/{securityConnectorName})'
  GovernanceAssignmentArgs({
    this.additionalData,
    required this.assessmentName,
    this.assignmentKey,
    this.governanceEmailNotification,
    this.isGracePeriod,
    this.owner,
    required this.remediationDueDate,
    this.remediationEta,
    required this.scope,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'additionalData': ?pulumi.Input.mapOptionalInputValue<GovernanceAssignmentAdditionalData, Map<String, dynamic>>(additionalData, (value) => value.toMap()),
      'assessmentName': assessmentName,
      'assignmentKey': ?assignmentKey,
      'governanceEmailNotification': ?pulumi.Input.mapOptionalInputValue<GovernanceEmailNotification, Map<String, dynamic>>(governanceEmailNotification, (value) => value.toMap()),
      'isGracePeriod': ?isGracePeriod,
      'owner': ?owner,
      'remediationDueDate': remediationDueDate,
      'remediationEta': ?pulumi.Input.mapOptionalInputValue<RemediationEta, Map<String, dynamic>>(remediationEta, (value) => value.toMap()),
      'scope': scope,
    };
  }

  factory GovernanceAssignmentArgs.fromMap(Map<String, dynamic> map) {
    return GovernanceAssignmentArgs(
      additionalData: map['additionalData'] == null ? null : (GovernanceAssignmentAdditionalData.fromMap((map['additionalData']! as Map).cast<String, dynamic>())).input(),
      assessmentName: (map['assessmentName'] as String).input(),
      assignmentKey: map['assignmentKey'] == null ? null : (map['assignmentKey']! as String).input(),
      governanceEmailNotification: map['governanceEmailNotification'] == null ? null : (GovernanceEmailNotification.fromMap((map['governanceEmailNotification']! as Map).cast<String, dynamic>())).input(),
      isGracePeriod: map['isGracePeriod'] == null ? null : (map['isGracePeriod']! as bool).input(),
      owner: map['owner'] == null ? null : (map['owner']! as String).input(),
      remediationDueDate: (map['remediationDueDate'] as String).input(),
      remediationEta: map['remediationEta'] == null ? null : (RemediationEta.fromMap((map['remediationEta']! as Map).cast<String, dynamic>())).input(),
      scope: (map['scope'] as String).input(),
    );
  }
}

