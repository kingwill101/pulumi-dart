// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'identity_service_azure_adconfig_gkehub_v1beta.dart';
import 'identity_service_google_config_gkehub_v1beta.dart';
import 'identity_service_oidc_config_gkehub_v1beta.dart';

/// Configuration of an auth method for a member/cluster. Only one authentication method (e.g., OIDC and LDAP) can be set per AuthMethod.
class IdentityServiceAuthMethodGkehubV1beta {
  /// AzureAD specific Configuration.
  final pulumi.Input<IdentityServiceAzureADConfigGkehubV1beta>? azureadConfig;
  /// GoogleConfig specific configuration.
  final pulumi.Input<IdentityServiceGoogleConfigGkehubV1beta>? googleConfig;
  /// Identifier for auth config.
  final pulumi.Input<String>? name;
  /// OIDC specific configuration.
  final pulumi.Input<IdentityServiceOidcConfigGkehubV1beta>? oidcConfig;
  /// Proxy server address to use for auth method.
  final pulumi.Input<String>? proxy;

  /// Creates a new [IdentityServiceAuthMethodGkehubV1beta].
  /// [azureadConfig] AzureAD specific Configuration.
  /// [googleConfig] GoogleConfig specific configuration.
  /// [name] Identifier for auth config.
  /// [oidcConfig] OIDC specific configuration.
  /// [proxy] Proxy server address to use for auth method.
  IdentityServiceAuthMethodGkehubV1beta({
    this.azureadConfig,
    this.googleConfig,
    this.name,
    this.oidcConfig,
    this.proxy,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureadConfig': ?pulumi.Input.mapOptionalInputValue<IdentityServiceAzureADConfigGkehubV1beta, Map<String, dynamic>>(azureadConfig, (value) => value.toMap()),
      'googleConfig': ?pulumi.Input.mapOptionalInputValue<IdentityServiceGoogleConfigGkehubV1beta, Map<String, dynamic>>(googleConfig, (value) => value.toMap()),
      'name': ?name,
      'oidcConfig': ?pulumi.Input.mapOptionalInputValue<IdentityServiceOidcConfigGkehubV1beta, Map<String, dynamic>>(oidcConfig, (value) => value.toMap()),
      'proxy': ?proxy,
    };
  }

  factory IdentityServiceAuthMethodGkehubV1beta.fromMap(Map<String, dynamic> map) {
    return IdentityServiceAuthMethodGkehubV1beta(
      azureadConfig: (() { final guardedValue = map['azureadConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(IdentityServiceAzureADConfigGkehubV1beta.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      googleConfig: (() { final guardedValue = map['googleConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(IdentityServiceGoogleConfigGkehubV1beta.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      oidcConfig: (() { final guardedValue = map['oidcConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(IdentityServiceOidcConfigGkehubV1beta.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      proxy: (() { final guardedValue = map['proxy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

