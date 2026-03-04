// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'identity_service_azure_adconfig.dart';
import 'identity_service_google_config.dart';
import 'identity_service_oidc_config.dart';

/// Configuration of an auth method for a member/cluster. Only one authentication method (e.g., OIDC and LDAP) can be set per AuthMethod.
class IdentityServiceAuthMethod {
  /// AzureAD specific Configuration.
  final pulumi.Input<IdentityServiceAzureADConfig>? azureadConfig;

  /// GoogleConfig specific configuration.
  final pulumi.Input<IdentityServiceGoogleConfig>? googleConfig;

  /// Identifier for auth config.
  final pulumi.Input<String>? name;

  /// OIDC specific configuration.
  final pulumi.Input<IdentityServiceOidcConfig>? oidcConfig;

  /// Proxy server address to use for auth method.
  final pulumi.Input<String>? proxy;

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
      'azureadConfig':
          ?pulumi.Input.mapOptionalInputValue<
            IdentityServiceAzureADConfig,
            Map<String, dynamic>
          >(azureadConfig, (value) => value.toMap()),
      'googleConfig':
          ?pulumi.Input.mapOptionalInputValue<
            IdentityServiceGoogleConfig,
            Map<String, dynamic>
          >(googleConfig, (value) => value.toMap()),
      'name': ?name,
      'oidcConfig':
          ?pulumi.Input.mapOptionalInputValue<
            IdentityServiceOidcConfig,
            Map<String, dynamic>
          >(oidcConfig, (value) => value.toMap()),
      'proxy': ?proxy,
    };
  }

  factory IdentityServiceAuthMethod.fromMap(Map<String, dynamic> map) {
    return IdentityServiceAuthMethod(
      azureadConfig: (() {
        final guardedValue = map['azureadConfig'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          IdentityServiceAzureADConfig.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      googleConfig: (() {
        final guardedValue = map['googleConfig'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          IdentityServiceGoogleConfig.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      name: (() {
        final guardedValue = map['name'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      oidcConfig: (() {
        final guardedValue = map['oidcConfig'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          IdentityServiceOidcConfig.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      proxy: (() {
        final guardedValue = map['proxy'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
