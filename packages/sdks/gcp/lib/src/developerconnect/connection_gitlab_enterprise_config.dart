// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'connection_gitlab_enterprise_config_authorizer_credential.dart';
import 'connection_gitlab_enterprise_config_read_authorizer_credential.dart';
import 'connection_gitlab_enterprise_config_service_directory_config.dart';

class ConnectionGitlabEnterpriseConfig {
  /// Represents a personal access token that authorized the Connection,
  /// and associated metadata.
  /// Structure is documented below.
  final pulumi.Input<ConnectionGitlabEnterpriseConfigAuthorizerCredential>
  authorizerCredential;

  /// Required. The URI of the GitLab Enterprise host this connection is for.
  final pulumi.Input<String> hostUri;

  /// Represents a personal access token that authorized the Connection,
  /// and associated metadata.
  /// Structure is documented below.
  final pulumi.Input<ConnectionGitlabEnterpriseConfigReadAuthorizerCredential>
  readAuthorizerCredential;

  /// (Output)
  /// Output only. Version of the GitLab Enterprise server running on the `host_uri`.
  final pulumi.Input<String>? serverVersion;

  /// ServiceDirectoryConfig represents Service Directory configuration for a
  /// connection.
  /// Structure is documented below.
  final pulumi.Input<ConnectionGitlabEnterpriseConfigServiceDirectoryConfig>?
  serviceDirectoryConfig;

  /// Optional. SSL Certificate Authority certificate to use for requests to GitLab
  /// Enterprise instance.
  final pulumi.Input<String>? sslCaCertificate;

  /// Required. Immutable. SecretManager resource containing the webhook secret of a GitLab project,
  /// formatted as `projects/*/secrets/*/versions/*`. This is used to validate
  /// webhooks.
  final pulumi.Input<String> webhookSecretSecretVersion;

  /// Creates a new [ConnectionGitlabEnterpriseConfig].
  /// [authorizerCredential] Represents a personal access token that authorized the Connection,
  /// [hostUri] Required. The URI of the GitLab Enterprise host this connection is for.
  /// [readAuthorizerCredential] Represents a personal access token that authorized the Connection,
  /// [serverVersion] (Output)
  /// [serviceDirectoryConfig] ServiceDirectoryConfig represents Service Directory configuration for a
  /// [sslCaCertificate] Optional. SSL Certificate Authority certificate to use for requests to GitLab
  /// [webhookSecretSecretVersion] Required. Immutable. SecretManager resource containing the webhook secret of a GitLab project,
  ConnectionGitlabEnterpriseConfig({
    required this.authorizerCredential,
    required this.hostUri,
    required this.readAuthorizerCredential,
    this.serverVersion,
    this.serviceDirectoryConfig,
    this.sslCaCertificate,
    required this.webhookSecretSecretVersion,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'authorizerCredential':
          pulumi.Input.mapInputValue<
            ConnectionGitlabEnterpriseConfigAuthorizerCredential,
            Map<String, dynamic>
          >(authorizerCredential, (value) => value.toMap()),
      'hostUri': hostUri,
      'readAuthorizerCredential':
          pulumi.Input.mapInputValue<
            ConnectionGitlabEnterpriseConfigReadAuthorizerCredential,
            Map<String, dynamic>
          >(readAuthorizerCredential, (value) => value.toMap()),
      'serverVersion': ?serverVersion,
      'serviceDirectoryConfig':
          ?pulumi.Input.mapOptionalInputValue<
            ConnectionGitlabEnterpriseConfigServiceDirectoryConfig,
            Map<String, dynamic>
          >(serviceDirectoryConfig, (value) => value.toMap()),
      'sslCaCertificate': ?sslCaCertificate,
      'webhookSecretSecretVersion': webhookSecretSecretVersion,
    };
  }

  factory ConnectionGitlabEnterpriseConfig.fromMap(Map<String, dynamic> map) {
    return ConnectionGitlabEnterpriseConfig(
      authorizerCredential: pulumi.Input.fromValue(
        ConnectionGitlabEnterpriseConfigAuthorizerCredential.fromMap(
          (map['authorizerCredential']! as Map).cast<String, dynamic>(),
        ),
      ),
      hostUri: pulumi.Input.fromValue(map['hostUri'] as String),
      readAuthorizerCredential: pulumi.Input.fromValue(
        ConnectionGitlabEnterpriseConfigReadAuthorizerCredential.fromMap(
          (map['readAuthorizerCredential']! as Map).cast<String, dynamic>(),
        ),
      ),
      serverVersion: (() {
        final guardedValue = map['serverVersion'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      serviceDirectoryConfig: (() {
        final guardedValue = map['serviceDirectoryConfig'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          ConnectionGitlabEnterpriseConfigServiceDirectoryConfig.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      sslCaCertificate: (() {
        final guardedValue = map['sslCaCertificate'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      webhookSecretSecretVersion: pulumi.Input.fromValue(
        map['webhookSecretSecretVersion'] as String,
      ),
    );
  }
}
