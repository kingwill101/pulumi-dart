// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'git_lab_enterprise_config_response.dart';
import 'git_lab_repository_id_response.dart';
import 'git_lab_secrets_response.dart';

/// Result data returned by getGitLabConfig.
class GetGitLabConfigResult {
  /// Connected GitLab.com or GitLabEnterprise repositories for this config.
  final List<GitLabRepositoryIdResponse>? connectedRepositories;
  /// Time when the config was created.
  final String? createTime;
  /// Optional. GitLabEnterprise config.
  final GitLabEnterpriseConfigResponse? enterpriseConfig;
  /// The resource name for the config.
  final String? name;
  /// Secret Manager secrets needed by the config.
  final GitLabSecretsResponse? secrets;
  /// Username of the GitLab.com or GitLab Enterprise account Cloud Build will use.
  final String? username;
  /// UUID included in webhook requests. The UUID is used to look up the corresponding config.
  final String? webhookKey;

  /// Creates a new [GetGitLabConfigResult].
  /// [connectedRepositories] Connected GitLab.com or GitLabEnterprise repositories for this config.
  /// [createTime] Time when the config was created.
  /// [enterpriseConfig] Optional. GitLabEnterprise config.
  /// [name] The resource name for the config.
  /// [secrets] Secret Manager secrets needed by the config.
  /// [username] Username of the GitLab.com or GitLab Enterprise account Cloud Build will use.
  /// [webhookKey] UUID included in webhook requests. The UUID is used to look up the corresponding config.
  const GetGitLabConfigResult({
    this.connectedRepositories,
    this.createTime,
    this.enterpriseConfig,
    this.name,
    this.secrets,
    this.username,
    this.webhookKey,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'connectedRepositories': ?(() { final guardedValue = connectedRepositories; if (guardedValue == null) return null; return pulumi.Input.encodeList<GitLabRepositoryIdResponse, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'createTime': ?createTime,
      'enterpriseConfig': ?enterpriseConfig?.toMap(),
      'name': ?name,
      'secrets': ?secrets?.toMap(),
      'username': ?username,
      'webhookKey': ?webhookKey,
    };
  }

  factory GetGitLabConfigResult.fromMap(Map<String, dynamic> map) {
    return GetGitLabConfigResult(
      connectedRepositories: (() { final guardedValue = map['connectedRepositories']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GitLabRepositoryIdResponse>(guardedValue, (value) => GitLabRepositoryIdResponse.fromMap((value as Map).cast<String, dynamic>())); })(),
      createTime: (() { final guardedValue = map['createTime']; if (guardedValue == null) return null; return guardedValue as String; })(),
      enterpriseConfig: (() { final guardedValue = map['enterpriseConfig']; if (guardedValue == null) return null; return GitLabEnterpriseConfigResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      secrets: (() { final guardedValue = map['secrets']; if (guardedValue == null) return null; return GitLabSecretsResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      username: (() { final guardedValue = map['username']; if (guardedValue == null) return null; return guardedValue as String; })(),
      webhookKey: (() { final guardedValue = map['webhookKey']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
