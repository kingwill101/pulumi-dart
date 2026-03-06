// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'connection_github_config_authorizer_credential.dart';

class ConnectionGithubConfig {
  /// Optional. GitHub App installation id.
  final pulumi.Input<String>? appInstallationId;
  /// Represents an OAuth token of the account that authorized the Connection,
  /// and associated metadata.
  /// Structure is documented below.
  final pulumi.Input<ConnectionGithubConfigAuthorizerCredential>? authorizerCredential;
  /// Required. Immutable. The GitHub Application that was installed to the GitHub user or
  /// organization.
  /// Possible values:
  /// GIT_HUB_APP_UNSPECIFIED
  /// DEVELOPER_CONNECT
  /// FIREBASE
  final pulumi.Input<String> githubApp;
  /// (Output)
  /// Output only. The URI to navigate to in order to manage the installation associated
  /// with this GitHubConfig.
  final pulumi.Input<String>? installationUri;

  /// Creates a new [ConnectionGithubConfig].
  /// [appInstallationId] Optional. GitHub App installation id.
  /// [authorizerCredential] Represents an OAuth token of the account that authorized the Connection,
  /// [githubApp] Required. Immutable. The GitHub Application that was installed to the GitHub user or
  /// [installationUri] (Output)
  const ConnectionGithubConfig({
    this.appInstallationId,
    this.authorizerCredential,
    required this.githubApp,
    this.installationUri,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'appInstallationId': ?appInstallationId,
      'authorizerCredential': ?pulumi.Input.mapOptionalInputValue<ConnectionGithubConfigAuthorizerCredential, Map<String, dynamic>>(authorizerCredential, (value) => value.toMap()),
      'githubApp': githubApp,
      'installationUri': ?installationUri,
    };
  }

  factory ConnectionGithubConfig.fromMap(Map<String, dynamic> map) {
    return ConnectionGithubConfig(
      appInstallationId: (() { final guardedValue = map['appInstallationId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      authorizerCredential: (() { final guardedValue = map['authorizerCredential']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ConnectionGithubConfigAuthorizerCredential.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      githubApp: pulumi.Input.fromValue(map['githubApp'] as String),
      installationUri: (() { final guardedValue = map['installationUri']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

