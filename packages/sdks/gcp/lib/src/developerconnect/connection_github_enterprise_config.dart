// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'connection_github_enterprise_config_service_directory_config.dart';

class ConnectionGithubEnterpriseConfig {
  /// Optional. ID of the GitHub App created from the manifest.
  final pulumi.Input<String>? appId;
  /// Optional. ID of the installation of the GitHub App.
  final pulumi.Input<String>? appInstallationId;
  /// (Output)
  /// Output only. The URL-friendly name of the GitHub App.
  final pulumi.Input<String>? appSlug;
  /// Required. The URI of the GitHub Enterprise host this connection is for.
  final pulumi.Input<String> hostUri;
  /// (Output)
  /// Output only. The URI to navigate to in order to manage the installation associated
  /// with this GitHubEnterpriseConfig.
  final pulumi.Input<String>? installationUri;
  /// Optional. SecretManager resource containing the private key of the GitHub App,
  /// formatted as `projects/*/secrets/*/versions/*`.
  final pulumi.Input<String>? privateKeySecretVersion;
  /// (Output)
  /// Output only. GitHub Enterprise version installed at the host_uri.
  final pulumi.Input<String>? serverVersion;
  /// ServiceDirectoryConfig represents Service Directory configuration for a
  /// connection.
  /// Structure is documented below.
  final pulumi.Input<ConnectionGithubEnterpriseConfigServiceDirectoryConfig>? serviceDirectoryConfig;
  /// Optional. SSL certificate to use for requests to GitHub Enterprise.
  final pulumi.Input<String>? sslCaCertificate;
  /// Optional. SecretManager resource containing the webhook secret of the GitHub App,
  /// formatted as `projects/*/secrets/*/versions/*`.
  final pulumi.Input<String>? webhookSecretSecretVersion;

  /// Creates a new [ConnectionGithubEnterpriseConfig].
  /// [appId] Optional. ID of the GitHub App created from the manifest.
  /// [appInstallationId] Optional. ID of the installation of the GitHub App.
  /// [appSlug] (Output)
  /// [hostUri] Required. The URI of the GitHub Enterprise host this connection is for.
  /// [installationUri] (Output)
  /// [privateKeySecretVersion] Optional. SecretManager resource containing the private key of the GitHub App,
  /// [serverVersion] (Output)
  /// [serviceDirectoryConfig] ServiceDirectoryConfig represents Service Directory configuration for a
  /// [sslCaCertificate] Optional. SSL certificate to use for requests to GitHub Enterprise.
  /// [webhookSecretSecretVersion] Optional. SecretManager resource containing the webhook secret of the GitHub App,
  const ConnectionGithubEnterpriseConfig({
    this.appId,
    this.appInstallationId,
    this.appSlug,
    required this.hostUri,
    this.installationUri,
    this.privateKeySecretVersion,
    this.serverVersion,
    this.serviceDirectoryConfig,
    this.sslCaCertificate,
    this.webhookSecretSecretVersion,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'appId': ?appId,
      'appInstallationId': ?appInstallationId,
      'appSlug': ?appSlug,
      'hostUri': hostUri,
      'installationUri': ?installationUri,
      'privateKeySecretVersion': ?privateKeySecretVersion,
      'serverVersion': ?serverVersion,
      'serviceDirectoryConfig': ?pulumi.Input.mapOptionalInputValue<ConnectionGithubEnterpriseConfigServiceDirectoryConfig, Map<String, dynamic>>(serviceDirectoryConfig, (value) => value.toMap()),
      'sslCaCertificate': ?sslCaCertificate,
      'webhookSecretSecretVersion': ?webhookSecretSecretVersion,
    };
  }

  factory ConnectionGithubEnterpriseConfig.fromMap(Map<String, dynamic> map) {
    return ConnectionGithubEnterpriseConfig(
      appId: (() { final guardedValue = map['appId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      appInstallationId: (() { final guardedValue = map['appInstallationId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      appSlug: (() { final guardedValue = map['appSlug']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      hostUri: pulumi.Input.fromValue(map['hostUri'] as String),
      installationUri: (() { final guardedValue = map['installationUri']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      privateKeySecretVersion: (() { final guardedValue = map['privateKeySecretVersion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      serverVersion: (() { final guardedValue = map['serverVersion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      serviceDirectoryConfig: (() { final guardedValue = map['serviceDirectoryConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ConnectionGithubEnterpriseConfigServiceDirectoryConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      sslCaCertificate: (() { final guardedValue = map['sslCaCertificate']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      webhookSecretSecretVersion: (() { final guardedValue = map['webhookSecretSecretVersion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
