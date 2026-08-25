// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'account_connector_custom_oauth_config_service_directory_config.dart';

class AccountConnectorCustomOauthConfig {
  /// The OAuth2 authrization server URL.
  final pulumi.Input<String> authUri;
  /// The client ID of the OAuth application.
  final pulumi.Input<String> clientId;
  /// Input only. The client secret of the OAuth application.
  /// It will be provided as plain text, but encrypted and stored in developer
  /// connect. As INPUT_ONLY field, it will not be included in the output.
  final pulumi.Input<String> clientSecret;
  /// The host URI of the OAuth application.
  final pulumi.Input<String> hostUri;
  /// Disable PKCE for this OAuth config. PKCE is enabled by default.
  final pulumi.Input<bool?>? pkceDisabled;
  /// The type of the SCM provider.
  /// Possible values:
  /// SCM_PROVIDER_UNKNOWN
  /// GITHUB_ENTERPRISE
  /// GITLAB_ENTERPRISE
  /// BITBUCKET_DATA_CENTER
  final pulumi.Input<String> scmProvider;
  /// The scopes to be requested during OAuth.
  final pulumi.Input<List<String>> scopes;
  /// (Output)
  /// SCM server version installed at the host URI.
  final pulumi.Input<String?>? serverVersion;
  /// ServiceDirectoryConfig represents Service Directory configuration for a
  /// connection.
  /// Structure is documented below.
  final pulumi.Input<AccountConnectorCustomOauthConfigServiceDirectoryConfig?>? serviceDirectoryConfig;
  /// SSL certificate to use for requests to a private service.
  final pulumi.Input<String?>? sslCaCertificate;
  /// The OAuth2 token request URL.
  final pulumi.Input<String> tokenUri;

  /// Creates a new [AccountConnectorCustomOauthConfig].
  /// [authUri] The OAuth2 authrization server URL.
  /// [clientId] The client ID of the OAuth application.
  /// [clientSecret] Input only. The client secret of the OAuth application.
  /// [hostUri] The host URI of the OAuth application.
  /// [pkceDisabled] Disable PKCE for this OAuth config. PKCE is enabled by default.
  /// [scmProvider] The type of the SCM provider.
  /// [scopes] The scopes to be requested during OAuth.
  /// [serverVersion] (Output)
  /// [serviceDirectoryConfig] ServiceDirectoryConfig represents Service Directory configuration for a
  /// [sslCaCertificate] SSL certificate to use for requests to a private service.
  /// [tokenUri] The OAuth2 token request URL.
  const AccountConnectorCustomOauthConfig({
    required this.authUri,
    required this.clientId,
    required this.clientSecret,
    required this.hostUri,
    this.pkceDisabled,
    required this.scmProvider,
    required this.scopes,
    this.serverVersion,
    this.serviceDirectoryConfig,
    this.sslCaCertificate,
    required this.tokenUri,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'authUri': authUri,
      'clientId': clientId,
      'clientSecret': clientSecret,
      'hostUri': hostUri,
      'pkceDisabled': ?pkceDisabled,
      'scmProvider': scmProvider,
      'scopes': scopes,
      'serverVersion': ?serverVersion,
      'serviceDirectoryConfig': ?pulumi.Input.mapOptionalInputValue<AccountConnectorCustomOauthConfigServiceDirectoryConfig, Map<String, dynamic>>(serviceDirectoryConfig, (value) => value.toMap()),
      'sslCaCertificate': ?sslCaCertificate,
      'tokenUri': tokenUri,
    };
  }

  factory AccountConnectorCustomOauthConfig.fromMap(Map<String, dynamic> map) {
    return AccountConnectorCustomOauthConfig(
      authUri: pulumi.Input.fromValue(map['authUri'] as String),
      clientId: pulumi.Input.fromValue(map['clientId'] as String),
      clientSecret: pulumi.Input.fromValue(map['clientSecret'] as String),
      hostUri: pulumi.Input.fromValue(map['hostUri'] as String),
      pkceDisabled: (() { final guardedValue = map['pkceDisabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      scmProvider: pulumi.Input.fromValue(map['scmProvider'] as String),
      scopes: pulumi.Input.fromValue((map['scopes'] as List).cast<String>()),
      serverVersion: (() { final guardedValue = map['serverVersion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      serviceDirectoryConfig: (() { final guardedValue = map['serviceDirectoryConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AccountConnectorCustomOauthConfigServiceDirectoryConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      sslCaCertificate: (() { final guardedValue = map['sslCaCertificate']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tokenUri: pulumi.Input.fromValue(map['tokenUri'] as String),
    );
  }
}
