// ignore_for_file: unused_element, unnecessary_cast

import 'identity_service_azure_adconfig.dart';
import 'identity_service_google_config.dart';
import 'identity_service_oidc_config.dart';

/// Configuration of an auth method for a member/cluster. Only one authentication method (e.g., OIDC and LDAP) can be set per AuthMethod.
class IdentityServiceAuthMethod {
  /// AzureAD specific Configuration.
  final IdentityServiceAzureADConfig? azureadConfig;
  /// GoogleConfig specific configuration.
  final IdentityServiceGoogleConfig? googleConfig;
  /// Identifier for auth config.
  final String? name;
  /// OIDC specific configuration.
  final IdentityServiceOidcConfig? oidcConfig;
  /// Proxy server address to use for auth method.
  final String? proxy;

  /// Creates a new [IdentityServiceAuthMethod].
  /// [azureadConfig] AzureAD specific Configuration.
  /// [googleConfig] GoogleConfig specific configuration.
  /// [name] Identifier for auth config.
  /// [oidcConfig] OIDC specific configuration.
  /// [proxy] Proxy server address to use for auth method.
  IdentityServiceAuthMethod({
    this.azureadConfig,
    this.googleConfig,
    this.name,
    this.oidcConfig,
    this.proxy,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureadConfig': ?azureadConfig == null ? null : azureadConfig!.toMap(),
      'googleConfig': ?googleConfig == null ? null : googleConfig!.toMap(),
      'name': ?name,
      'oidcConfig': ?oidcConfig == null ? null : oidcConfig!.toMap(),
      'proxy': ?proxy,
    };
  }

  factory IdentityServiceAuthMethod.fromMap(Map<String, dynamic> map) {
    return IdentityServiceAuthMethod(
      azureadConfig: map['azureadConfig'] == null ? null : IdentityServiceAzureADConfig.fromMap((map['azureadConfig'] as Map).cast<String, dynamic>()),
      googleConfig: map['googleConfig'] == null ? null : IdentityServiceGoogleConfig.fromMap((map['googleConfig'] as Map).cast<String, dynamic>()),
      name: map['name'] == null ? null : map['name'] as String,
      oidcConfig: map['oidcConfig'] == null ? null : IdentityServiceOidcConfig.fromMap((map['oidcConfig'] as Map).cast<String, dynamic>()),
      proxy: map['proxy'] == null ? null : map['proxy'] as String,
    );
  }
}

