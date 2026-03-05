// ignore_for_file: unused_element, unnecessary_cast

import 'remediation_deployment_summary_response.dart';
import 'remediation_filters_response.dart';
import 'remediation_properties_response_failure_threshold.dart';
import 'system_data_response.dart';

/// Result data returned by getRemediationAtSubscription.
class GetRemediationAtSubscriptionResult {
  /// The Azure API version of the resource.
  final String azureApiVersion;
  /// The remediation correlation Id. Can be used to find events related to the remediation in the activity log.
  final String correlationId;
  /// The time at which the remediation was created.
  final String createdOn;
  /// The deployment status summary for all deployments created by the remediation.
  final RemediationDeploymentSummaryResponse deploymentStatus;
  /// The remediation failure threshold settings
  final RemediationPropertiesResponseFailureThreshold? failureThreshold;
  /// The filters that will be applied to determine which resources to remediate.
  final RemediationFiltersResponse? filters;
  /// The ID of the remediation.
  final String id;
  /// The time at which the remediation was last updated.
  final String lastUpdatedOn;
  /// The name of the remediation.
  final String name;
  /// Determines how many resources to remediate at any given time. Can be used to increase or reduce the pace of the remediation. If not provided, the default parallel deployments value is used.
  final int? parallelDeployments;
  /// The resource ID of the policy assignment that should be remediated.
  final String? policyAssignmentId;
  /// The policy definition reference ID of the individual definition that should be remediated. Required when the policy assignment being remediated assigns a policy set definition.
  final String? policyDefinitionReferenceId;
  /// The status of the remediation. This refers to the entire remediation task, not individual deployments. Allowed values are Evaluating, Canceled, Cancelling, Failed, Complete, or Succeeded.
  final String provisioningState;
  /// Determines the max number of resources that can be remediated by the remediation job. If not provided, the default resource count is used.
  final int? resourceCount;
  /// The way resources to remediate are discovered. Defaults to ExistingNonCompliant if not specified.
  final String? resourceDiscoveryMode;
  /// The remediation status message. Provides additional details regarding the state of the remediation.
  final String statusMessage;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  final SystemDataResponse systemData;
  /// The type of the remediation.
  final String type;

  /// Creates a new [GetRemediationAtSubscriptionResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [correlationId] The remediation correlation Id. Can be used to find events related to the remediation in the activity log.
  /// [createdOn] The time at which the remediation was created.
  /// [deploymentStatus] The deployment status summary for all deployments created by the remediation.
  /// [failureThreshold] The remediation failure threshold settings
  /// [filters] The filters that will be applied to determine which resources to remediate.
  /// [id] The ID of the remediation.
  /// [lastUpdatedOn] The time at which the remediation was last updated.
  /// [name] The name of the remediation.
  /// [parallelDeployments] Determines how many resources to remediate at any given time. Can be used to increase or reduce the pace of the remediation. If not provided, the default parallel deployments value is used.
  /// [policyAssignmentId] The resource ID of the policy assignment that should be remediated.
  /// [policyDefinitionReferenceId] The policy definition reference ID of the individual definition that should be remediated. Required when the policy assignment being remediated assigns a policy set definition.
  /// [provisioningState] The status of the remediation. This refers to the entire remediation task, not individual deployments. Allowed values are Evaluating, Canceled, Cancelling, Failed, Complete, or Succeeded.
  /// [resourceCount] Determines the max number of resources that can be remediated by the remediation job. If not provided, the default resource count is used.
  /// [resourceDiscoveryMode] The way resources to remediate are discovered. Defaults to ExistingNonCompliant if not specified.
  /// [statusMessage] The remediation status message. Provides additional details regarding the state of the remediation.
  /// [systemData] Azure Resource Manager metadata containing createdBy and modifiedBy information.
  /// [type] The type of the remediation.
  GetRemediationAtSubscriptionResult({
    required this.azureApiVersion,
    required this.correlationId,
    required this.createdOn,
    required this.deploymentStatus,
    this.failureThreshold,
    this.filters,
    required this.id,
    required this.lastUpdatedOn,
    required this.name,
    this.parallelDeployments,
    this.policyAssignmentId,
    this.policyDefinitionReferenceId,
    required this.provisioningState,
    this.resourceCount,
    this.resourceDiscoveryMode,
    required this.statusMessage,
    required this.systemData,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': azureApiVersion,
      'correlationId': correlationId,
      'createdOn': createdOn,
      'deploymentStatus': deploymentStatus.toMap(),
      'failureThreshold': ?failureThreshold?.toMap(),
      'filters': ?filters?.toMap(),
      'id': id,
      'lastUpdatedOn': lastUpdatedOn,
      'name': name,
      'parallelDeployments': ?parallelDeployments,
      'policyAssignmentId': ?policyAssignmentId,
      'policyDefinitionReferenceId': ?policyDefinitionReferenceId,
      'provisioningState': provisioningState,
      'resourceCount': ?resourceCount,
      'resourceDiscoveryMode': ?resourceDiscoveryMode,
      'statusMessage': statusMessage,
      'systemData': systemData.toMap(),
      'type': type,
    };
  }

  factory GetRemediationAtSubscriptionResult.fromMap(Map<String, dynamic> map) {
    return GetRemediationAtSubscriptionResult(
      azureApiVersion: map['azureApiVersion'] as String,
      correlationId: map['correlationId'] as String,
      createdOn: map['createdOn'] as String,
      deploymentStatus: RemediationDeploymentSummaryResponse.fromMap((map['deploymentStatus']! as Map).cast<String, dynamic>()),
      failureThreshold: (() { final guardedValue = map['failureThreshold']; if (guardedValue == null) return null; return RemediationPropertiesResponseFailureThreshold.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      filters: (() { final guardedValue = map['filters']; if (guardedValue == null) return null; return RemediationFiltersResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      id: map['id'] as String,
      lastUpdatedOn: map['lastUpdatedOn'] as String,
      name: map['name'] as String,
      parallelDeployments: (() { final guardedValue = map['parallelDeployments']; if (guardedValue == null) return null; return guardedValue as int; })(),
      policyAssignmentId: (() { final guardedValue = map['policyAssignmentId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      policyDefinitionReferenceId: (() { final guardedValue = map['policyDefinitionReferenceId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      provisioningState: map['provisioningState'] as String,
      resourceCount: (() { final guardedValue = map['resourceCount']; if (guardedValue == null) return null; return guardedValue as int; })(),
      resourceDiscoveryMode: (() { final guardedValue = map['resourceDiscoveryMode']; if (guardedValue == null) return null; return guardedValue as String; })(),
      statusMessage: map['statusMessage'] as String,
      systemData: SystemDataResponse.fromMap((map['systemData']! as Map).cast<String, dynamic>()),
      type: map['type'] as String,
    );
  }
}

