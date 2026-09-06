// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// GitHub Owner properties.
class GitHubOwnerPropertiesResponse {
  /// Gets or sets internal GitHub id.
  final pulumi.Input<String> gitHubInternalId;
  /// Details about resource onboarding status across all connectors.
  ///
  /// OnboardedByOtherConnector - this resource has already been onboarded to another connector. This is only applicable to top-level resources.
  /// Onboarded - this resource has already been onboarded by the specified connector.
  /// NotOnboarded - this resource has not been onboarded to any connector.
  /// NotApplicable - the onboarding state is not applicable to the current endpoint.
  final pulumi.Input<String?>? onboardingState;
  /// Gets or sets GitHub Owner url.
  final pulumi.Input<String> ownerUrl;
  /// The provisioning state of the resource.
  ///
  /// Pending - Provisioning pending.
  /// Failed - Provisioning failed.
  /// Succeeded - Successful provisioning.
  /// Canceled - Provisioning canceled.
  /// PendingDeletion - Deletion pending.
  /// DeletionSuccess - Deletion successful.
  /// DeletionFailure - Deletion failure.
  final pulumi.Input<String?>? provisioningState;
  /// Gets or sets resource status message.
  final pulumi.Input<String> provisioningStatusMessage;
  /// Gets or sets time when resource was last checked.
  final pulumi.Input<String> provisioningStatusUpdateTimeUtc;

  /// Creates a new [GitHubOwnerPropertiesResponse].
  /// [gitHubInternalId] Gets or sets internal GitHub id.
  /// [onboardingState] Details about resource onboarding status across all connectors.
  /// [ownerUrl] Gets or sets GitHub Owner url.
  /// [provisioningState] The provisioning state of the resource.
  /// [provisioningStatusMessage] Gets or sets resource status message.
  /// [provisioningStatusUpdateTimeUtc] Gets or sets time when resource was last checked.
  const GitHubOwnerPropertiesResponse({
    required this.gitHubInternalId,
    this.onboardingState,
    required this.ownerUrl,
    this.provisioningState,
    required this.provisioningStatusMessage,
    required this.provisioningStatusUpdateTimeUtc,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'gitHubInternalId': gitHubInternalId,
      'onboardingState': ?onboardingState,
      'ownerUrl': ownerUrl,
      'provisioningState': ?provisioningState,
      'provisioningStatusMessage': provisioningStatusMessage,
      'provisioningStatusUpdateTimeUtc': provisioningStatusUpdateTimeUtc,
    };
  }

  factory GitHubOwnerPropertiesResponse.fromMap(Map<String, dynamic> map) {
    return GitHubOwnerPropertiesResponse(
      gitHubInternalId: pulumi.Input.fromValue(map['gitHubInternalId'] as String),
      onboardingState: (() { final guardedValue = map['onboardingState']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      ownerUrl: pulumi.Input.fromValue(map['ownerUrl'] as String),
      provisioningState: (() { final guardedValue = map['provisioningState']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      provisioningStatusMessage: pulumi.Input.fromValue(map['provisioningStatusMessage'] as String),
      provisioningStatusUpdateTimeUtc: pulumi.Input.fromValue(map['provisioningStatusUpdateTimeUtc'] as String),
    );
  }
}
