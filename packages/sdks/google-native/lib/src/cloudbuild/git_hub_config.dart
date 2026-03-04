// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'oauth_credential.dart';

/// Configuration for connections to github.com.
class GitHubConfig {
  /// GitHub App installation id.
  final pulumi.Input<String>? appInstallationId;

  /// OAuth credential of the account that authorized the Cloud Build GitHub App. It is recommended to use a robot account instead of a human user account. The OAuth token must be tied to the Cloud Build GitHub App.
  final pulumi.Input<OAuthCredential>? authorizerCredential;

  /// Creates a new [GitHubConfig].
  /// [appInstallationId] GitHub App installation id.
  /// [authorizerCredential] OAuth credential of the account that authorized the Cloud Build GitHub App. It is recommended to use a robot account instead of a human user account. The OAuth token must be tied to the Cloud Build GitHub App.
  GitHubConfig({this.appInstallationId, this.authorizerCredential});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'appInstallationId': ?appInstallationId,
      'authorizerCredential':
          ?pulumi.Input.mapOptionalInputValue<
            OAuthCredential,
            Map<String, dynamic>
          >(authorizerCredential, (value) => value.toMap()),
    };
  }

  factory GitHubConfig.fromMap(Map<String, dynamic> map) {
    return GitHubConfig(
      appInstallationId: (() {
        final guardedValue = map['appInstallationId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      authorizerCredential: (() {
        final guardedValue = map['authorizerCredential'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          OAuthCredential.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
    );
  }
}
