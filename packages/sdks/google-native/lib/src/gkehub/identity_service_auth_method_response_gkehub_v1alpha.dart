// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'identity_service_azure_adconfig_response_gkehub_v1alpha.dart';
import 'identity_service_google_config_response_gkehub_v1alpha.dart';
import 'identity_service_oidc_config_response_gkehub_v1alpha.dart';

/// Configuration of an auth method for a member/cluster. Only one authentication method (e.g., OIDC and LDAP) can be set per AuthMethod.
class IdentityServiceAuthMethodResponseGkehubV1alpha {
  /// AzureAD specific Configuration.
  final pulumi.Input<IdentityServiceAzureADConfigResponseGkehubV1alpha> azureadConfig;
  /// GoogleConfig specific configuration.
  final pulumi.Input<IdentityServiceGoogleConfigResponseGkehubV1alpha> googleConfig;
  /// Identifier for auth config.
  final pulumi.Input<String> name;
  /// OIDC specific configuration.
  final pulumi.Input<IdentityServiceOidcConfigResponseGkehubV1alpha> oidcConfig;
  /// Proxy server address to use for auth method.
  final pulumi.Input<String> proxy;

  /// Creates a new [IdentityServiceAuthMethodResponseGkehubV1alpha].
  /// [azureadConfig] AzureAD specific Configuration.
  /// [googleConfig] GoogleConfig specific configuration.
  /// [name] Identifier for auth config.
  /// [oidcConfig] OIDC specific configuration.
  /// [proxy] Proxy server address to use for auth method.
  IdentityServiceAuthMethodResponseGkehubV1alpha({
    required this.azureadConfig,
    required this.googleConfig,
    required this.name,
    required this.oidcConfig,
    required this.proxy,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureadConfig': pulumi.Input.mapInputValue<IdentityServiceAzureADConfigResponseGkehubV1alpha, Map<String, dynamic>>(azureadConfig, (value) => value.toMap()),
      'googleConfig': pulumi.Input.mapInputValue<IdentityServiceGoogleConfigResponseGkehubV1alpha, Map<String, dynamic>>(googleConfig, (value) => value.toMap()),
      'name': name,
      'oidcConfig': pulumi.Input.mapInputValue<IdentityServiceOidcConfigResponseGkehubV1alpha, Map<String, dynamic>>(oidcConfig, (value) => value.toMap()),
      'proxy': proxy,
    };
  }

  factory IdentityServiceAuthMethodResponseGkehubV1alpha.fromMap(Map<String, dynamic> map) {
    return IdentityServiceAuthMethodResponseGkehubV1alpha(
      azureadConfig: pulumi.Input.fromValue(IdentityServiceAzureADConfigResponseGkehubV1alpha.fromMap((map['azureadConfig']! as Map).cast<String, dynamic>())),
      googleConfig: pulumi.Input.fromValue(IdentityServiceGoogleConfigResponseGkehubV1alpha.fromMap((map['googleConfig']! as Map).cast<String, dynamic>())),
      name: pulumi.Input.fromValue(map['name'] as String),
      oidcConfig: pulumi.Input.fromValue(IdentityServiceOidcConfigResponseGkehubV1alpha.fromMap((map['oidcConfig']! as Map).cast<String, dynamic>())),
      proxy: pulumi.Input.fromValue(map['proxy'] as String),
    );
  }
}

