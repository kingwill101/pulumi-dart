// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_devtools_cloudbuild_v2_service_directory_config_response.dart';

/// Configuration for connections to an instance of GitHub Enterprise.
class GoogleDevtoolsCloudbuildV2GitHubEnterpriseConfigResponse {
  /// API Key used for authentication of webhook events.
  final pulumi.Input<String> apiKey;
  /// Id of the GitHub App created from the manifest.
  final pulumi.Input<String> appId;
  /// ID of the installation of the GitHub App.
  final pulumi.Input<String> appInstallationId;
  /// The URL-friendly name of the GitHub App.
  final pulumi.Input<String> appSlug;
  /// The URI of the GitHub Enterprise host this connection is for.
  final pulumi.Input<String> hostUri;
  /// SecretManager resource containing the private key of the GitHub App, formatted as `projects/*/secrets/*/versions/*`.
  final pulumi.Input<String> privateKeySecretVersion;
  /// GitHub Enterprise version installed at the host_uri.
  final pulumi.Input<String> serverVersion;
  /// Configuration for using Service Directory to privately connect to a GitHub Enterprise server. This should only be set if the GitHub Enterprise server is hosted on-premises and not reachable by public internet. If this field is left empty, calls to the GitHub Enterprise server will be made over the public internet.
  final pulumi.Input<GoogleDevtoolsCloudbuildV2ServiceDirectoryConfigResponse> serviceDirectoryConfig;
  /// SSL certificate to use for requests to GitHub Enterprise.
  final pulumi.Input<String> sslCa;
  /// SecretManager resource containing the webhook secret of the GitHub App, formatted as `projects/*/secrets/*/versions/*`.
  final pulumi.Input<String> webhookSecretSecretVersion;

  /// Creates a new [GoogleDevtoolsCloudbuildV2GitHubEnterpriseConfigResponse].
  /// [apiKey] API Key used for authentication of webhook events.
  /// [appId] Id of the GitHub App created from the manifest.
  /// [appInstallationId] ID of the installation of the GitHub App.
  /// [appSlug] The URL-friendly name of the GitHub App.
  /// [hostUri] The URI of the GitHub Enterprise host this connection is for.
  /// [privateKeySecretVersion] SecretManager resource containing the private key of the GitHub App, formatted as `projects/*/secrets/*/versions/*`.
  /// [serverVersion] GitHub Enterprise version installed at the host_uri.
  /// [serviceDirectoryConfig] Configuration for using Service Directory to privately connect to a GitHub Enterprise server. This should only be set if the GitHub Enterprise server is hosted on-premises and not reachable by public internet. If this field is left empty, calls to the GitHub Enterprise server will be made over the public internet.
  /// [sslCa] SSL certificate to use for requests to GitHub Enterprise.
  /// [webhookSecretSecretVersion] SecretManager resource containing the webhook secret of the GitHub App, formatted as `projects/*/secrets/*/versions/*`.
  GoogleDevtoolsCloudbuildV2GitHubEnterpriseConfigResponse({
    required this.apiKey,
    required this.appId,
    required this.appInstallationId,
    required this.appSlug,
    required this.hostUri,
    required this.privateKeySecretVersion,
    required this.serverVersion,
    required this.serviceDirectoryConfig,
    required this.sslCa,
    required this.webhookSecretSecretVersion,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'apiKey': apiKey,
      'appId': appId,
      'appInstallationId': appInstallationId,
      'appSlug': appSlug,
      'hostUri': hostUri,
      'privateKeySecretVersion': privateKeySecretVersion,
      'serverVersion': serverVersion,
      'serviceDirectoryConfig': pulumi.Input.mapInputValue<GoogleDevtoolsCloudbuildV2ServiceDirectoryConfigResponse, Map<String, dynamic>>(serviceDirectoryConfig, (value) => value.toMap()),
      'sslCa': sslCa,
      'webhookSecretSecretVersion': webhookSecretSecretVersion,
    };
  }

  factory GoogleDevtoolsCloudbuildV2GitHubEnterpriseConfigResponse.fromMap(Map<String, dynamic> map) {
    return GoogleDevtoolsCloudbuildV2GitHubEnterpriseConfigResponse(
      apiKey: (map['apiKey'] as String).input(),
      appId: (map['appId'] as String).input(),
      appInstallationId: (map['appInstallationId'] as String).input(),
      appSlug: (map['appSlug'] as String).input(),
      hostUri: (map['hostUri'] as String).input(),
      privateKeySecretVersion: (map['privateKeySecretVersion'] as String).input(),
      serverVersion: (map['serverVersion'] as String).input(),
      serviceDirectoryConfig: (GoogleDevtoolsCloudbuildV2ServiceDirectoryConfigResponse.fromMap((map['serviceDirectoryConfig'] as Map).cast<String, dynamic>())).input(),
      sslCa: (map['sslCa'] as String).input(),
      webhookSecretSecretVersion: (map['webhookSecretSecretVersion'] as String).input(),
    );
  }
}

