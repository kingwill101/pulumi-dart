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
      accessToken: (() { final guardedValue = map['accessToken']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      branches: (() { final guardedValue = map['branches']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      displayName: (() { final guardedValue = map['displayName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      repositoryUri: (() { final guardedValue = map['repositoryUri']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      trackingBranch: (() { final guardedValue = map['trackingBranch']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

