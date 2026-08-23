// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'pull_request_filter.dart';
import 'push_filter.dart';

/// GitHubEventsConfig describes the configuration of a trigger that creates a build whenever a GitHub event is received.
class GitHubEventsConfig {
  /// Optional. The resource name of the github enterprise config that should be applied to this installation. For example: "projects/{$project_id}/locations/{$location_id}/githubEnterpriseConfigs/{$config_id}"
  final pulumi.Input<String>? enterpriseConfigResourceName;
  /// The installationID that emits the GitHub event.
  final pulumi.Input<String>? installationId;
  /// Name of the repository. For example: The name for https://github.com/googlecloudplatform/cloud-builders is "cloud-builders".
  final pulumi.Input<String>? name;
  /// Owner of the repository. For example: The owner for https://github.com/googlecloudplatform/cloud-builders is "googlecloudplatform".
  final pulumi.Input<String>? owner;
  /// filter to match changes in pull requests.
  final pulumi.Input<PullRequestFilter>? pullRequest;
  /// filter to match changes in refs like branches, tags.
  final pulumi.Input<PushFilter>? push;

  /// Creates a new [GitHubEventsConfig].
  /// [enterpriseConfigResourceName] Optional. The resource name of the github enterprise config that should be applied to this installation. For example: "projects/{$project_id}/locations/{$location_id}/githubEnterpriseConfigs/{$config_id}"
  /// [installationId] The installationID that emits the GitHub event.
  /// [name] Name of the repository. For example: The name for https://github.com/googlecloudplatform/cloud-builders is "cloud-builders".
  /// [owner] Owner of the repository. For example: The owner for https://github.com/googlecloudplatform/cloud-builders is "googlecloudplatform".
  /// [pullRequest] filter to match changes in pull requests.
  /// [push] filter to match changes in refs like branches, tags.
  const GitHubEventsConfig({
    this.enterpriseConfigResourceName,
    this.installationId,
    this.name,
    this.owner,
    this.pullRequest,
    this.push,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enterpriseConfigResourceName': ?enterpriseConfigResourceName,
      'installationId': ?installationId,
      'name': ?name,
      'owner': ?owner,
      'pullRequest': ?pulumi.Input.mapOptionalInputValue<PullRequestFilter, Map<String, dynamic>>(pullRequest, (value) => value.toMap()),
      'push': ?pulumi.Input.mapOptionalInputValue<PushFilter, Map<String, dynamic>>(push, (value) => value.toMap()),
    };
  }

  factory GitHubEventsConfig.fromMap(Map<String, dynamic> map) {
    return GitHubEventsConfig(
      enterpriseConfigResourceName: (() { final guardedValue = map['enterpriseConfigResourceName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      installationId: (() { final guardedValue = map['installationId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      owner: (() { final guardedValue = map['owner']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      pullRequest: (() { final guardedValue = map['pullRequest']; if (guardedValue == null) return null; return pulumi.Input.fromValue(PullRequestFilter.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      push: (() { final guardedValue = map['push']; if (guardedValue == null) return null; return pulumi.Input.fromValue(PushFilter.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
