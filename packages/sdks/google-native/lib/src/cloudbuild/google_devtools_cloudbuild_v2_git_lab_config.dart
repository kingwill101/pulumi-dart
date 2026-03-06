// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_devtools_cloudbuild_v2_service_directory_config.dart';
import 'user_credential.dart';

/// Configuration for connections to gitlab.com or an instance of GitLab Enterprise.
class GoogleDevtoolsCloudbuildV2GitLabConfig {
  /// A GitLab personal access token with the `api` scope access.
  final pulumi.Input<UserCredential> authorizerCredential;
  /// The URI of the GitLab Enterprise host this connection is for. If not specified, the default value is https://gitlab.com.
  final pulumi.Input<String>? hostUri;
  /// A GitLab personal access token with the minimum `read_api` scope access.
  final pulumi.Input<UserCredential> readAuthorizerCredential;
  /// Configuration for using Service Directory to privately connect to a GitLab Enterprise server. This should only be set if the GitLab Enterprise server is hosted on-premises and not reachable by public internet. If this field is left empty, calls to the GitLab Enterprise server will be made over the public internet.
  final pulumi.Input<GoogleDevtoolsCloudbuildV2ServiceDirectoryConfig>? serviceDirectoryConfig;
  /// SSL certificate to use for requests to GitLab Enterprise.
  final pulumi.Input<String>? sslCa;
  /// Immutable. SecretManager resource containing the webhook secret of a GitLab Enterprise project, formatted as `projects/*/secrets/*/versions/*`.
  final pulumi.Input<String> webhookSecretSecretVersion;

  /// Creates a new [GoogleDevtoolsCloudbuildV2GitLabConfig].
  /// [authorizerCredential] A GitLab personal access token with the `api` scope access.
  /// [hostUri] The URI of the GitLab Enterprise host this connection is for. If not specified, the default value is https://gitlab.com.
  /// [readAuthorizerCredential] A GitLab personal access token with the minimum `read_api` scope access.
  /// [serviceDirectoryConfig] Configuration for using Service Directory to privately connect to a GitLab Enterprise server. This should only be set if the GitLab Enterprise server is hosted on-premises and not reachable by public internet. If this field is left empty, calls to the GitLab Enterprise server will be made over the public internet.
  /// [sslCa] SSL certificate to use for requests to GitLab Enterprise.
  /// [webhookSecretSecretVersion] Immutable. SecretManager resource containing the webhook secret of a GitLab Enterprise project, formatted as `projects/*/secrets/*/versions/*`.
  const GoogleDevtoolsCloudbuildV2GitLabConfig({
    required this.authorizerCredential,
    this.hostUri,
    required this.readAuthorizerCredential,
    this.serviceDirectoryConfig,
    this.sslCa,
    required this.webhookSecretSecretVersion,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'authorizerCredential': pulumi.Input.mapInputValue<UserCredential, Map<String, dynamic>>(authorizerCredential, (value) => value.toMap()),
      'hostUri': ?hostUri,
      'readAuthorizerCredential': pulumi.Input.mapInputValue<UserCredential, Map<String, dynamic>>(readAuthorizerCredential, (value) => value.toMap()),
      'serviceDirectoryConfig': ?pulumi.Input.mapOptionalInputValue<GoogleDevtoolsCloudbuildV2ServiceDirectoryConfig, Map<String, dynamic>>(serviceDirectoryConfig, (value) => value.toMap()),
      'sslCa': ?sslCa,
      'webhookSecretSecretVersion': webhookSecretSecretVersion,
    };
  }

  factory GoogleDevtoolsCloudbuildV2GitLabConfig.fromMap(Map<String, dynamic> map) {
    return GoogleDevtoolsCloudbuildV2GitLabConfig(
      authorizerCredential: pulumi.Input.fromValue(UserCredential.fromMap((map['authorizerCredential']! as Map).cast<String, dynamic>())),
      hostUri: (() { final guardedValue = map['hostUri']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      readAuthorizerCredential: pulumi.Input.fromValue(UserCredential.fromMap((map['readAuthorizerCredential']! as Map).cast<String, dynamic>())),
      serviceDirectoryConfig: (() { final guardedValue = map['serviceDirectoryConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(GoogleDevtoolsCloudbuildV2ServiceDirectoryConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      sslCa: (() { final guardedValue = map['sslCa']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      webhookSecretSecretVersion: pulumi.Input.fromValue(map['webhookSecretSecretVersion'] as String),
    );
  }
}

