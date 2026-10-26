// ignore_for_file: unused_element, unnecessary_cast

import 'git_hub_config_response.dart';
import 'google_devtools_cloudbuild_v2_git_hub_enterprise_config_response.dart';
import 'google_devtools_cloudbuild_v2_git_lab_config_response.dart';
import 'installation_state_response.dart';

/// Result data returned by getConnection.
class GetConnectionResult {
  /// Allows clients to store small amounts of arbitrary data.
  final Map<String, String>? annotations;
  /// Server assigned timestamp for when the connection was created.
  final String? createTime;
  /// If disabled is set to true, functionality is disabled for this connection. Repository based API methods and webhooks processing for repositories in this connection will be disabled.
  final bool? disabled;
  /// This checksum is computed by the server based on the value of other fields, and may be sent on update and delete requests to ensure the client has an up-to-date value before proceeding.
  final String? etag;
  /// Configuration for connections to github.com.
  final GitHubConfigResponse? githubConfig;
  /// Configuration for connections to an instance of GitHub Enterprise.
  final GoogleDevtoolsCloudbuildV2GitHubEnterpriseConfigResponse? githubEnterpriseConfig;
  /// Configuration for connections to gitlab.com or an instance of GitLab Enterprise.
  final GoogleDevtoolsCloudbuildV2GitLabConfigResponse? gitlabConfig;
  /// Installation state of the Connection.
  final InstallationStateResponse? installationState;
  /// Immutable. The resource name of the connection, in the format `projects/{project}/locations/{location}/connections/{connection_id}`.
  final String? name;
  /// Set to true when the connection is being set up or updated in the background.
  final bool? reconciling;
  /// Server assigned timestamp for when the connection was updated.
  final String? updateTime;

  /// Creates a new [GetConnectionResult].
  /// [annotations] Allows clients to store small amounts of arbitrary data.
  /// [createTime] Server assigned timestamp for when the connection was created.
  /// [disabled] If disabled is set to true, functionality is disabled for this connection. Repository based API methods and webhooks processing for repositories in this connection will be disabled.
  /// [etag] This checksum is computed by the server based on the value of other fields, and may be sent on update and delete requests to ensure the client has an up-to-date value before proceeding.
  /// [githubConfig] Configuration for connections to github.com.
  /// [githubEnterpriseConfig] Configuration for connections to an instance of GitHub Enterprise.
  /// [gitlabConfig] Configuration for connections to gitlab.com or an instance of GitLab Enterprise.
  /// [installationState] Installation state of the Connection.
  /// [name] Immutable. The resource name of the connection, in the format `projects/{project}/locations/{location}/connections/{connection_id}`.
  /// [reconciling] Set to true when the connection is being set up or updated in the background.
  /// [updateTime] Server assigned timestamp for when the connection was updated.
  const GetConnectionResult({
    this.annotations,
    this.createTime,
    this.disabled,
    this.etag,
    this.githubConfig,
    this.githubEnterpriseConfig,
    this.gitlabConfig,
    this.installationState,
    this.name,
    this.reconciling,
    this.updateTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'annotations': ?annotations,
      'createTime': ?createTime,
      'disabled': ?disabled,
      'etag': ?etag,
      'githubConfig': ?githubConfig?.toMap(),
      'githubEnterpriseConfig': ?githubEnterpriseConfig?.toMap(),
      'gitlabConfig': ?gitlabConfig?.toMap(),
      'installationState': ?installationState?.toMap(),
      'name': ?name,
      'reconciling': ?reconciling,
      'updateTime': ?updateTime,
    };
  }

  factory GetConnectionResult.fromMap(Map<String, dynamic> map) {
    return GetConnectionResult(
      annotations: (() { final guardedValue = map['annotations']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      createTime: (() { final guardedValue = map['createTime']; if (guardedValue == null) return null; return guardedValue as String; })(),
      disabled: (() { final guardedValue = map['disabled']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      etag: (() { final guardedValue = map['etag']; if (guardedValue == null) return null; return guardedValue as String; })(),
      githubConfig: (() { final guardedValue = map['githubConfig']; if (guardedValue == null) return null; return GitHubConfigResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      githubEnterpriseConfig: (() { final guardedValue = map['githubEnterpriseConfig']; if (guardedValue == null) return null; return GoogleDevtoolsCloudbuildV2GitHubEnterpriseConfigResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      gitlabConfig: (() { final guardedValue = map['gitlabConfig']; if (guardedValue == null) return null; return GoogleDevtoolsCloudbuildV2GitLabConfigResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      installationState: (() { final guardedValue = map['installationState']; if (guardedValue == null) return null; return InstallationStateResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      reconciling: (() { final guardedValue = map['reconciling']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      updateTime: (() { final guardedValue = map['updateTime']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
