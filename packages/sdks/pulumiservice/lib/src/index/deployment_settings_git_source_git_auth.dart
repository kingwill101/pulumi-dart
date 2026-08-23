// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'deployment_settings_git_auth_basic_auth.dart';
import 'deployment_settings_git_auth_sshauth.dart';

/// Git source settings for a deployment.
class DeploymentSettingsGitSourceGitAuth {
  /// Basic auth for git authentication. Only one of `personalAccessToken`, `sshAuth`, or `basicAuth` must be defined.
  final pulumi.Input<DeploymentSettingsGitAuthBasicAuth>? basicAuth;
  /// SSH auth for git authentication. Only one of `personalAccessToken`, `sshAuth`, or `basicAuth` must be defined.
  final pulumi.Input<DeploymentSettingsGitAuthSSHAuth>? sshAuth;

  /// Creates a new [DeploymentSettingsGitSourceGitAuth].
  /// [basicAuth] Basic auth for git authentication. Only one of `personalAccessToken`, `sshAuth`, or `basicAuth` must be defined.
  /// [sshAuth] SSH auth for git authentication. Only one of `personalAccessToken`, `sshAuth`, or `basicAuth` must be defined.
  const DeploymentSettingsGitSourceGitAuth({
    this.basicAuth,
    this.sshAuth,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'basicAuth': ?pulumi.Input.mapOptionalInputValue<DeploymentSettingsGitAuthBasicAuth, Map<String, dynamic>>(basicAuth, (value) => value.toMap()),
      'sshAuth': ?pulumi.Input.mapOptionalInputValue<DeploymentSettingsGitAuthSSHAuth, Map<String, dynamic>>(sshAuth, (value) => value.toMap()),
    };
  }

  factory DeploymentSettingsGitSourceGitAuth.fromMap(Map<String, dynamic> map) {
    return DeploymentSettingsGitSourceGitAuth(
      basicAuth: (() { final guardedValue = map['basicAuth']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DeploymentSettingsGitAuthBasicAuth.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      sshAuth: (() { final guardedValue = map['sshAuth']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DeploymentSettingsGitAuthSSHAuth.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
