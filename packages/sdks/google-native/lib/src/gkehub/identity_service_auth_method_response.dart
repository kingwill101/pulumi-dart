// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'identity_service_azure_adconfig_response.dart';
import 'identity_service_google_config_response.dart';
import 'identity_service_oidc_config_response.dart';

/// Configuration of an auth method for a member/cluster. Only one authentication method (e.g., OIDC and LDAP) can be set per AuthMethod.
class IdentityServiceAuthMethodResponse {
  /// AzureAD specific Configuration.
  final pulumi.Input<IdentityServiceAzureADConfigResponse> azureadConfig;
  /// GoogleConfig specific configuration.
  final pulumi.Input<IdentityServiceGoogleConfigResponse> googleConfig;
  /// Identifier for auth config.
  final pulumi.Input<String> name;
  /// OIDC specific configuration.
  final pulumi.Input<IdentityServiceOidcConfigResponse> oidcConfig;
  /// Proxy server address to use for auth method.
  final pulumi.Input<String> proxy;

  /// Creates a new [IdentityServiceAuthMethodResponse].
  /// [azureadConfig] AzureAD specific Configuration.
  /// [googleConfig] GoogleConfig specific configuration.
  /// [name] Identifier for auth config.
  /// [oidcConfig] OIDC specific configuration.
  /// [proxy] Proxy server address to use for auth method.
  const IdentityServiceAuthMethodResponse({
    required this.azureadConfig,
    required this.googleConfig,
    required this.name,
    required this.oidcConfig,
    required this.proxy,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureadConfig': pulumi.Input.mapInputValue<IdentityServiceAzureADConfigResponse, Map<String, dynamic>>(azureadConfig, (value) => value.toMap()),
      'googleConfig': pulumi.Input.mapInputValue<IdentityServiceGoogleConfigResponse, Map<String, dynamic>>(googleConfig, (value) => value.toMap()),
      'name': name,
      'oidcConfig': pulumi.Input.mapInputValue<IdentityServiceOidcConfigResponse, Map<String, dynamic>>(oidcConfig, (value) => value.toMap()),
      'proxy': proxy,
    };
  }

  factory IdentityServiceAuthMethodResponse.fromMap(Map<String, dynamic> map) {
    return IdentityServiceAuthMethodResponse(
      azureadConfig: pulumi.Input.fromValue(IdentityServiceAzureADConfigResponse.fromMap((map['azureadConfig']! as Map).cast<String, dynamic>())),
      googleConfig: pulumi.Input.fromValue(IdentityServiceGoogleConfigResponse.fromMap((map['googleConfig']! as Map).cast<String, dynamic>())),
      name: pulumi.Input.fromValue(map['name'] as String),
      oidcConfig: pulumi.Input.fromValue(IdentityServiceOidcConfigResponse.fromMap((map['oidcConfig']! as Map).cast<String, dynamic>())),
      proxy: pulumi.Input.fromValue(map['proxy'] as String),
    );
  }
}

