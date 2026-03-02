// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Settings of integration with GitHub.
class GoogleCloudDialogflowCxV3beta1AgentGitIntegrationSettingsGithubSettings {
  /// The access token used to authenticate the access to the GitHub repository.
  final pulumi.Input<String>? accessToken;
  /// A list of branches configured to be used from Dialogflow.
  final pulumi.Input<List<String>>? branches;
  /// The unique repository display name for the GitHub repository.
  final pulumi.Input<String>? displayName;
  /// The GitHub repository URI related to the agent.
  final pulumi.Input<String>? repositoryUri;
  /// The branch of the GitHub repository tracked for this agent.
  final pulumi.Input<String>? trackingBranch;

  /// Creates a new [GoogleCloudDialogflowCxV3beta1AgentGitIntegrationSettingsGithubSettings].
  /// [accessToken] The access token used to authenticate the access to the GitHub repository.
  /// [branches] A list of branches configured to be used from Dialogflow.
  /// [displayName] The unique repository display name for the GitHub repository.
  /// [repositoryUri] The GitHub repository URI related to the agent.
  /// [trackingBranch] The branch of the GitHub repository tracked for this agent.
  GoogleCloudDialogflowCxV3beta1AgentGitIntegrationSettingsGithubSettings({
    this.accessToken,
    this.branches,
    this.displayName,
    this.repositoryUri,
    this.trackingBranch,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accessToken': ?accessToken,
      'branches': ?branches,
      'displayName': ?displayName,
      'repositoryUri': ?repositoryUri,
      'trackingBranch': ?trackingBranch,
    };
  }

  factory GoogleCloudDialogflowCxV3beta1AgentGitIntegrationSettingsGithubSettings.fromMap(Map<String, dynamic> map) {
    return GoogleCloudDialogflowCxV3beta1AgentGitIntegrationSettingsGithubSettings(
      accessToken: map['accessToken'] == null ? null : (map['accessToken']! as String).input(),
      branches: map['branches'] == null ? null : ((map['branches']! as List).cast<String>()).input(),
      displayName: map['displayName'] == null ? null : (map['displayName']! as String).input(),
      repositoryUri: map['repositoryUri'] == null ? null : (map['repositoryUri']! as String).input(),
      trackingBranch: map['trackingBranch'] == null ? null : (map['trackingBranch']! as String).input(),
    );
  }
}

