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
  DeploymentSettingsGitSource({
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
      branch: map['branch'] == null ? null : (map['branch'] as String).input(),
      commit: map['commit'] == null ? null : (map['commit'] as String).input(),
      gitAuth: map['gitAuth'] == null ? null : (DeploymentSettingsGitSourceGitAuth.fromMap((map['gitAuth'] as Map).cast<String, dynamic>())).input(),
      repoDir: map['repoDir'] == null ? null : (map['repoDir'] as String).input(),
      repoUrl: map['repoUrl'] == null ? null : (map['repoUrl'] as String).input(),
    );
  }
}

