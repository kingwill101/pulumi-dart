// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// GitHub settings for the deployment.
class DeploymentSettingsGithub {
  /// Trigger a deployment running `pulumi up` on commit. Must be `false` when `deployTags` is `true`, because Pulumi Cloud rejects the two together.
  final pulumi.Input<bool?>? deployCommits;
  /// Trigger a deployment running `pulumi up` when a tag matching `tagFilters` is pushed. Can't be combined with `deployCommits`, which defaults to `true`, so set `deployCommits` to `false` when you enable this.
  final pulumi.Input<bool?>? deployTags;
  /// The paths within the repo that deployments should be filtered to.
  final pulumi.Input<List<String>?>? paths;
  /// Trigger a deployment running `pulumi preview` when a PR is opened.
  final pulumi.Input<bool?>? previewPullRequests;
  /// Use this stack as a template for pull request review stacks.
  final pulumi.Input<bool?>? pullRequestTemplate;
  /// The GitHub repository in the format org/repo.
  final pulumi.Input<String?>? repository;
  /// Glob patterns matching the tag names that trigger a deployment when `deployTags` is true. Prefix a pattern with `!` to exclude matching tags, for example `!*-rc*`. An empty list matches all tags.
  final pulumi.Input<List<String>?>? tagFilters;

  /// Creates a new [DeploymentSettingsGithub].
  /// [deployCommits] Trigger a deployment running `pulumi up` on commit. Must be `false` when `deployTags` is `true`, because Pulumi Cloud rejects the two together.
  /// [deployTags] Trigger a deployment running `pulumi up` when a tag matching `tagFilters` is pushed. Can't be combined with `deployCommits`, which defaults to `true`, so set `deployCommits` to `false` when you enable this.
  /// [paths] The paths within the repo that deployments should be filtered to.
  /// [previewPullRequests] Trigger a deployment running `pulumi preview` when a PR is opened.
  /// [pullRequestTemplate] Use this stack as a template for pull request review stacks.
  /// [repository] The GitHub repository in the format org/repo.
  /// [tagFilters] Glob patterns matching the tag names that trigger a deployment when `deployTags` is true. Prefix a pattern with `!` to exclude matching tags, for example `!*-rc*`. An empty list matches all tags.
  DeploymentSettingsGithub({
    pulumi.Input<bool?>? deployCommits,
    pulumi.Input<bool?>? deployTags,
    this.paths,
    pulumi.Input<bool?>? previewPullRequests,
    pulumi.Input<bool?>? pullRequestTemplate,
    this.repository,
    this.tagFilters,
  }) : deployCommits = deployCommits ?? pulumi.Input.fromValue(true), deployTags = deployTags ?? pulumi.Input.fromValue(false), previewPullRequests = previewPullRequests ?? pulumi.Input.fromValue(true), pullRequestTemplate = pullRequestTemplate ?? pulumi.Input.fromValue(false);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'deployCommits': ?deployCommits,
      'deployTags': ?deployTags,
      'paths': ?paths,
      'previewPullRequests': ?previewPullRequests,
      'pullRequestTemplate': ?pullRequestTemplate,
      'repository': ?repository,
      'tagFilters': ?tagFilters,
    };
  }

  factory DeploymentSettingsGithub.fromMap(Map<String, dynamic> map) {
    return DeploymentSettingsGithub(
      deployCommits: (() { final guardedValue = map['deployCommits']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      deployTags: (() { final guardedValue = map['deployTags']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      paths: (() { final guardedValue = map['paths']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      previewPullRequests: (() { final guardedValue = map['previewPullRequests']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      pullRequestTemplate: (() { final guardedValue = map['pullRequestTemplate']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      repository: (() { final guardedValue = map['repository']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tagFilters: (() { final guardedValue = map['tagFilters']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
    );
  }
}
