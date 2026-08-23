// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'deployment_settings_git_source_git_auth.dart';

/// Git source settings for a deployment.
class DeploymentSettingsGitSource {
  /// The branch to deploy. One of either `branch` or `commit` must be specified.
  final pulumi.Input<String>? branch;
  /// The commit to deploy. One of either `branch` or `commit` must be specified.
  final pulumi.Input<String>? commit;
  /// Git authentication configuration for this deployment. Should not be specified if there are `gitHub` settings for this deployment.
  final pulumi.Input<DeploymentSettingsGitSourceGitAuth>? gitAuth;
  /// The directory within the repository where the Pulumi.yaml is located.
  final pulumi.Input<String>? repoDir;
  /// The repository URL to use for git settings. Should not be specified if there are `gitHub` settings for this deployment.
  final pulumi.Input<String>? repoUrl;

  /// Creates a new [DeploymentSettingsGitSource].
  /// [branch] The branch to deploy. One of either `branch` or `commit` must be specified.
  /// [commit] The commit to deploy. One of either `branch` or `commit` must be specified.
  /// [gitAuth] Git authentication configuration for this deployment. Should not be specified if there are `gitHub` settings for this deployment.
  /// [repoDir] The directory within the repository where the Pulumi.yaml is located.
  /// [repoUrl] The repository URL to use for git settings. Should not be specified if there are `gitHub` settings for this deployment.
  const DeploymentSettingsGitSource({
    this.branch,
    this.commit,
    this.gitAuth,
    this.repoDir,
    this.repoUrl,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'branch': ?branch,
      'commit': ?commit,
      'gitAuth': ?pulumi.Input.mapOptionalInputValue<DeploymentSettingsGitSourceGitAuth, Map<String, dynamic>>(gitAuth, (value) => value.toMap()),
      'repoDir': ?repoDir,
      'repoUrl': ?repoUrl,
    };
  }

  factory DeploymentSettingsGitSource.fromMap(Map<String, dynamic> map) {
    return DeploymentSettingsGitSource(
      branch: (() { final guardedValue = map['branch']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      commit: (() { final guardedValue = map['commit']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      gitAuth: (() { final guardedValue = map['gitAuth']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DeploymentSettingsGitSourceGitAuth.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      repoDir: (() { final guardedValue = map['repoDir']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      repoUrl: (() { final guardedValue = map['repoUrl']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
