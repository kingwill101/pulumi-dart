// ignore_for_file: unused_element, unnecessary_cast

import 'google_cloud_dialogflow_cx_v3_agent_git_integration_settings_github_settings.dart';

/// Settings for connecting to Git repository for an agent.
class GoogleCloudDialogflowCxV3AgentGitIntegrationSettings {
  /// GitHub settings.
  final GoogleCloudDialogflowCxV3AgentGitIntegrationSettingsGithubSettings? githubSettings;

  /// Creates a new [GoogleCloudDialogflowCxV3AgentGitIntegrationSettings].
  /// [githubSettings] GitHub settings.
  GoogleCloudDialogflowCxV3AgentGitIntegrationSettings({
    this.githubSettings,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'githubSettings': ?githubSettings == null ? null : githubSettings!.toMap(),
    };
  }

  factory GoogleCloudDialogflowCxV3AgentGitIntegrationSettings.fromMap(Map<String, dynamic> map) {
    return GoogleCloudDialogflowCxV3AgentGitIntegrationSettings(
      githubSettings: map['githubSettings'] == null ? null : GoogleCloudDialogflowCxV3AgentGitIntegrationSettingsGithubSettings.fromMap((map['githubSettings'] as Map).cast<String, dynamic>()),
    );
  }
}

