// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// VCS settings for the deployment, supporting multiple VCS providers.
class DeploymentSettingsVcs {
  /// Trigger a deployment running `pulumi up` on commit. Must be `false` when `deployTags` is `true`, because Pulumi Cloud rejects the two together.
  final pulumi.Input<bool?>? deployCommits;
  /// Deploy a specific pull request number.
  final pulumi.Input<int?>? deployPullRequest;
  /// Trigger a deployment running `pulumi up` when a tag matching `tagFilters` is pushed. Can't be combined with `deployCommits`, which defaults to `true`, so set `deployCommits` to `false` when you enable this.
  final pulumi.Input<bool?>? deployTags;
  /// The VCS integration installation ID. Use to disambiguate when an organization has multiple integrations of the same provider type (e.g., two GitHub Apps). If omitted, the API resolves the integration automatically from `provider` and `repository`.
  final pulumi.Input<String?>? installationId;
  /// The paths within the repo that deployments should be filtered to.
  final pulumi.Input<List<String>?>? paths;
  /// Trigger a deployment running `pulumi preview` when a PR is opened.
  final pulumi.Input<bool?>? previewPullRequests;
  /// The VCS provider type.
  final pulumi.Input<String> provider;
  /// Use this stack as a template for pull request review stacks.
  final pulumi.Input<bool?>? pullRequestTemplate;
  /// The repository identifier (e.g., 'ProjectName/RepoName' for Azure DevOps, 'org/repo' for GitHub).
  final pulumi.Input<String?>? repository;
  /// Glob patterns matching the tag names that trigger a deployment when `deployTags` is true. Prefix a pattern with `!` to exclude matching tags, for example `!*-rc*`. An empty list matches all tags.
  final pulumi.Input<List<String>?>? tagFilters;

  /// Creates a new [DeploymentSettingsVcs].
  /// [deployCommits] Trigger a deployment running `pulumi up` on commit. Must be `false` when `deployTags` is `true`, because Pulumi Cloud rejects the two together.
  /// [deployPullRequest] Deploy a specific pull request number.
  /// [deployTags] Trigger a deployment running `pulumi up` when a tag matching `tagFilters` is pushed. Can't be combined with `deployCommits`, which defaults to `true`, so set `deployCommits` to `false` when you enable this.
  /// [installationId] The VCS integration installation ID. Use to disambiguate when an organization has multiple integrations of the same provider type (e.g., two GitHub Apps). If omitted, the API resolves the integration automatically from `provider` and `repository`.
  /// [paths] The paths within the repo that deployments should be filtered to.
  /// [previewPullRequests] Trigger a deployment running `pulumi preview` when a PR is opened.
  /// [provider] The VCS provider type.
  /// [pullRequestTemplate] Use this stack as a template for pull request review stacks.
  /// [repository] The repository identifier (e.g., 'ProjectName/RepoName' for Azure DevOps, 'org/repo' for GitHub).
  /// [tagFilters] Glob patterns matching the tag names that trigger a deployment when `deployTags` is true. Prefix a pattern with `!` to exclude matching tags, for example `!*-rc*`. An empty list matches all tags.
  DeploymentSettingsVcs({
    pulumi.Input<bool?>? deployCommits,
    this.deployPullRequest,
    pulumi.Input<bool?>? deployTags,
    this.installationId,
    this.paths,
    pulumi.Input<bool?>? previewPullRequests,
    required this.provider,
    pulumi.Input<bool?>? pullRequestTemplate,
    this.repository,
    this.tagFilters,
  }) : deployCommits = deployCommits ?? pulumi.Input.fromValue(true), deployTags = deployTags ?? pulumi.Input.fromValue(false), previewPullRequests = previewPullRequests ?? pulumi.Input.fromValue(true), pullRequestTemplate = pullRequestTemplate ?? pulumi.Input.fromValue(false);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'deployCommits': ?deployCommits,
      'deployPullRequest': ?deployPullRequest,
      'deployTags': ?deployTags,
      'installationId': ?installationId,
      'paths': ?paths,
      'previewPullRequests': ?previewPullRequests,
      'provider': provider,
      'pullRequestTemplate': ?pullRequestTemplate,
      'repository': ?repository,
      'tagFilters': ?tagFilters,
    };
  }

  factory DeploymentSettingsVcs.fromMap(Map<String, dynamic> map) {
    return DeploymentSettingsVcs(
      deployCommits: (() { final guardedValue = map['deployCommits']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      deployPullRequest: (() { final guardedValue = map['deployPullRequest']; if (guardedValue == null) return null; return pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue)); })(),
      deployTags: (() { final guardedValue = map['deployTags']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      installationId: (() { final guardedValue = map['installationId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      paths: (() { final guardedValue = map['paths']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      previewPullRequests: (() { final guardedValue = map['previewPullRequests']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      provider: pulumi.Input.fromValue(map['provider'] as String),
      pullRequestTemplate: (() { final guardedValue = map['pullRequestTemplate']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      repository: (() { final guardedValue = map['repository']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tagFilters: (() { final guardedValue = map['tagFilters']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
    );
  }
}
