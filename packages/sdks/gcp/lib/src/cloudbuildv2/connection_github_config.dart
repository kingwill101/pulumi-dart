// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'connection_github_config_authorizer_credential.dart';

class ConnectionGithubConfig {
  /// GitHub App installation id.
  final pulumi.Input<int>? appInstallationId;

  /// OAuth credential of the account that authorized the Cloud Build GitHub App. It is recommended to use a robot account instead of a human user account. The OAuth token must be tied to the Cloud Build GitHub App.
  /// Structure is documented below.
  final pulumi.Input<ConnectionGithubConfigAuthorizerCredential>?
  authorizerCredential;

  /// Creates a new [ConnectionGithubConfig].
  /// [appInstallationId] GitHub App installation id.
  /// [authorizerCredential] OAuth credential of the account that authorized the Cloud Build GitHub App. It is recommended to use a robot account instead of a human user account. The OAuth token must be tied to the Cloud Build GitHub App.
  ConnectionGithubConfig({this.appInstallationId, this.authorizerCredential});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'appInstallationId': ?appInstallationId,
      'authorizerCredential':
          ?pulumi.Input.mapOptionalInputValue<
            ConnectionGithubConfigAuthorizerCredential,
            Map<String, dynamic>
          >(authorizerCredential, (value) => value.toMap()),
    };
  }

  factory ConnectionGithubConfig.fromMap(Map<String, dynamic> map) {
    return ConnectionGithubConfig(
      appInstallationId: (() {
        final guardedValue = map['appInstallationId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      authorizerCredential: (() {
        final guardedValue = map['authorizerCredential'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          ConnectionGithubConfigAuthorizerCredential.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
    );
  }
}
