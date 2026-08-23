// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'oauth_credential_response.dart';

/// Configuration for connections to github.com.
class GitHubConfigResponse {
  /// GitHub App installation id.
  final pulumi.Input<String> appInstallationId;
  /// OAuth credential of the account that authorized the Cloud Build GitHub App. It is recommended to use a robot account instead of a human user account. The OAuth token must be tied to the Cloud Build GitHub App.
  final pulumi.Input<OAuthCredentialResponse> authorizerCredential;

  /// Creates a new [GitHubConfigResponse].
  /// [appInstallationId] GitHub App installation id.
  /// [authorizerCredential] OAuth credential of the account that authorized the Cloud Build GitHub App. It is recommended to use a robot account instead of a human user account. The OAuth token must be tied to the Cloud Build GitHub App.
  const GitHubConfigResponse({
    required this.appInstallationId,
    required this.authorizerCredential,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'appInstallationId': appInstallationId,
      'authorizerCredential': pulumi.Input.mapInputValue<OAuthCredentialResponse, Map<String, dynamic>>(authorizerCredential, (value) => value.toMap()),
    };
  }

  factory GitHubConfigResponse.fromMap(Map<String, dynamic> map) {
    return GitHubConfigResponse(
      appInstallationId: pulumi.Input.fromValue(map['appInstallationId'] as String),
      authorizerCredential: pulumi.Input.fromValue(OAuthCredentialResponse.fromMap((map['authorizerCredential']! as Map).cast<String, dynamic>())),
    );
  }
}
