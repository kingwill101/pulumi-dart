// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'git_lab_config_response.dart';
import 'pull_request_filter_response.dart';
import 'push_filter_response.dart';

/// GitLabEventsConfig describes the configuration of a trigger that creates a build whenever a GitLab event is received.
class GitLabEventsConfigResponse {
  /// The GitLabConfig specified in the gitlab_config_resource field.
  final pulumi.Input<GitLabConfigResponse> gitlabConfig;
  /// The GitLab config resource that this trigger config maps to.
  final pulumi.Input<String> gitlabConfigResource;
  /// Namespace of the GitLab project.
  final pulumi.Input<String> projectNamespace;
  /// Filter to match changes in pull requests.
  final pulumi.Input<PullRequestFilterResponse> pullRequest;
  /// Filter to match changes in refs like branches, tags.
  final pulumi.Input<PushFilterResponse> push;

  /// Creates a new [GitLabEventsConfigResponse].
  /// [gitlabConfig] The GitLabConfig specified in the gitlab_config_resource field.
  /// [gitlabConfigResource] The GitLab config resource that this trigger config maps to.
  /// [projectNamespace] Namespace of the GitLab project.
  /// [pullRequest] Filter to match changes in pull requests.
  /// [push] Filter to match changes in refs like branches, tags.
  GitLabEventsConfigResponse({
    required this.gitlabConfig,
    required this.gitlabConfigResource,
    required this.projectNamespace,
    required this.pullRequest,
    required this.push,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'gitlabConfig': pulumi.Input.mapInputValue<GitLabConfigResponse, Map<String, dynamic>>(gitlabConfig, (value) => value.toMap()),
      'gitlabConfigResource': gitlabConfigResource,
      'projectNamespace': projectNamespace,
      'pullRequest': pulumi.Input.mapInputValue<PullRequestFilterResponse, Map<String, dynamic>>(pullRequest, (value) => value.toMap()),
      'push': pulumi.Input.mapInputValue<PushFilterResponse, Map<String, dynamic>>(push, (value) => value.toMap()),
    };
  }

  factory GitLabEventsConfigResponse.fromMap(Map<String, dynamic> map) {
    return GitLabEventsConfigResponse(
      gitlabConfig: pulumi.Input.fromValue(GitLabConfigResponse.fromMap((map['gitlabConfig']! as Map).cast<String, dynamic>())),
      gitlabConfigResource: pulumi.Input.fromValue(map['gitlabConfigResource'] as String),
      projectNamespace: pulumi.Input.fromValue(map['projectNamespace'] as String),
      pullRequest: pulumi.Input.fromValue(PullRequestFilterResponse.fromMap((map['pullRequest']! as Map).cast<String, dynamic>())),
      push: pulumi.Input.fromValue(PushFilterResponse.fromMap((map['push']! as Map).cast<String, dynamic>())),
    );
  }
}

