// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_dialogflow_cx_v3_agent_git_integration_settings_github_settings.dart';

/// Settings for connecting to Git repository for an agent.
class GoogleCloudDialogflowCxV3AgentGitIntegrationSettings {
  /// GitHub settings.
  final pulumi.Input<GoogleCloudDialogflowCxV3AgentGitIntegrationSettingsGithubSettings>? githubSettings;

  /// Creates a new [GoogleCloudDialogflowCxV3AgentGitIntegrationSettings].
  /// [githubSettings] GitHub settings.
  GoogleCloudDialogflowCxV3AgentGitIntegrationSettings({
    this.githubSettings,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'githubSettings': ?pulumi.Input.mapOptionalInputValue<GoogleCloudDialogflowCxV3AgentGitIntegrationSettingsGithubSettings, Map<String, dynamic>>(githubSettings, (value) => value.toMap()),
    };
  }

  factory GoogleCloudDialogflowCxV3AgentGitIntegrationSettings.fromMap(Map<String, dynamic> map) {
    return GoogleCloudDialogflowCxV3AgentGitIntegrationSettings(
      githubSettings: (() { final guardedValue = map['githubSettings']; if (guardedValue == null) return null; return pulumi.Input.fromValue(GoogleCloudDialogflowCxV3AgentGitIntegrationSettingsGithubSettings.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}

