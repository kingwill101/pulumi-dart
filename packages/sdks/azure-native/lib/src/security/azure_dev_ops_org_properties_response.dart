// ignore_for_file: unused_element, unnecessary_cast

import 'actionable_remediation_response.dart';

/// Azure DevOps Organization properties.
class AzureDevOpsOrgPropertiesResponse {
  /// Configuration payload for PR Annotations.
  final ActionableRemediationResponse? actionableRemediation;
  /// Details about resource onboarding status across all connectors.
  ///
  /// OnboardedByOtherConnector - this resource has already been onboarded to another connector. This is only applicable to top-level resources.
  /// Onboarded - this resource has already been onboarded by the specified connector.
  /// NotOnboarded - this resource has not been onboarded to any connector.
  /// NotApplicable - the onboarding state is not applicable to the current endpoint.
  final String? onboardingState;
  /// The provisioning state of the resource.
  ///
  /// Pending - Provisioning pending.
  /// Failed - Provisioning failed.
  /// Succeeded - Successful provisioning.
  /// Canceled - Provisioning canceled.
  /// PendingDeletion - Deletion pending.
  /// DeletionSuccess - Deletion successful.
  /// DeletionFailure - Deletion failure.
  final String? provisioningState;
  /// Gets or sets resource status message.
  final String provisioningStatusMessage;
  /// Gets or sets time when resource was last checked.
  final String provisioningStatusUpdateTimeUtc;

  /// Creates a new [AzureDevOpsOrgPropertiesResponse].
  /// [actionableRemediation] Configuration payload for PR Annotations.
  /// [onboardingState] Details about resource onboarding status across all connectors.
  /// [provisioningState] The provisioning state of the resource.
  /// [provisioningStatusMessage] Gets or sets resource status message.
  /// [provisioningStatusUpdateTimeUtc] Gets or sets time when resource was last checked.
  AzureDevOpsOrgPropertiesResponse({
    this.actionableRemediation,
    this.onboardingState,
    this.provisioningState,
    required this.provisioningStatusMessage,
    required this.provisioningStatusUpdateTimeUtc,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'actionableRemediation': ?actionableRemediation == null ? null : actionableRemediation!.toMap(),
      'onboardingState': ?onboardingState,
      'provisioningState': ?provisioningState,
      'provisioningStatusMessage': provisioningStatusMessage,
      'provisioningStatusUpdateTimeUtc': provisioningStatusUpdateTimeUtc,
    };
  }

  factory AzureDevOpsOrgPropertiesResponse.fromMap(Map<String, dynamic> map) {
    return AzureDevOpsOrgPropertiesResponse(
      actionableRemediation: map['actionableRemediation'] == null ? null : ActionableRemediationResponse.fromMap((map['actionableRemediation'] as Map).cast<String, dynamic>()),
      onboardingState: map['onboardingState'] == null ? null : map['onboardingState'] as String,
      provisioningState: map['provisioningState'] == null ? null : map['provisioningState'] as String,
      provisioningStatusMessage: map['provisioningStatusMessage'] as String,
      provisioningStatusUpdateTimeUtc: map['provisioningStatusUpdateTimeUtc'] as String,
    );
  }
}

