// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'auth_provider_auth_provider_type_params_xaa_auth_provider_client_assertion_jwt_auth.dart';
import 'auth_provider_auth_provider_type_params_xaa_auth_provider_client_secret_auth.dart';
import 'auth_provider_auth_provider_type_params_xaa_auth_provider_custom_issuer.dart';
import 'auth_provider_auth_provider_type_params_xaa_auth_provider_id_token_input.dart';

class AuthProviderAuthProviderTypeParamsXaaAuthProvider {
  /// Optional. Additional parameters to be passed to the token endpoint.
  final pulumi.Input<Map<String, String>?>? additionalParameters;
  /// Option 2: Authenticate using a standard `clientId` and a Client Assertion JWT.
  /// Structure is documented below.
  final pulumi.Input<AuthProviderAuthProviderTypeParamsXaaAuthProviderClientAssertionJwtAuth?>? clientAssertionJwtAuth;
  /// Option 1: Authenticate using a standard `clientId` and `clientSecret`.
  /// Structure is documented below.
  final pulumi.Input<AuthProviderAuthProviderTypeParamsXaaAuthProviderClientSecretAuth?>? clientSecretAuth;
  /// Configuration for a custom or third-party authorization server issuer.
  /// Structure is documented below.
  final pulumi.Input<AuthProviderAuthProviderTypeParamsXaaAuthProviderCustomIssuer?>? customIssuer;
  /// Configuration for when the input is an ID token.
  /// Structure is documented below.
  final pulumi.Input<AuthProviderAuthProviderTypeParamsXaaAuthProviderIdTokenInput?>? idTokenInput;

  /// Creates a new [AuthProviderAuthProviderTypeParamsXaaAuthProvider].
  /// [additionalParameters] Optional. Additional parameters to be passed to the token endpoint.
  /// [clientAssertionJwtAuth] Option 2: Authenticate using a standard `clientId` and a Client Assertion JWT.
  /// [clientSecretAuth] Option 1: Authenticate using a standard `clientId` and `clientSecret`.
  /// [customIssuer] Configuration for a custom or third-party authorization server issuer.
  /// [idTokenInput] Configuration for when the input is an ID token.
  const AuthProviderAuthProviderTypeParamsXaaAuthProvider({
    this.additionalParameters,
    this.clientAssertionJwtAuth,
    this.clientSecretAuth,
    this.customIssuer,
    this.idTokenInput,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'additionalParameters': ?additionalParameters,
      'clientAssertionJwtAuth': ?pulumi.Input.mapOptionalInputValue<AuthProviderAuthProviderTypeParamsXaaAuthProviderClientAssertionJwtAuth, Map<String, dynamic>>(clientAssertionJwtAuth, (value) => value.toMap()),
      'clientSecretAuth': ?pulumi.Input.mapOptionalInputValue<AuthProviderAuthProviderTypeParamsXaaAuthProviderClientSecretAuth, Map<String, dynamic>>(clientSecretAuth, (value) => value.toMap()),
      'customIssuer': ?pulumi.Input.mapOptionalInputValue<AuthProviderAuthProviderTypeParamsXaaAuthProviderCustomIssuer, Map<String, dynamic>>(customIssuer, (value) => value.toMap()),
      'idTokenInput': ?pulumi.Input.mapOptionalInputValue<AuthProviderAuthProviderTypeParamsXaaAuthProviderIdTokenInput, Map<String, dynamic>>(idTokenInput, (value) => value.toMap()),
    };
  }

  factory AuthProviderAuthProviderTypeParamsXaaAuthProvider.fromMap(Map<String, dynamic> map) {
    return AuthProviderAuthProviderTypeParamsXaaAuthProvider(
      additionalParameters: (() { final guardedValue = map['additionalParameters']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      clientAssertionJwtAuth: (() { final guardedValue = map['clientAssertionJwtAuth']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AuthProviderAuthProviderTypeParamsXaaAuthProviderClientAssertionJwtAuth.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      clientSecretAuth: (() { final guardedValue = map['clientSecretAuth']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AuthProviderAuthProviderTypeParamsXaaAuthProviderClientSecretAuth.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      customIssuer: (() { final guardedValue = map['customIssuer']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AuthProviderAuthProviderTypeParamsXaaAuthProviderCustomIssuer.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      idTokenInput: (() { final guardedValue = map['idTokenInput']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AuthProviderAuthProviderTypeParamsXaaAuthProviderIdTokenInput.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
