// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'connection_gitlab_config_authorizer_credential.dart';
import 'connection_gitlab_config_read_authorizer_credential.dart';

class ConnectionGitlabConfig {
  /// Represents a personal access token that authorized the Connection,
  /// and associated metadata.
  /// Structure is documented below.
  final pulumi.Input<ConnectionGitlabConfigAuthorizerCredential> authorizerCredential;
  /// Represents a personal access token that authorized the Connection,
  /// and associated metadata.
  /// Structure is documented below.
  final pulumi.Input<ConnectionGitlabConfigReadAuthorizerCredential> readAuthorizerCredential;
  /// Required. Immutable. SecretManager resource containing the webhook secret of a GitLab project,
  /// formatted as `projects/*/secrets/*/versions/*`. This is used to validate
  /// webhooks.
  final pulumi.Input<String> webhookSecretSecretVersion;

  /// Creates a new [ConnectionGitlabConfig].
  /// [authorizerCredential] Represents a personal access token that authorized the Connection,
  /// [readAuthorizerCredential] Represents a personal access token that authorized the Connection,
  /// [webhookSecretSecretVersion] Required. Immutable. SecretManager resource containing the webhook secret of a GitLab project,
  const ConnectionGitlabConfig({
    required this.authorizerCredential,
    required this.readAuthorizerCredential,
    required this.webhookSecretSecretVersion,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'authorizerCredential': pulumi.Input.mapInputValue<ConnectionGitlabConfigAuthorizerCredential, Map<String, dynamic>>(authorizerCredential, (value) => value.toMap()),
      'readAuthorizerCredential': pulumi.Input.mapInputValue<ConnectionGitlabConfigReadAuthorizerCredential, Map<String, dynamic>>(readAuthorizerCredential, (value) => value.toMap()),
      'webhookSecretSecretVersion': webhookSecretSecretVersion,
    };
  }

  factory ConnectionGitlabConfig.fromMap(Map<String, dynamic> map) {
    return ConnectionGitlabConfig(
      authorizerCredential: pulumi.Input.fromValue(ConnectionGitlabConfigAuthorizerCredential.fromMap((map['authorizerCredential']! as Map).cast<String, dynamic>())),
      readAuthorizerCredential: pulumi.Input.fromValue(ConnectionGitlabConfigReadAuthorizerCredential.fromMap((map['readAuthorizerCredential']! as Map).cast<String, dynamic>())),
      webhookSecretSecretVersion: pulumi.Input.fromValue(map['webhookSecretSecretVersion'] as String),
    );
  }
}
