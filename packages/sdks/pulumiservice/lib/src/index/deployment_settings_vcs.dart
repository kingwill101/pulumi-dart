// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// VCS settings for the deployment, supporting multiple VCS providers.
class DeploymentSettingsVcs {
  /// Trigger a deployment running `pulumi up` on commit.
  final pulumi.Input<bool>? deployCommits;
  /// Deploy a specific pull request number.
  final pulumi.Input<int>? deployPullRequest;
  /// The VCS integration installation ID. Use to disambiguate when an organization has multiple integrations of the same provider type (e.g., two GitHub Apps). If omitted, the API resolves the integration automatically from `provider` and `repository`.
  final pulumi.Input<String>? installationId;
  /// The paths within the repo that deployments should be filtered to.
  final pulumi.Input<List<String>>? paths;
  /// Trigger a deployment running `pulumi preview` when a PR is opened.
  final pulumi.Input<bool>? previewPullRequests;
  /// The VCS provider type.
  final pulumi.Input<String> provider;
  /// Use this stack as a template for pull request review stacks.
  final pulumi.Input<bool>? pullRequestTemplate;
  /// The repository identifier (e.g., 'ProjectName/RepoName' for Azure DevOps, 'org/repo' for GitHub).
  final pulumi.Input<String>? repository;

  /// Creates a new [DeploymentSettingsVcs].
  /// [deployCommits] Trigger a deployment running `pulumi up` on commit.
  /// [deployPullRequest] Deploy a specific pull request number.
  /// [installationId] The VCS integration installation ID. Use to disambiguate when an organization has multiple integrations of the same provider type (e.g., two GitHub Apps). If omitted, the API resolves the integration automatically from `provider` and `repository`.
  /// [paths] The paths within the repo that deployments should be filtered to.
  /// [previewPullRequests] Trigger a deployment running `pulumi preview` when a PR is opened.
  /// [provider] The VCS provider type.
  /// [pullRequestTemplate] Use this stack as a template for pull request review stacks.
  /// [repository] The repository identifier (e.g., 'ProjectName/RepoName' for Azure DevOps, 'org/repo' for GitHub).
  const DeploymentSettingsVcs({
    this.deployCommits,
    this.deployPullRequest,
    this.installationId,
    this.paths,
    this.previewPullRequests,
    required this.provider,
    this.pullRequestTemplate,
    this.repository,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'deployCommits': ?deployCommits,
      'deployPullRequest': ?deployPullRequest,
      'installationId': ?installationId,
      'paths': ?paths,
      'previewPullRequests': ?previewPullRequests,
      'provider': provider,
      'pullRequestTemplate': ?pullRequestTemplate,
      'repository': ?repository,
    };
  }

  factory DeploymentSettingsVcs.fromMap(Map<String, dynamic> map) {
    return DeploymentSettingsVcs(
      deployCommits: (() { final guardedValue = map['deployCommits']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      deployPullRequest: (() { final guardedValue = map['deployPullRequest']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      installationId: (() { final guardedValue = map['installationId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      paths: (() { final guardedValue = map['paths']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      previewPullRequests: (() { final guardedValue = map['previewPullRequests']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      provider: pulumi.Input.fromValue(map['provider'] as String),
      pullRequestTemplate: (() { final guardedValue = map['pullRequestTemplate']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      repository: (() { final guardedValue = map['repository']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
