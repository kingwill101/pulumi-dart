// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_devtools_cloudbuild_v2_service_directory_config_response.dart';
import 'user_credential_response.dart';

/// Configuration for connections to gitlab.com or an instance of GitLab Enterprise.
class GoogleDevtoolsCloudbuildV2GitLabConfigResponse {
  /// A GitLab personal access token with the `api` scope access.
  final pulumi.Input<UserCredentialResponse> authorizerCredential;
  /// The URI of the GitLab Enterprise host this connection is for. If not specified, the default value is https://gitlab.com.
  final pulumi.Input<String> hostUri;
  /// A GitLab personal access token with the minimum `read_api` scope access.
  final pulumi.Input<UserCredentialResponse> readAuthorizerCredential;
  /// Version of the GitLab Enterprise server running on the `host_uri`.
  final pulumi.Input<String> serverVersion;
  /// Configuration for using Service Directory to privately connect to a GitLab Enterprise server. This should only be set if the GitLab Enterprise server is hosted on-premises and not reachable by public internet. If this field is left empty, calls to the GitLab Enterprise server will be made over the public internet.
  final pulumi.Input<GoogleDevtoolsCloudbuildV2ServiceDirectoryConfigResponse> serviceDirectoryConfig;
  /// SSL certificate to use for requests to GitLab Enterprise.
  final pulumi.Input<String> sslCa;
  /// Immutable. SecretManager resource containing the webhook secret of a GitLab Enterprise project, formatted as `projects/*/secrets/*/versions/*`.
  final pulumi.Input<String> webhookSecretSecretVersion;

  /// Creates a new [GoogleDevtoolsCloudbuildV2GitLabConfigResponse].
  /// [authorizerCredential] A GitLab personal access token with the `api` scope access.
  /// [hostUri] The URI of the GitLab Enterprise host this connection is for. If not specified, the default value is https://gitlab.com.
  /// [readAuthorizerCredential] A GitLab personal access token with the minimum `read_api` scope access.
  /// [serverVersion] Version of the GitLab Enterprise server running on the `host_uri`.
  /// [serviceDirectoryConfig] Configuration for using Service Directory to privately connect to a GitLab Enterprise server. This should only be set if the GitLab Enterprise server is hosted on-premises and not reachable by public internet. If this field is left empty, calls to the GitLab Enterprise server will be made over the public internet.
  /// [sslCa] SSL certificate to use for requests to GitLab Enterprise.
  /// [webhookSecretSecretVersion] Immutable. SecretManager resource containing the webhook secret of a GitLab Enterprise project, formatted as `projects/*/secrets/*/versions/*`.
  const GoogleDevtoolsCloudbuildV2GitLabConfigResponse({
    required this.authorizerCredential,
    required this.hostUri,
    required this.readAuthorizerCredential,
    required this.serverVersion,
    required this.serviceDirectoryConfig,
    required this.sslCa,
    required this.webhookSecretSecretVersion,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'authorizerCredential': pulumi.Input.mapInputValue<UserCredentialResponse, Map<String, dynamic>>(authorizerCredential, (value) => value.toMap()),
      'hostUri': hostUri,
      'readAuthorizerCredential': pulumi.Input.mapInputValue<UserCredentialResponse, Map<String, dynamic>>(readAuthorizerCredential, (value) => value.toMap()),
      'serverVersion': serverVersion,
      'serviceDirectoryConfig': pulumi.Input.mapInputValue<GoogleDevtoolsCloudbuildV2ServiceDirectoryConfigResponse, Map<String, dynamic>>(serviceDirectoryConfig, (value) => value.toMap()),
      'sslCa': sslCa,
      'webhookSecretSecretVersion': webhookSecretSecretVersion,
    };
  }

  factory GoogleDevtoolsCloudbuildV2GitLabConfigResponse.fromMap(Map<String, dynamic> map) {
    return GoogleDevtoolsCloudbuildV2GitLabConfigResponse(
      authorizerCredential: pulumi.Input.fromValue(UserCredentialResponse.fromMap((map['authorizerCredential']! as Map).cast<String, dynamic>())),
      hostUri: pulumi.Input.fromValue(map['hostUri'] as String),
      readAuthorizerCredential: pulumi.Input.fromValue(UserCredentialResponse.fromMap((map['readAuthorizerCredential']! as Map).cast<String, dynamic>())),
      serverVersion: pulumi.Input.fromValue(map['serverVersion'] as String),
      serviceDirectoryConfig: pulumi.Input.fromValue(GoogleDevtoolsCloudbuildV2ServiceDirectoryConfigResponse.fromMap((map['serviceDirectoryConfig']! as Map).cast<String, dynamic>())),
      sslCa: pulumi.Input.fromValue(map['sslCa'] as String),
      webhookSecretSecretVersion: pulumi.Input.fromValue(map['webhookSecretSecretVersion'] as String),
    );
  }
}

