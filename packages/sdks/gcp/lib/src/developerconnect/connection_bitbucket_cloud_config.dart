// ignore_for_file: unused_element, unnecessary_cast

import 'connection_bitbucket_cloud_config_authorizer_credential.dart';
import 'connection_bitbucket_cloud_config_read_authorizer_credential.dart';

class ConnectionBitbucketCloudConfig {
  /// Represents a personal access token that authorized the Connection,
  /// and associated metadata.
  /// Structure is documented below.
  final ConnectionBitbucketCloudConfigAuthorizerCredential authorizerCredential;
  /// Represents a personal access token that authorized the Connection,
  /// and associated metadata.
  /// Structure is documented below.
  final ConnectionBitbucketCloudConfigReadAuthorizerCredential readAuthorizerCredential;
  /// Required. Immutable. SecretManager resource containing the webhook secret used to verify webhook
  /// events, formatted as `projects/*/secrets/*/versions/*`. This is used to
  /// validate and create webhooks.
  final String webhookSecretSecretVersion;
  /// Required. The Bitbucket Cloud Workspace ID to be connected to Google Cloud Platform.
  final String workspace;

  /// Creates a new [ConnectionBitbucketCloudConfig].
  /// [authorizerCredential] Represents a personal access token that authorized the Connection,
  /// [readAuthorizerCredential] Represents a personal access token that authorized the Connection,
  /// [webhookSecretSecretVersion] Required. Immutable. SecretManager resource containing the webhook secret used to verify webhook
  /// [workspace] Required. The Bitbucket Cloud Workspace ID to be connected to Google Cloud Platform.
  ConnectionBitbucketCloudConfig({
    required this.authorizerCredential,
    required this.readAuthorizerCredential,
    required this.webhookSecretSecretVersion,
    required this.workspace,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'authorizerCredential': authorizerCredential.toMap(),
      'readAuthorizerCredential': readAuthorizerCredential.toMap(),
      'webhookSecretSecretVersion': webhookSecretSecretVersion,
      'workspace': workspace,
    };
  }

  factory ConnectionBitbucketCloudConfig.fromMap(Map<String, dynamic> map) {
    return ConnectionBitbucketCloudConfig(
      authorizerCredential: ConnectionBitbucketCloudConfigAuthorizerCredential.fromMap((map['authorizerCredential'] as Map).cast<String, dynamic>()),
      readAuthorizerCredential: ConnectionBitbucketCloudConfigReadAuthorizerCredential.fromMap((map['readAuthorizerCredential'] as Map).cast<String, dynamic>()),
      webhookSecretSecretVersion: map['webhookSecretSecretVersion'] as String,
      workspace: map['workspace'] as String,
    );
  }
}

