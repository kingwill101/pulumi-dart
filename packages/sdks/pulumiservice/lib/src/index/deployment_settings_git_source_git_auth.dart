// ignore_for_file: unused_element, unnecessary_cast

import 'deployment_settings_git_auth_basic_auth.dart';
import 'deployment_settings_git_auth_sshauth.dart';

/// Git source settings for a deployment.
class DeploymentSettingsGitSourceGitAuth {
  /// Basic auth for git authentication. Only one of `personalAccessToken`, `sshAuth`, or `basicAuth` must be defined.
  final DeploymentSettingsGitAuthBasicAuth? basicAuth;
  /// SSH auth for git authentication. Only one of `personalAccessToken`, `sshAuth`, or `basicAuth` must be defined.
  final DeploymentSettingsGitAuthSSHAuth? sshAuth;

  /// Creates a new [DeploymentSettingsGitSourceGitAuth].
  /// [basicAuth] Basic auth for git authentication. Only one of `personalAccessToken`, `sshAuth`, or `basicAuth` must be defined.
  /// [sshAuth] SSH auth for git authentication. Only one of `personalAccessToken`, `sshAuth`, or `basicAuth` must be defined.
  DeploymentSettingsGitSourceGitAuth({
    this.basicAuth,
    this.sshAuth,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'basicAuth': ?basicAuth == null ? null : basicAuth!.toMap(),
      'sshAuth': ?sshAuth == null ? null : sshAuth!.toMap(),
    };
  }

  factory DeploymentSettingsGitSourceGitAuth.fromMap(Map<String, dynamic> map) {
    return DeploymentSettingsGitSourceGitAuth(
      basicAuth: map['basicAuth'] == null ? null : DeploymentSettingsGitAuthBasicAuth.fromMap((map['basicAuth'] as Map).cast<String, dynamic>()),
      sshAuth: map['sshAuth'] == null ? null : DeploymentSettingsGitAuthSSHAuth.fromMap((map['sshAuth'] as Map).cast<String, dynamic>()),
    );
  }
}

