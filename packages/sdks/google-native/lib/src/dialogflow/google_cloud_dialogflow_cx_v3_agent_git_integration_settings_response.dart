// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_dialogflow_cx_v3_agent_git_integration_settings_github_settings_response.dart';

/// Settings for connecting to Git repository for an agent.
class GoogleCloudDialogflowCxV3AgentGitIntegrationSettingsResponse {
  /// GitHub settings.
  final pulumi.Input<
    GoogleCloudDialogflowCxV3AgentGitIntegrationSettingsGithubSettingsResponse
  >
  githubSettings;

  /// Creates a new [GoogleCloudDialogflowCxV3AgentGitIntegrationSettingsResponse].
  /// [githubSettings] GitHub settings.
  GoogleCloudDialogflowCxV3AgentGitIntegrationSettingsResponse({
    required this.githubSettings,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'githubSettings':
          pulumi.Input.mapInputValue<
            GoogleCloudDialogflowCxV3AgentGitIntegrationSettingsGithubSettingsResponse,
            Map<String, dynamic>
          >(githubSettings, (value) => value.toMap()),
    };
  }

  factory GoogleCloudDialogflowCxV3AgentGitIntegrationSettingsResponse.fromMap(
    Map<String, dynamic> map,
  ) {
    return GoogleCloudDialogflowCxV3AgentGitIntegrationSettingsResponse(
      githubSettings: pulumi.Input.fromValue(
        GoogleCloudDialogflowCxV3AgentGitIntegrationSettingsGithubSettingsResponse.fromMap(
          (map['githubSettings']! as Map).cast<String, dynamic>(),
        ),
      ),
    );
  }
}
