// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'connection_gitlab_config_authorizer_credential.dart';
import 'connection_gitlab_config_read_authorizer_credential.dart';
import 'connection_gitlab_config_service_directory_config.dart';

class ConnectionGitlabConfig {
  /// Required. A GitLab personal access token with the `api` scope access.
  /// Structure is documented below.
  final pulumi.Input<ConnectionGitlabConfigAuthorizerCredential> authorizerCredential;
  /// The URI of the GitLab Enterprise host this connection is for. If not specified, the default value is https://gitlab.com.
  final pulumi.Input<String>? hostUri;
  /// Required. A GitLab personal access token with the minimum `read_api` scope access.
  /// Structure is documented below.
  final pulumi.Input<ConnectionGitlabConfigReadAuthorizerCredential> readAuthorizerCredential;
  /// (Output)
  /// Output only. Version of the GitLab Enterprise server running on the `host_uri`.
  final pulumi.Input<String>? serverVersion;
  /// Configuration for using Service Directory to privately connect to a GitLab Enterprise server. This should only be set if the GitLab Enterprise server is hosted on-premises and not reachable by public internet. If this field is left empty, calls to the GitLab Enterprise server will be made over the public internet.
  /// Structure is documented below.
  final pulumi.Input<ConnectionGitlabConfigServiceDirectoryConfig>? serviceDirectoryConfig;
  /// SSL certificate to use for requests to GitLab Enterprise.
  final pulumi.Input<String>? sslCa;
  /// Required. Immutable. SecretManager resource containing the webhook secret of a GitLab Enterprise project, formatted as `projects/*/secrets/*/versions/*`.
  final pulumi.Input<String> webhookSecretSecretVersion;

  /// Creates a new [ConnectionGitlabConfig].
  /// [authorizerCredential] Required. A GitLab personal access token with the `api` scope access.
  /// [hostUri] The URI of the GitLab Enterprise host this connection is for. If not specified, the default value is https://gitlab.com.
  /// [readAuthorizerCredential] Required. A GitLab personal access token with the minimum `read_api` scope access.
  /// [serverVersion] (Output)
  /// [serviceDirectoryConfig] Configuration for using Service Directory to privately connect to a GitLab Enterprise server. This should only be set if the GitLab Enterprise server is hosted on-premises and not reachable by public internet. If this field is left empty, calls to the GitLab Enterprise server will be made over the public internet.
  /// [sslCa] SSL certificate to use for requests to GitLab Enterprise.
  /// [webhookSecretSecretVersion] Required. Immutable. SecretManager resource containing the webhook secret of a GitLab Enterprise project, formatted as `projects/*/secrets/*/versions/*`.
  ConnectionGitlabConfig({
    required this.authorizerCredential,
    this.hostUri,
    required this.readAuthorizerCredential,
    this.serverVersion,
    this.serviceDirectoryConfig,
    this.sslCa,
    required this.webhookSecretSecretVersion,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'authorizerCredential': pulumi.Input.mapInputValue<ConnectionGitlabConfigAuthorizerCredential, Map<String, dynamic>>(authorizerCredential, (value) => value.toMap()),
      'hostUri': ?hostUri,
      'readAuthorizerCredential': pulumi.Input.mapInputValue<ConnectionGitlabConfigReadAuthorizerCredential, Map<String, dynamic>>(readAuthorizerCredential, (value) => value.toMap()),
      'serverVersion': ?serverVersion,
      'serviceDirectoryConfig': ?pulumi.Input.mapOptionalInputValue<ConnectionGitlabConfigServiceDirectoryConfig, Map<String, dynamic>>(serviceDirectoryConfig, (value) => value.toMap()),
      'sslCa': ?sslCa,
      'webhookSecretSecretVersion': webhookSecretSecretVersion,
    };
  }

  factory ConnectionGitlabConfig.fromMap(Map<String, dynamic> map) {
    return ConnectionGitlabConfig(
      authorizerCredential: (ConnectionGitlabConfigAuthorizerCredential.fromMap((map['authorizerCredential'] as Map).cast<String, dynamic>())).input(),
      hostUri: map['hostUri'] == null ? null : (map['hostUri'] as String).input(),
      readAuthorizerCredential: (ConnectionGitlabConfigReadAuthorizerCredential.fromMap((map['readAuthorizerCredential'] as Map).cast<String, dynamic>())).input(),
      serverVersion: map['serverVersion'] == null ? null : (map['serverVersion'] as String).input(),
      serviceDirectoryConfig: map['serviceDirectoryConfig'] == null ? null : (ConnectionGitlabConfigServiceDirectoryConfig.fromMap((map['serviceDirectoryConfig'] as Map).cast<String, dynamic>())).input(),
      sslCa: map['sslCa'] == null ? null : (map['sslCa'] as String).input(),
      webhookSecretSecretVersion: (map['webhookSecretSecretVersion'] as String).input(),
    );
  }
}

