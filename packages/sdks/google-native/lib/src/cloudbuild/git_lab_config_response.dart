// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'git_lab_enterprise_config_response.dart';
import 'git_lab_repository_id_response.dart';
import 'git_lab_secrets_response.dart';

/// GitLabConfig represents the configuration for a GitLab integration.
class GitLabConfigResponse {
  /// Connected GitLab.com or GitLabEnterprise repositories for this config.
  final pulumi.Input<List<GitLabRepositoryIdResponse>> connectedRepositories;
  /// Time when the config was created.
  final pulumi.Input<String> createTime;
  /// Optional. GitLabEnterprise config.
  final pulumi.Input<GitLabEnterpriseConfigResponse> enterpriseConfig;
  /// The resource name for the config.
  final pulumi.Input<String> name;
  /// Secret Manager secrets needed by the config.
  final pulumi.Input<GitLabSecretsResponse> secrets;
  /// Username of the GitLab.com or GitLab Enterprise account Cloud Build will use.
  final pulumi.Input<String> username;
  /// UUID included in webhook requests. The UUID is used to look up the corresponding config.
  final pulumi.Input<String> webhookKey;

  /// Creates a new [GitLabConfigResponse].
  /// [connectedRepositories] Connected GitLab.com or GitLabEnterprise repositories for this config.
  /// [createTime] Time when the config was created.
  /// [enterpriseConfig] Optional. GitLabEnterprise config.
  /// [name] The resource name for the config.
  /// [secrets] Secret Manager secrets needed by the config.
  /// [username] Username of the GitLab.com or GitLab Enterprise account Cloud Build will use.
  /// [webhookKey] UUID included in webhook requests. The UUID is used to look up the corresponding config.
  GitLabConfigResponse({
    required this.connectedRepositories,
    required this.createTime,
    required this.enterpriseConfig,
    required this.name,
    required this.secrets,
    required this.username,
    required this.webhookKey,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'connectedRepositories': pulumi.Input.mapInputValue<List<GitLabRepositoryIdResponse>, List<Map<String, dynamic>>>(connectedRepositories, (value) => pulumi.Input.encodeList<GitLabRepositoryIdResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'createTime': createTime,
      'enterpriseConfig': pulumi.Input.mapInputValue<GitLabEnterpriseConfigResponse, Map<String, dynamic>>(enterpriseConfig, (value) => value.toMap()),
      'name': name,
      'secrets': pulumi.Input.mapInputValue<GitLabSecretsResponse, Map<String, dynamic>>(secrets, (value) => value.toMap()),
      'username': username,
      'webhookKey': webhookKey,
    };
  }

  factory GitLabConfigResponse.fromMap(Map<String, dynamic> map) {
    return GitLabConfigResponse(
      connectedRepositories: (pulumi.Input.decodeList<GitLabRepositoryIdResponse>(map['connectedRepositories'], (value) => GitLabRepositoryIdResponse.fromMap((value as Map).cast<String, dynamic>()))).input(),
      createTime: (map['createTime'] as String).input(),
      enterpriseConfig: (GitLabEnterpriseConfigResponse.fromMap((map['enterpriseConfig'] as Map).cast<String, dynamic>())).input(),
      name: (map['name'] as String).input(),
      secrets: (GitLabSecretsResponse.fromMap((map['secrets'] as Map).cast<String, dynamic>())).input(),
      username: (map['username'] as String).input(),
      webhookKey: (map['webhookKey'] as String).input(),
    );
  }
}

