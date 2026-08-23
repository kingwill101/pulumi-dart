// ignore_for_file: unused_element, unnecessary_cast

import 'governance_assignment_additional_data_response.dart';
import 'governance_email_notification_response.dart';
import 'remediation_eta_response.dart';
import 'system_data_response.dart';

/// Result data returned by getGovernanceAssignment.
class GetGovernanceAssignmentResult {
  /// The additional data for the governance assignment - e.g. links to ticket (optional), see example
  final GovernanceAssignmentAdditionalDataResponse? additionalData;
  /// The Azure API version of the resource.
  final String azureApiVersion;
  /// The email notifications settings for the governance rule, states whether to disable notifications for mangers and owners
  final GovernanceEmailNotificationResponse? governanceEmailNotification;
  /// Fully qualified resource ID for the resource. E.g. "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}"
  final String id;
  /// Defines whether there is a grace period on the governance assignment
  final bool? isGracePeriod;
  /// The name of the resource
  final String name;
  /// The Owner for the governance assignment - e.g. user@contoso.com - see example
  final String? owner;
  /// The remediation due-date - after this date Secure Score will be affected (in case of  active grace-period)
  final String remediationDueDate;
  /// The ETA (estimated time of arrival) for remediation (optional), see example
  final RemediationEtaResponse? remediationEta;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  final SystemDataResponse systemData;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  final String type;

  /// Creates a new [GetGovernanceAssignmentResult].
  /// [additionalData] The additional data for the governance assignment - e.g. links to ticket (optional), see example
  /// [azureApiVersion] The Azure API version of the resource.
  /// [governanceEmailNotification] The email notifications settings for the governance rule, states whether to disable notifications for mangers and owners
  /// [id] Fully qualified resource ID for the resource. E.g. "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}"
  /// [isGracePeriod] Defines whether there is a grace period on the governance assignment
  /// [name] The name of the resource
  /// [owner] The Owner for the governance assignment - e.g. user@contoso.com - see example
  /// [remediationDueDate] The remediation due-date - after this date Secure Score will be affected (in case of  active grace-period)
  /// [remediationEta] The ETA (estimated time of arrival) for remediation (optional), see example
  /// [systemData] Azure Resource Manager metadata containing createdBy and modifiedBy information.
  /// [type] The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  const GetGovernanceAssignmentResult({
    this.additionalData,
    required this.azureApiVersion,
    this.governanceEmailNotification,
    required this.id,
    this.isGracePeriod,
    required this.name,
    this.owner,
    required this.remediationDueDate,
    this.remediationEta,
    required this.systemData,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'additionalData': ?additionalData?.toMap(),
      'azureApiVersion': azureApiVersion,
      'governanceEmailNotification': ?governanceEmailNotification?.toMap(),
      'id': id,
      'isGracePeriod': ?isGracePeriod,
      'name': name,
      'owner': ?owner,
      'remediationDueDate': remediationDueDate,
      'remediationEta': ?remediationEta?.toMap(),
      'systemData': systemData.toMap(),
      'type': type,
    };
  }

  factory GetGovernanceAssignmentResult.fromMap(Map<String, dynamic> map) {
    return GetGovernanceAssignmentResult(
      additionalData: (() { final guardedValue = map['additionalData']; if (guardedValue == null) return null; return GovernanceAssignmentAdditionalDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      azureApiVersion: map['azureApiVersion'] as String,
      governanceEmailNotification: (() { final guardedValue = map['governanceEmailNotification']; if (guardedValue == null) return null; return GovernanceEmailNotificationResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      id: map['id'] as String,
      isGracePeriod: (() { final guardedValue = map['isGracePeriod']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      name: map['name'] as String,
      owner: (() { final guardedValue = map['owner']; if (guardedValue == null) return null; return guardedValue as String; })(),
      remediationDueDate: map['remediationDueDate'] as String,
      remediationEta: (() { final guardedValue = map['remediationEta']; if (guardedValue == null) return null; return RemediationEtaResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      systemData: SystemDataResponse.fromMap((map['systemData']! as Map).cast<String, dynamic>()),
      type: map['type'] as String,
    );
  }
}
