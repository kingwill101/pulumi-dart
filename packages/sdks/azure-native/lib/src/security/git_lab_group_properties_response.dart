// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// GitLab Group properties.
class GitLabGroupPropertiesResponse {
  /// Gets or sets the human readable fully-qualified name of the Group object.
  ///
  /// This contains the entire namespace hierarchy as seen on GitLab UI where namespaces are separated by the '/' character.
  final pulumi.Input<String> fullyQualifiedFriendlyName;
  /// Gets or sets the fully-qualified name of the Group object.
  ///
  /// This contains the entire namespace hierarchy where namespaces are separated by the '$' character.
  final pulumi.Input<String> fullyQualifiedName;
  /// Details about resource onboarding status across all connectors.
  ///
  /// OnboardedByOtherConnector - this resource has already been onboarded to another connector. This is only applicable to top-level resources.
  /// Onboarded - this resource has already been onboarded by the specified connector.
  /// NotOnboarded - this resource has not been onboarded to any connector.
  /// NotApplicable - the onboarding state is not applicable to the current endpoint.
  final pulumi.Input<String>? onboardingState;
  /// The provisioning state of the resource.
  ///
  /// Pending - Provisioning pending.
  /// Failed - Provisioning failed.
  /// Succeeded - Successful provisioning.
  /// Canceled - Provisioning canceled.
  /// PendingDeletion - Deletion pending.
  /// DeletionSuccess - Deletion successful.
  /// DeletionFailure - Deletion failure.
  final pulumi.Input<String>? provisioningState;
  /// Gets or sets resource status message.
  final pulumi.Input<String> provisioningStatusMessage;
  /// Gets or sets time when resource was last checked.
  final pulumi.Input<String> provisioningStatusUpdateTimeUtc;
  /// Gets or sets the url of the GitLab Group.
  final pulumi.Input<String> url;

  /// Creates a new [GitLabGroupPropertiesResponse].
  /// [fullyQualifiedFriendlyName] Gets or sets the human readable fully-qualified name of the Group object.
  /// [fullyQualifiedName] Gets or sets the fully-qualified name of the Group object.
  /// [onboardingState] Details about resource onboarding status across all connectors.
  /// [provisioningState] The provisioning state of the resource.
  /// [provisioningStatusMessage] Gets or sets resource status message.
  /// [provisioningStatusUpdateTimeUtc] Gets or sets time when resource was last checked.
  /// [url] Gets or sets the url of the GitLab Group.
  const GitLabGroupPropertiesResponse({
    required this.fullyQualifiedFriendlyName,
    required this.fullyQualifiedName,
    this.onboardingState,
    this.provisioningState,
    required this.provisioningStatusMessage,
    required this.provisioningStatusUpdateTimeUtc,
    required this.url,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'fullyQualifiedFriendlyName': fullyQualifiedFriendlyName,
      'fullyQualifiedName': fullyQualifiedName,
      'onboardingState': ?onboardingState,
      'provisioningState': ?provisioningState,
      'provisioningStatusMessage': provisioningStatusMessage,
      'provisioningStatusUpdateTimeUtc': provisioningStatusUpdateTimeUtc,
      'url': url,
    };
  }

  factory GitLabGroupPropertiesResponse.fromMap(Map<String, dynamic> map) {
    return GitLabGroupPropertiesResponse(
      fullyQualifiedFriendlyName: pulumi.Input.fromValue(map['fullyQualifiedFriendlyName'] as String),
      fullyQualifiedName: pulumi.Input.fromValue(map['fullyQualifiedName'] as String),
      onboardingState: (() { final guardedValue = map['onboardingState']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      provisioningState: (() { final guardedValue = map['provisioningState']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      provisioningStatusMessage: pulumi.Input.fromValue(map['provisioningStatusMessage'] as String),
      provisioningStatusUpdateTimeUtc: pulumi.Input.fromValue(map['provisioningStatusUpdateTimeUtc'] as String),
      url: pulumi.Input.fromValue(map['url'] as String),
    );
  }
}
