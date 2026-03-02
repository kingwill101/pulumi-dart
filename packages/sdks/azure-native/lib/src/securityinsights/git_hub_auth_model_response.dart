// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Model for API authentication for GitHub. For this authentication first we need to approve the Router app (Microsoft Security DevOps) to access the GitHub account, Then we only need the InstallationId to get the access token from https://api.github.com/app/installations/{installId}/access_tokens.
class GitHubAuthModelResponse {
  /// The GitHubApp auth installation id.
  final pulumi.Input<String>? installationId;
  /// Type of paging
  /// Expected value is 'GitHub'.
  final pulumi.Input<String> type;

  /// Creates a new [GitHubAuthModelResponse].
  /// [installationId] The GitHubApp auth installation id.
  /// [type] Type of paging
  GitHubAuthModelResponse({
    this.installationId,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'installationId': ?installationId,
      'type': type,
    };
  }

  factory GitHubAuthModelResponse.fromMap(Map<String, dynamic> map) {
    return GitHubAuthModelResponse(
      installationId: map['installationId'] == null ? null : (map['installationId'] as String).input(),
      type: (map['type'] as String).input(),
    );
  }
}

