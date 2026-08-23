// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Settings of integration with GitHub.
class GoogleCloudDialogflowCxV3beta1AgentGitIntegrationSettingsGithubSettingsResponse {
  /// The access token used to authenticate the access to the GitHub repository.
  final pulumi.Input<String> accessToken;
  /// A list of branches configured to be used from Dialogflow.
  final pulumi.Input<List<String>> branches;
  /// The unique repository display name for the GitHub repository.
  final pulumi.Input<String> displayName;
  /// The GitHub repository URI related to the agent.
  final pulumi.Input<String> repositoryUri;
  /// The branch of the GitHub repository tracked for this agent.
  final pulumi.Input<String> trackingBranch;

  /// Creates a new [GoogleCloudDialogflowCxV3beta1AgentGitIntegrationSettingsGithubSettingsResponse].
  /// [accessToken] The access token used to authenticate the access to the GitHub repository.
  /// [branches] A list of branches configured to be used from Dialogflow.
  /// [displayName] The unique repository display name for the GitHub repository.
  /// [repositoryUri] The GitHub repository URI related to the agent.
  /// [trackingBranch] The branch of the GitHub repository tracked for this agent.
  const GoogleCloudDialogflowCxV3beta1AgentGitIntegrationSettingsGithubSettingsResponse({
    required this.accessToken,
    required this.branches,
    required this.displayName,
    required this.repositoryUri,
    required this.trackingBranch,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accessToken': accessToken,
      'branches': branches,
      'displayName': displayName,
      'repositoryUri': repositoryUri,
      'trackingBranch': trackingBranch,
    };
  }

  factory GoogleCloudDialogflowCxV3beta1AgentGitIntegrationSettingsGithubSettingsResponse.fromMap(Map<String, dynamic> map) {
    return GoogleCloudDialogflowCxV3beta1AgentGitIntegrationSettingsGithubSettingsResponse(
      accessToken: pulumi.Input.fromValue(map['accessToken'] as String),
      branches: pulumi.Input.fromValue((map['branches'] as List).cast<String>()),
      displayName: pulumi.Input.fromValue(map['displayName'] as String),
      repositoryUri: pulumi.Input.fromValue(map['repositoryUri'] as String),
      trackingBranch: pulumi.Input.fromValue(map['trackingBranch'] as String),
    );
  }
}
