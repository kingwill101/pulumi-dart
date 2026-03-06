// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'pull_request_filter.dart';
import 'push_filter.dart';

/// GitLabEventsConfig describes the configuration of a trigger that creates a build whenever a GitLab event is received.
class GitLabEventsConfig {
  /// The GitLab config resource that this trigger config maps to.
  final pulumi.Input<String>? gitlabConfigResource;
  /// Namespace of the GitLab project.
  final pulumi.Input<String>? projectNamespace;
  /// Filter to match changes in pull requests.
  final pulumi.Input<PullRequestFilter>? pullRequest;
  /// Filter to match changes in refs like branches, tags.
  final pulumi.Input<PushFilter>? push;

  /// Creates a new [GitLabEventsConfig].
  /// [gitlabConfigResource] The GitLab config resource that this trigger config maps to.
  /// [projectNamespace] Namespace of the GitLab project.
  /// [pullRequest] Filter to match changes in pull requests.
  /// [push] Filter to match changes in refs like branches, tags.
  const GitLabEventsConfig({
    this.gitlabConfigResource,
    this.projectNamespace,
    this.pullRequest,
    this.push,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'gitlabConfigResource': ?gitlabConfigResource,
      'projectNamespace': ?projectNamespace,
      'pullRequest': ?pulumi.Input.mapOptionalInputValue<PullRequestFilter, Map<String, dynamic>>(pullRequest, (value) => value.toMap()),
      'push': ?pulumi.Input.mapOptionalInputValue<PushFilter, Map<String, dynamic>>(push, (value) => value.toMap()),
    };
  }

  factory GitLabEventsConfig.fromMap(Map<String, dynamic> map) {
    return GitLabEventsConfig(
      gitlabConfigResource: (() { final guardedValue = map['gitlabConfigResource']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      projectNamespace: (() { final guardedValue = map['projectNamespace']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      pullRequest: (() { final guardedValue = map['pullRequest']; if (guardedValue == null) return null; return pulumi.Input.fromValue(PullRequestFilter.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      push: (() { final guardedValue = map['push']; if (guardedValue == null) return null; return pulumi.Input.fromValue(PushFilter.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}

