// ignore_for_file: unused_element, unnecessary_cast

import 'git_hub_enterprise_secrets_response.dart';

/// Result data returned by getGithubEnterpriseConfig.
class GetGithubEnterpriseConfigResult {
  /// The GitHub app id of the Cloud Build app on the GitHub Enterprise server.
  final String appId;

  /// Time when the installation was associated with the project.
  final String createTime;

  /// Name to display for this config.
  final String displayName;

  /// The URL of the github enterprise host the configuration is for.
  final String hostUrl;

  /// Optional. The full resource name for the GitHubEnterpriseConfig For example: "projects/{$project_id}/locations/{$location_id}/githubEnterpriseConfigs/{$config_id}"
  final String name;

  /// Optional. The network to be used when reaching out to the GitHub Enterprise server. The VPC network must be enabled for private service connection. This should be set if the GitHub Enterprise server is hosted on-premises and not reachable by public internet. If this field is left empty, no network peering will occur and calls to the GitHub Enterprise server will be made over the public internet. Must be in the format `projects/{project}/global/networks/{network}`, where {project} is a project number or id and {network} is the name of a VPC network in the project.
  final String peeredNetwork;

  /// Names of secrets in Secret Manager.
  final GitHubEnterpriseSecretsResponse secrets;

  /// Optional. SSL certificate to use for requests to GitHub Enterprise.
  final String sslCa;

  /// The key that should be attached to webhook calls to the ReceiveWebhook endpoint.
  final String webhookKey;

  /// Creates a new [GetGithubEnterpriseConfigResult].
  /// [appId] The GitHub app id of the Cloud Build app on the GitHub Enterprise server.
  /// [createTime] Time when the installation was associated with the project.
  /// [displayName] Name to display for this config.
  /// [hostUrl] The URL of the github enterprise host the configuration is for.
  /// [name] Optional. The full resource name for the GitHubEnterpriseConfig For example: "projects/{$project_id}/locations/{$location_id}/githubEnterpriseConfigs/{$config_id}"
  /// [peeredNetwork] Optional. The network to be used when reaching out to the GitHub Enterprise server. The VPC network must be enabled for private service connection. This should be set if the GitHub Enterprise server is hosted on-premises and not reachable by public internet. If this field is left empty, no network peering will occur and calls to the GitHub Enterprise server will be made over the public internet. Must be in the format `projects/{project}/global/networks/{network}`, where {project} is a project number or id and {network} is the name of a VPC network in the project.
  /// [secrets] Names of secrets in Secret Manager.
  /// [sslCa] Optional. SSL certificate to use for requests to GitHub Enterprise.
  /// [webhookKey] The key that should be attached to webhook calls to the ReceiveWebhook endpoint.
  GetGithubEnterpriseConfigResult({
    required this.appId,
    required this.createTime,
    required this.displayName,
    required this.hostUrl,
    required this.name,
    required this.peeredNetwork,
    required this.secrets,
    required this.sslCa,
    required this.webhookKey,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'appId': appId,
      'createTime': createTime,
      'displayName': displayName,
      'hostUrl': hostUrl,
      'name': name,
      'peeredNetwork': peeredNetwork,
      'secrets': secrets.toMap(),
      'sslCa': sslCa,
      'webhookKey': webhookKey,
    };
  }

  factory GetGithubEnterpriseConfigResult.fromMap(Map<String, dynamic> map) {
    return GetGithubEnterpriseConfigResult(
      appId: map['appId'] as String,
      createTime: map['createTime'] as String,
      displayName: map['displayName'] as String,
      hostUrl: map['hostUrl'] as String,
      name: map['name'] as String,
      peeredNetwork: map['peeredNetwork'] as String,
      secrets: GitHubEnterpriseSecretsResponse.fromMap(
        (map['secrets']! as Map).cast<String, dynamic>(),
      ),
      sslCa: map['sslCa'] as String,
      webhookKey: map['webhookKey'] as String,
    );
  }
}
