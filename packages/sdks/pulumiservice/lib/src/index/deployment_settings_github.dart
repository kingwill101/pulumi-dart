// ignore_for_file: unused_element, unnecessary_cast


/// GitHub settings for the deployment.
class DeploymentSettingsGithub {
  /// Trigger a deployment running `pulumi up` on commit.
  final bool? deployCommits;
  /// The paths within the repo that deployments should be filtered to.
  final List<String>? paths;
  /// Trigger a deployment running `pulumi preview` when a PR is opened.
  final bool? previewPullRequests;
  /// Use this stack as a template for pull request review stacks.
  final bool? pullRequestTemplate;
  /// The GitHub repository in the format org/repo.
  final String? repository;

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
      deployCommits: map['deployCommits'] == null ? null : map['deployCommits'] as bool,
      paths: map['paths'] == null ? null : (map['paths'] as List).cast<String>(),
      previewPullRequests: map['previewPullRequests'] == null ? null : map['previewPullRequests'] as bool,
      pullRequestTemplate: map['pullRequestTemplate'] == null ? null : map['pullRequestTemplate'] as bool,
      repository: map['repository'] == null ? null : map['repository'] as String,
    );
  }
}

