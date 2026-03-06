// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'connection_github_enterprise_config_service_directory_config.dart';

class ConnectionGithubEnterpriseConfig {
  /// Id of the GitHub App created from the manifest.
  final pulumi.Input<int>? appId;
  /// ID of the installation of the GitHub App.
  final pulumi.Input<int>? appInstallationId;
  /// The URL-friendly name of the GitHub App.
  final pulumi.Input<String>? appSlug;
  /// Required. The URI of the GitHub Enterprise host this connection is for.
  final pulumi.Input<String> hostUri;
  /// SecretManager resource containing the private key of the GitHub App, formatted as `projects/*/secrets/*/versions/*`.
  final pulumi.Input<String>? privateKeySecretVersion;
  /// Configuration for using Service Directory to privately connect to a GitHub Enterprise server. This should only be set if the GitHub Enterprise server is hosted on-premises and not reachable by public internet. If this field is left empty, calls to the GitHub Enterprise server will be made over the public internet.
  /// Structure is documented below.
  final pulumi.Input<ConnectionGithubEnterpriseConfigServiceDirectoryConfig>? serviceDirectoryConfig;
  /// SSL certificate to use for requests to GitHub Enterprise.
  final pulumi.Input<String>? sslCa;
  /// SecretManager resource containing the webhook secret of the GitHub App, formatted as `projects/*/secrets/*/versions/*`.
  final pulumi.Input<String>? webhookSecretSecretVersion;

  /// Creates a new [ConnectionGithubEnterpriseConfig].
  /// [appId] Id of the GitHub App created from the manifest.
  /// [appInstallationId] ID of the installation of the GitHub App.
  /// [appSlug] The URL-friendly name of the GitHub App.
  /// [hostUri] Required. The URI of the GitHub Enterprise host this connection is for.
  /// [privateKeySecretVersion] SecretManager resource containing the private key of the GitHub App, formatted as `projects/*/secrets/*/versions/*`.
  /// [serviceDirectoryConfig] Configuration for using Service Directory to privately connect to a GitHub Enterprise server. This should only be set if the GitHub Enterprise server is hosted on-premises and not reachable by public internet. If this field is left empty, calls to the GitHub Enterprise server will be made over the public internet.
  /// [sslCa] SSL certificate to use for requests to GitHub Enterprise.
  /// [webhookSecretSecretVersion] SecretManager resource containing the webhook secret of the GitHub App, formatted as `projects/*/secrets/*/versions/*`.
  const ConnectionGithubEnterpriseConfig({
    this.appId,
    this.appInstallationId,
    this.appSlug,
    required this.hostUri,
    this.privateKeySecretVersion,
    this.serviceDirectoryConfig,
    this.sslCa,
    this.webhookSecretSecretVersion,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'appId': ?appId,
      'appInstallationId': ?appInstallationId,
      'appSlug': ?appSlug,
      'hostUri': hostUri,
      'privateKeySecretVersion': ?privateKeySecretVersion,
      'serviceDirectoryConfig': ?pulumi.Input.mapOptionalInputValue<ConnectionGithubEnterpriseConfigServiceDirectoryConfig, Map<String, dynamic>>(serviceDirectoryConfig, (value) => value.toMap()),
      'sslCa': ?sslCa,
      'webhookSecretSecretVersion': ?webhookSecretSecretVersion,
    };
  }

  factory ConnectionGithubEnterpriseConfig.fromMap(Map<String, dynamic> map) {
    return ConnectionGithubEnterpriseConfig(
      appId: (() { final guardedValue = map['appId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      appInstallationId: (() { final guardedValue = map['appInstallationId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      appSlug: (() { final guardedValue = map['appSlug']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      hostUri: pulumi.Input.fromValue(map['hostUri'] as String),
      privateKeySecretVersion: (() { final guardedValue = map['privateKeySecretVersion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      serviceDirectoryConfig: (() { final guardedValue = map['serviceDirectoryConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ConnectionGithubEnterpriseConfigServiceDirectoryConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      sslCa: (() { final guardedValue = map['sslCa']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      webhookSecretSecretVersion: (() { final guardedValue = map['webhookSecretSecretVersion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

