// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// BitbucketServerRepositoryId identifies a specific repository hosted on a Bitbucket Server.
class BitbucketServerRepositoryIdResponse {
  /// Identifier for the project storing the repository.
  final pulumi.Input<String> projectKey;
  /// Identifier for the repository.
  final pulumi.Input<String> repoSlug;
  /// The ID of the webhook that was created for receiving events from this repo. We only create and manage a single webhook for each repo.
  final pulumi.Input<int> webhookId;

  /// Creates a new [BitbucketServerRepositoryIdResponse].
  /// [projectKey] Identifier for the project storing the repository.
  /// [repoSlug] Identifier for the repository.
  /// [webhookId] The ID of the webhook that was created for receiving events from this repo. We only create and manage a single webhook for each repo.
  const BitbucketServerRepositoryIdResponse({
    required this.projectKey,
    required this.repoSlug,
    required this.webhookId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'projectKey': projectKey,
      'repoSlug': repoSlug,
      'webhookId': webhookId,
    };
  }

  factory BitbucketServerRepositoryIdResponse.fromMap(Map<String, dynamic> map) {
    return BitbucketServerRepositoryIdResponse(
      projectKey: pulumi.Input.fromValue(map['projectKey'] as String),
      repoSlug: pulumi.Input.fromValue(map['repoSlug'] as String),
      webhookId: pulumi.Input.fromValue(map['webhookId'] as int),
    );
  }
}

