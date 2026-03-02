// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'pull_request_filter_response.dart';
import 'push_filter_response.dart';

/// GitHubEventsConfig describes the configuration of a trigger that creates a build whenever a GitHub event is received.
class GitHubEventsConfigResponse {
  /// Optional. The resource name of the github enterprise config that should be applied to this installation. For example: "projects/{$project_id}/locations/{$location_id}/githubEnterpriseConfigs/{$config_id}"
  final pulumi.Input<String> enterpriseConfigResourceName;
  /// The installationID that emits the GitHub event.
  final pulumi.Input<String> installationId;
  /// Name of the repository. For example: The name for https://github.com/googlecloudplatform/cloud-builders is "cloud-builders".
  final pulumi.Input<String> name;
  /// Owner of the repository. For example: The owner for https://github.com/googlecloudplatform/cloud-builders is "googlecloudplatform".
  final pulumi.Input<String> owner;
  /// filter to match changes in pull requests.
  final pulumi.Input<PullRequestFilterResponse> pullRequest;
  /// filter to match changes in refs like branches, tags.
  final pulumi.Input<PushFilterResponse> push;

  /// Creates a new [GitHubEventsConfigResponse].
  /// [enterpriseConfigResourceName] Optional. The resource name of the github enterprise config that should be applied to this installation. For example: "projects/{$project_id}/locations/{$location_id}/githubEnterpriseConfigs/{$config_id}"
  /// [installationId] The installationID that emits the GitHub event.
  /// [name] Name of the repository. For example: The name for https://github.com/googlecloudplatform/cloud-builders is "cloud-builders".
  /// [owner] Owner of the repository. For example: The owner for https://github.com/googlecloudplatform/cloud-builders is "googlecloudplatform".
  /// [pullRequest] filter to match changes in pull requests.
  /// [push] filter to match changes in refs like branches, tags.
  GitHubEventsConfigResponse({
    required this.enterpriseConfigResourceName,
    required this.installationId,
    required this.name,
    required this.owner,
    required this.pullRequest,
    required this.push,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enterpriseConfigResourceName': enterpriseConfigResourceName,
      'installationId': installationId,
      'name': name,
      'owner': owner,
      'pullRequest': pulumi.Input.mapInputValue<PullRequestFilterResponse, Map<String, dynamic>>(pullRequest, (value) => value.toMap()),
      'push': pulumi.Input.mapInputValue<PushFilterResponse, Map<String, dynamic>>(push, (value) => value.toMap()),
    };
  }

  factory GitHubEventsConfigResponse.fromMap(Map<String, dynamic> map) {
    return GitHubEventsConfigResponse(
      enterpriseConfigResourceName: (map['enterpriseConfigResourceName'] as String).input(),
      installationId: (map['installationId'] as String).input(),
      name: (map['name'] as String).input(),
      owner: (map['owner'] as String).input(),
      pullRequest: (PullRequestFilterResponse.fromMap((map['pullRequest'] as Map).cast<String, dynamic>())).input(),
      push: (PushFilterResponse.fromMap((map['push'] as Map).cast<String, dynamic>())).input(),
    );
  }
}

