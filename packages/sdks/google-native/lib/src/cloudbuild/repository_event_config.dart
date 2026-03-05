// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'pull_request_filter.dart';
import 'push_filter.dart';

/// The configuration of a trigger that creates a build whenever an event from Repo API is received.
class RepositoryEventConfig {
  /// Filter to match changes in pull requests.
  final pulumi.Input<PullRequestFilter>? pullRequest;
  /// Filter to match changes in refs like branches, tags.
  final pulumi.Input<PushFilter>? push;
  /// The resource name of the Repo API resource.
  final pulumi.Input<String>? repository;

  /// Creates a new [RepositoryEventConfig].
  /// [pullRequest] Filter to match changes in pull requests.
  /// [push] Filter to match changes in refs like branches, tags.
  /// [repository] The resource name of the Repo API resource.
  RepositoryEventConfig({
    this.pullRequest,
    this.push,
    this.repository,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'pullRequest': ?pulumi.Input.mapOptionalInputValue<PullRequestFilter, Map<String, dynamic>>(pullRequest, (value) => value.toMap()),
      'push': ?pulumi.Input.mapOptionalInputValue<PushFilter, Map<String, dynamic>>(push, (value) => value.toMap()),
      'repository': ?repository,
    };
  }

  factory RepositoryEventConfig.fromMap(Map<String, dynamic> map) {
    return RepositoryEventConfig(
      pullRequest: (() { final guardedValue = map['pullRequest']; if (guardedValue == null) return null; return pulumi.Input.fromValue(PullRequestFilter.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      push: (() { final guardedValue = map['push']; if (guardedValue == null) return null; return pulumi.Input.fromValue(PushFilter.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      repository: (() { final guardedValue = map['repository']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

