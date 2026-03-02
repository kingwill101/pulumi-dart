// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'connection_bitbucket_data_center_config_authorizer_credential.dart';
import 'connection_bitbucket_data_center_config_read_authorizer_credential.dart';
import 'connection_bitbucket_data_center_config_service_directory_config.dart';

class ConnectionBitbucketDataCenterConfig {
  /// Represents a personal access token that authorized the Connection,
  /// and associated metadata.
  /// Structure is documented below.
  final pulumi.Input<ConnectionBitbucketDataCenterConfigAuthorizerCredential> authorizerCredential;
  /// Required. The URI of the Bitbucket Data Center host this connection is for.
  final pulumi.Input<String> hostUri;
  /// Represents a personal access token that authorized the Connection,
  /// and associated metadata.
  /// Structure is documented below.
  final pulumi.Input<ConnectionBitbucketDataCenterConfigReadAuthorizerCredential> readAuthorizerCredential;
  /// (Output)
  /// Output only. Version of the Bitbucket Data Center server running on the `host_uri`.
  final pulumi.Input<String>? serverVersion;
  /// ServiceDirectoryConfig represents Service Directory configuration for a
  /// connection.
  /// Structure is documented below.
  final pulumi.Input<ConnectionBitbucketDataCenterConfigServiceDirectoryConfig>? serviceDirectoryConfig;
  /// Optional. SSL certificate authority to trust when making requests to Bitbucket Data
  /// Center.
  final pulumi.Input<String>? sslCaCertificate;
  /// Required. Immutable. SecretManager resource containing the webhook secret used to verify webhook
  /// events, formatted as `projects/*/secrets/*/versions/*`. This is used to
  /// validate webhooks.
  final pulumi.Input<String> webhookSecretSecretVersion;

  /// Creates a new [ConnectionBitbucketDataCenterConfig].
  /// [authorizerCredential] Represents a personal access token that authorized the Connection,
  /// [hostUri] Required. The URI of the Bitbucket Data Center host this connection is for.
  /// [readAuthorizerCredential] Represents a personal access token that authorized the Connection,
  /// [serverVersion] (Output)
  /// [serviceDirectoryConfig] ServiceDirectoryConfig represents Service Directory configuration for a
  /// [sslCaCertificate] Optional. SSL certificate authority to trust when making requests to Bitbucket Data
  /// [webhookSecretSecretVersion] Required. Immutable. SecretManager resource containing the webhook secret used to verify webhook
  ConnectionBitbucketDataCenterConfig({
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
      'authorizerCredential': pulumi.Input.mapInputValue<ConnectionBitbucketDataCenterConfigAuthorizerCredential, Map<String, dynamic>>(authorizerCredential, (value) => value.toMap()),
      'hostUri': hostUri,
      'readAuthorizerCredential': pulumi.Input.mapInputValue<ConnectionBitbucketDataCenterConfigReadAuthorizerCredential, Map<String, dynamic>>(readAuthorizerCredential, (value) => value.toMap()),
      'serverVersion': ?serverVersion,
      'serviceDirectoryConfig': ?pulumi.Input.mapOptionalInputValue<ConnectionBitbucketDataCenterConfigServiceDirectoryConfig, Map<String, dynamic>>(serviceDirectoryConfig, (value) => value.toMap()),
      'sslCaCertificate': ?sslCaCertificate,
      'webhookSecretSecretVersion': webhookSecretSecretVersion,
    };
  }

  factory ConnectionBitbucketDataCenterConfig.fromMap(Map<String, dynamic> map) {
    return ConnectionBitbucketDataCenterConfig(
      authorizerCredential: (ConnectionBitbucketDataCenterConfigAuthorizerCredential.fromMap((map['authorizerCredential'] as Map).cast<String, dynamic>())).input(),
      hostUri: (map['hostUri'] as String).input(),
      readAuthorizerCredential: (ConnectionBitbucketDataCenterConfigReadAuthorizerCredential.fromMap((map['readAuthorizerCredential'] as Map).cast<String, dynamic>())).input(),
      serverVersion: map['serverVersion'] == null ? null : (map['serverVersion'] as String).input(),
      serviceDirectoryConfig: map['serviceDirectoryConfig'] == null ? null : (ConnectionBitbucketDataCenterConfigServiceDirectoryConfig.fromMap((map['serviceDirectoryConfig'] as Map).cast<String, dynamic>())).input(),
      sslCaCertificate: map['sslCaCertificate'] == null ? null : (map['sslCaCertificate'] as String).input(),
      webhookSecretSecretVersion: (map['webhookSecretSecretVersion'] as String).input(),
    );
  }
}

