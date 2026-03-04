// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// GitLabRepositoryId identifies a specific repository hosted on GitLab.com or GitLabEnterprise
class GitLabRepositoryIdResponse {
  /// The ID of the webhook that was created for receiving events from this repo. We only create and manage a single webhook for each repo.
  final pulumi.Input<int> webhookId;

  /// Creates a new [GitLabRepositoryIdResponse].
  /// [webhookId] The ID of the webhook that was created for receiving events from this repo. We only create and manage a single webhook for each repo.
  GitLabRepositoryIdResponse({required this.webhookId});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'webhookId': webhookId};
  }

  factory GitLabRepositoryIdResponse.fromMap(Map<String, dynamic> map) {
    return GitLabRepositoryIdResponse(
      webhookId: pulumi.Input.fromValue(map['webhookId'] as int),
    );
  }
}
