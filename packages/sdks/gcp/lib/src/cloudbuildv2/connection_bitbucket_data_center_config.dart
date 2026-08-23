// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'connection_bitbucket_data_center_config_authorizer_credential.dart';
import 'connection_bitbucket_data_center_config_read_authorizer_credential.dart';
import 'connection_bitbucket_data_center_config_service_directory_config.dart';

class ConnectionBitbucketDataCenterConfig {
  /// Required. A http access token with the `REPO_ADMIN` scope access.
  /// Structure is documented below.
  final pulumi.Input<ConnectionBitbucketDataCenterConfigAuthorizerCredential> authorizerCredential;
  /// The URI of the Bitbucket Data Center host this connection is for.
  final pulumi.Input<String> hostUri;
  /// Required. A http access token with the `REPO_READ` access.
  /// Structure is documented below.
  final pulumi.Input<ConnectionBitbucketDataCenterConfigReadAuthorizerCredential> readAuthorizerCredential;
  /// (Output)
  /// Output only. Version of the Bitbucket Data Center running on the `hostUri`.
  final pulumi.Input<String>? serverVersion;
  /// Configuration for using Service Directory to privately connect to a Bitbucket Data Center. This should only be set if the Bitbucket Data Center is hosted on-premises and not reachable by public internet. If this field is left empty, calls to the Bitbucket Data Center will be made over the public internet.
  /// Structure is documented below.
  final pulumi.Input<ConnectionBitbucketDataCenterConfigServiceDirectoryConfig>? serviceDirectoryConfig;
  /// SSL certificate to use for requests to the Bitbucket Data Center.
  final pulumi.Input<String>? sslCa;
  /// Required. Immutable. SecretManager resource containing the webhook secret used to verify webhook events, formatted as `projects/*/secrets/*/versions/*`.
  final pulumi.Input<String> webhookSecretSecretVersion;

  /// Creates a new [ConnectionBitbucketDataCenterConfig].
  /// [authorizerCredential] Required. A http access token with the `REPO_ADMIN` scope access.
  /// [hostUri] The URI of the Bitbucket Data Center host this connection is for.
  /// [readAuthorizerCredential] Required. A http access token with the `REPO_READ` access.
  /// [serverVersion] (Output)
  /// [serviceDirectoryConfig] Configuration for using Service Directory to privately connect to a Bitbucket Data Center. This should only be set if the Bitbucket Data Center is hosted on-premises and not reachable by public internet. If this field is left empty, calls to the Bitbucket Data Center will be made over the public internet.
  /// [sslCa] SSL certificate to use for requests to the Bitbucket Data Center.
  /// [webhookSecretSecretVersion] Required. Immutable. SecretManager resource containing the webhook secret used to verify webhook events, formatted as `projects/*/secrets/*/versions/*`.
  const ConnectionBitbucketDataCenterConfig({
    required this.authorizerCredential,
    required this.hostUri,
    required this.readAuthorizerCredential,
    this.serverVersion,
    this.serviceDirectoryConfig,
    this.sslCa,
    required this.webhookSecretSecretVersion,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'authorizerCredential': pulumi.Input.mapInputValue<ConnectionBitbucketDataCenterConfigAuthorizerCredential, Map<String, dynamic>>(authorizerCredential, (value) => value.toMap()),
      'hostUri': hostUri,
      'readAuthorizerCredential': pulumi.Input.mapInputValue<ConnectionBitbucketDataCenterConfigReadAuthorizerCredential, Map<String, dynamic>>(readAuthorizerCredential, (value) => value.toMap()),
      'serverVersion': ?serverVersion,
      'serviceDirectoryConfig': ?pulumi.Input.mapOptionalInputValue<ConnectionBitbucketDataCenterConfigServiceDirectoryConfig, Map<String, dynamic>>(serviceDirectoryConfig, (value) => value.toMap()),
      'sslCa': ?sslCa,
      'webhookSecretSecretVersion': webhookSecretSecretVersion,
    };
  }

  factory ConnectionBitbucketDataCenterConfig.fromMap(Map<String, dynamic> map) {
    return ConnectionBitbucketDataCenterConfig(
      authorizerCredential: pulumi.Input.fromValue(ConnectionBitbucketDataCenterConfigAuthorizerCredential.fromMap((map['authorizerCredential']! as Map).cast<String, dynamic>())),
      hostUri: pulumi.Input.fromValue(map['hostUri'] as String),
      readAuthorizerCredential: pulumi.Input.fromValue(ConnectionBitbucketDataCenterConfigReadAuthorizerCredential.fromMap((map['readAuthorizerCredential']! as Map).cast<String, dynamic>())),
      serverVersion: (() { final guardedValue = map['serverVersion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      serviceDirectoryConfig: (() { final guardedValue = map['serviceDirectoryConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ConnectionBitbucketDataCenterConfigServiceDirectoryConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      sslCa: (() { final guardedValue = map['sslCa']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      webhookSecretSecretVersion: pulumi.Input.fromValue(map['webhookSecretSecretVersion'] as String),
    );
  }
}
