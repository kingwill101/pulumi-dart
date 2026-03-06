// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'pull_request_filter_response.dart';
import 'push_filter_response.dart';

/// The configuration of a trigger that creates a build whenever an event from Repo API is received.
class RepositoryEventConfigResponse {
  /// Filter to match changes in pull requests.
  final pulumi.Input<PullRequestFilterResponse> pullRequest;
  /// Filter to match changes in refs like branches, tags.
  final pulumi.Input<PushFilterResponse> push;
  /// The resource name of the Repo API resource.
  final pulumi.Input<String> repository;
  /// The type of the SCM vendor the repository points to.
  final pulumi.Input<String> repositoryType;

  /// Creates a new [RepositoryEventConfigResponse].
  /// [pullRequest] Filter to match changes in pull requests.
  /// [push] Filter to match changes in refs like branches, tags.
  /// [repository] The resource name of the Repo API resource.
  /// [repositoryType] The type of the SCM vendor the repository points to.
  const RepositoryEventConfigResponse({
    required this.pullRequest,
    required this.push,
    required this.repository,
    required this.repositoryType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'pullRequest': pulumi.Input.mapInputValue<PullRequestFilterResponse, Map<String, dynamic>>(pullRequest, (value) => value.toMap()),
      'push': pulumi.Input.mapInputValue<PushFilterResponse, Map<String, dynamic>>(push, (value) => value.toMap()),
      'repository': repository,
      'repositoryType': repositoryType,
    };
  }

  factory RepositoryEventConfigResponse.fromMap(Map<String, dynamic> map) {
    return RepositoryEventConfigResponse(
      pullRequest: pulumi.Input.fromValue(PullRequestFilterResponse.fromMap((map['pullRequest']! as Map).cast<String, dynamic>())),
      push: pulumi.Input.fromValue(PushFilterResponse.fromMap((map['push']! as Map).cast<String, dynamic>())),
      repository: pulumi.Input.fromValue(map['repository'] as String),
      repositoryType: pulumi.Input.fromValue(map['repositoryType'] as String),
    );
  }
}

