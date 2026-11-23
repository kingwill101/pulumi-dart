// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'auth_config_decrypted_credential_oauth2_authorization_code_auth_params.dart';
import 'auth_config_decrypted_credential_oauth2_authorization_code_token_params.dart';

class AuthConfigDecryptedCredentialOauth2AuthorizationCode {
  /// Indicates if the user has opted in Google Reauth Policy. If opted in, the refresh token will be valid for 20 hours, after which time users must re-authenticate in order to obtain a new one.
  final pulumi.Input<bool?>? applyReauthPolicy;
  /// The auth url endpoint to send the auth code request to.
  final pulumi.Input<String?>? authEndpoint;
  /// The auth parameters sent along with the auth code request.
  final pulumi.Input<AuthConfigDecryptedCredentialOauth2AuthorizationCodeAuthParams?>? authParams;
  /// The client's id.
  final pulumi.Input<String?>? clientId;
  /// The client's secret.
  final pulumi.Input<String?>? clientSecret;
  /// Represent how to pass parameters to fetch access token Possible values: ["REQUEST_BODY", "QUERY_PARAMETERS", "ENCODED_HEADER"]
  final pulumi.Input<String?>? requestType;
  /// A space-delimited list of requested scope permissions.
  final pulumi.Input<String?>? scope;
  /// The token url endpoint to send the token request to.
  final pulumi.Input<String?>? tokenEndpoint;
  /// The token parameters sent along with the token request.
  final pulumi.Input<AuthConfigDecryptedCredentialOauth2AuthorizationCodeTokenParams?>? tokenParams;

  /// Creates a new [AuthConfigDecryptedCredentialOauth2AuthorizationCode].
  /// [applyReauthPolicy] Indicates if the user has opted in Google Reauth Policy. If opted in, the refresh token will be valid for 20 hours, after which time users must re-authenticate in order to obtain a new one.
  /// [authEndpoint] The auth url endpoint to send the auth code request to.
  /// [authParams] The auth parameters sent along with the auth code request.
  /// [clientId] The client's id.
  /// [clientSecret] The client's secret.
  /// [requestType] Represent how to pass parameters to fetch access token Possible values: ["REQUEST_BODY", "QUERY_PARAMETERS", "ENCODED_HEADER"]
  /// [scope] A space-delimited list of requested scope permissions.
  /// [tokenEndpoint] The token url endpoint to send the token request to.
  /// [tokenParams] The token parameters sent along with the token request.
  const AuthConfigDecryptedCredentialOauth2AuthorizationCode({
    this.applyReauthPolicy,
    this.authEndpoint,
    this.authParams,
    this.clientId,
    this.clientSecret,
    this.requestType,
    this.scope,
    this.tokenEndpoint,
    this.tokenParams,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'applyReauthPolicy': ?applyReauthPolicy,
      'authEndpoint': ?authEndpoint,
      'authParams': ?pulumi.Input.mapOptionalInputValue<AuthConfigDecryptedCredentialOauth2AuthorizationCodeAuthParams, Map<String, dynamic>>(authParams, (value) => value.toMap()),
      'clientId': ?clientId,
      'clientSecret': ?clientSecret,
      'requestType': ?requestType,
      'scope': ?scope,
      'tokenEndpoint': ?tokenEndpoint,
      'tokenParams': ?pulumi.Input.mapOptionalInputValue<AuthConfigDecryptedCredentialOauth2AuthorizationCodeTokenParams, Map<String, dynamic>>(tokenParams, (value) => value.toMap()),
    };
  }

  factory AuthConfigDecryptedCredentialOauth2AuthorizationCode.fromMap(Map<String, dynamic> map) {
    return AuthConfigDecryptedCredentialOauth2AuthorizationCode(
      applyReauthPolicy: (() { final guardedValue = map['applyReauthPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      authEndpoint: (() { final guardedValue = map['authEndpoint']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      authParams: (() { final guardedValue = map['authParams']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AuthConfigDecryptedCredentialOauth2AuthorizationCodeAuthParams.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      clientId: (() { final guardedValue = map['clientId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      clientSecret: (() { final guardedValue = map['clientSecret']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      requestType: (() { final guardedValue = map['requestType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      scope: (() { final guardedValue = map['scope']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tokenEndpoint: (() { final guardedValue = map['tokenEndpoint']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tokenParams: (() { final guardedValue = map['tokenParams']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AuthConfigDecryptedCredentialOauth2AuthorizationCodeTokenParams.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
