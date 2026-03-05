// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// GitHub settings for the deployment.
class DeploymentSettingsGithub {
  /// Trigger a deployment running `pulumi up` on commit.
  final pulumi.Input<bool>? deployCommits;
  /// The paths within the repo that deployments should be filtered to.
  final pulumi.Input<List<String>>? paths;
  /// Trigger a deployment running `pulumi preview` when a PR is opened.
  final pulumi.Input<bool>? previewPullRequests;
  /// Use this stack as a template for pull request review stacks.
  final pulumi.Input<bool>? pullRequestTemplate;
  /// The GitHub repository in the format org/repo.
  final pulumi.Input<String>? repository;

  /// Creates a new [DeploymentSettingsGithub].
  /// [deployCommits] Trigger a deployment running `pulumi up` on commit.
  /// [paths] The paths within the repo that deployments should be filtered to.
  /// [previewPullRequests] Trigger a deployment running `pulumi preview` when a PR is opened.
  /// [pullRequestTemplate] Use this stack as a template for pull request review stacks.
  /// [repository] The GitHub repository in the format org/repo.
  DeploymentSettingsGithub({
    this.deployCommits,
    this.paths,
    this.previewPullRequests,
    this.pullRequestTemplate,
    this.repository,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'deployCommits': ?deployCommits,
      'paths': ?paths,
      'previewPullRequests': ?previewPullRequests,
      'pullRequestTemplate': ?pullRequestTemplate,
      'repository': ?repository,
    };
  }

  factory DeploymentSettingsGithub.fromMap(Map<String, dynamic> map) {
    return DeploymentSettingsGithub(
      deployCommits: (() { final guardedValue = map['deployCommits']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      paths: (() { final guardedValue = map['paths']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      previewPullRequests: (() { final guardedValue = map['previewPullRequests']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      pullRequestTemplate: (() { final guardedValue = map['pullRequestTemplate']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      repository: (() { final guardedValue = map['repository']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

