// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_dialogflow_cx_v3beta1_agent_git_integration_settings_github_settings_response.dart';

/// Settings for connecting to Git repository for an agent.
class GoogleCloudDialogflowCxV3beta1AgentGitIntegrationSettingsResponse {
  /// GitHub settings.
  final pulumi.Input<GoogleCloudDialogflowCxV3beta1AgentGitIntegrationSettingsGithubSettingsResponse> githubSettings;

  /// Creates a new [GoogleCloudDialogflowCxV3beta1AgentGitIntegrationSettingsResponse].
  /// [githubSettings] GitHub settings.
  GoogleCloudDialogflowCxV3beta1AgentGitIntegrationSettingsResponse({
    required this.githubSettings,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'githubSettings': pulumi.Input.mapInputValue<GoogleCloudDialogflowCxV3beta1AgentGitIntegrationSettingsGithubSettingsResponse, Map<String, dynamic>>(githubSettings, (value) => value.toMap()),
    };
  }

  factory GoogleCloudDialogflowCxV3beta1AgentGitIntegrationSettingsResponse.fromMap(Map<String, dynamic> map) {
    return GoogleCloudDialogflowCxV3beta1AgentGitIntegrationSettingsResponse(
      githubSettings: (GoogleCloudDialogflowCxV3beta1AgentGitIntegrationSettingsGithubSettingsResponse.fromMap((map['githubSettings'] as Map).cast<String, dynamic>())).input(),
    );
  }
}

