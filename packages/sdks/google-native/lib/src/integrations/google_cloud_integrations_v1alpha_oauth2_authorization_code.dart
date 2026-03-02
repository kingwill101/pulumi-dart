// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_integrations_v1alpha_access_token.dart';
import 'google_cloud_integrations_v1alpha_oauth2_authorization_code_request_type.dart';
import 'google_cloud_integrations_v1alpha_parameter_map.dart';

/// The OAuth Type where the client sends request with the client id and requested scopes to auth endpoint. User sees a consent screen and auth code is received at specified redirect url afterwards. The auth code is then combined with the client id and secret and sent to the token endpoint in exchange for the access and refresh token. The refresh token can be used to fetch new access tokens.
class GoogleCloudIntegrationsV1alphaOAuth2AuthorizationCode {
  /// The access token received from the token endpoint.
  final pulumi.Input<GoogleCloudIntegrationsV1alphaAccessToken>? accessToken;
  /// Indicates if the user has opted in Google Reauth Policy. If opted in, the refresh token will be valid for 20 hours, after which time users must re-authenticate in order to obtain a new one.
  final pulumi.Input<bool>? applyReauthPolicy;
  /// The Auth Code that is used to initially retrieve the access token.
  final pulumi.Input<String>? authCode;
  /// The auth url endpoint to send the auth code request to.
  final pulumi.Input<String>? authEndpoint;
  /// The auth parameters sent along with the auth code request.
  final pulumi.Input<GoogleCloudIntegrationsV1alphaParameterMap>? authParams;
  /// The client's id.
  final pulumi.Input<String>? clientId;
  /// The client's secret.
  final pulumi.Input<String>? clientSecret;
  /// Represent how to pass parameters to fetch access token
  final pulumi.Input<GoogleCloudIntegrationsV1alphaOAuth2AuthorizationCodeRequestType>? requestType;
  /// A space-delimited list of requested scope permissions.
  final pulumi.Input<String>? scope;
  /// The token url endpoint to send the token request to.
  final pulumi.Input<String>? tokenEndpoint;
  /// The token parameters sent along with the token request.
  final pulumi.Input<GoogleCloudIntegrationsV1alphaParameterMap>? tokenParams;

  /// Creates a new [GoogleCloudIntegrationsV1alphaOAuth2AuthorizationCode].
  /// [accessToken] The access token received from the token endpoint.
  /// [applyReauthPolicy] Indicates if the user has opted in Google Reauth Policy. If opted in, the refresh token will be valid for 20 hours, after which time users must re-authenticate in order to obtain a new one.
  /// [authCode] The Auth Code that is used to initially retrieve the access token.
  /// [authEndpoint] The auth url endpoint to send the auth code request to.
  /// [authParams] The auth parameters sent along with the auth code request.
  /// [clientId] The client's id.
  /// [clientSecret] The client's secret.
  /// [requestType] Represent how to pass parameters to fetch access token
  /// [scope] A space-delimited list of requested scope permissions.
  /// [tokenEndpoint] The token url endpoint to send the token request to.
  /// [tokenParams] The token parameters sent along with the token request.
  GoogleCloudIntegrationsV1alphaOAuth2AuthorizationCode({
    this.accessToken,
    this.applyReauthPolicy,
    this.authCode,
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
      'accessToken': ?pulumi.Input.mapOptionalInputValue<GoogleCloudIntegrationsV1alphaAccessToken, Map<String, dynamic>>(accessToken, (value) => value.toMap()),
      'applyReauthPolicy': ?applyReauthPolicy,
      'authCode': ?authCode,
      'authEndpoint': ?authEndpoint,
      'authParams': ?pulumi.Input.mapOptionalInputValue<GoogleCloudIntegrationsV1alphaParameterMap, Map<String, dynamic>>(authParams, (value) => value.toMap()),
      'clientId': ?clientId,
      'clientSecret': ?clientSecret,
      'requestType': ?pulumi.Input.mapOptionalInputValue<GoogleCloudIntegrationsV1alphaOAuth2AuthorizationCodeRequestType, String>(requestType, (value) => value.value),
      'scope': ?scope,
      'tokenEndpoint': ?tokenEndpoint,
      'tokenParams': ?pulumi.Input.mapOptionalInputValue<GoogleCloudIntegrationsV1alphaParameterMap, Map<String, dynamic>>(tokenParams, (value) => value.toMap()),
    };
  }

  factory GoogleCloudIntegrationsV1alphaOAuth2AuthorizationCode.fromMap(Map<String, dynamic> map) {
    return GoogleCloudIntegrationsV1alphaOAuth2AuthorizationCode(
      accessToken: map['accessToken'] == null ? null : (GoogleCloudIntegrationsV1alphaAccessToken.fromMap((map['accessToken']! as Map).cast<String, dynamic>())).input(),
      applyReauthPolicy: map['applyReauthPolicy'] == null ? null : (map['applyReauthPolicy']! as bool).input(),
      authCode: map['authCode'] == null ? null : (map['authCode']! as String).input(),
      authEndpoint: map['authEndpoint'] == null ? null : (map['authEndpoint']! as String).input(),
      authParams: map['authParams'] == null ? null : (GoogleCloudIntegrationsV1alphaParameterMap.fromMap((map['authParams']! as Map).cast<String, dynamic>())).input(),
      clientId: map['clientId'] == null ? null : (map['clientId']! as String).input(),
      clientSecret: map['clientSecret'] == null ? null : (map['clientSecret']! as String).input(),
      requestType: map['requestType'] == null ? null : (GoogleCloudIntegrationsV1alphaOAuth2AuthorizationCodeRequestType.fromValue(map['requestType']! as String)).input(),
      scope: map['scope'] == null ? null : (map['scope']! as String).input(),
      tokenEndpoint: map['tokenEndpoint'] == null ? null : (map['tokenEndpoint']! as String).input(),
      tokenParams: map['tokenParams'] == null ? null : (GoogleCloudIntegrationsV1alphaParameterMap.fromMap((map['tokenParams']! as Map).cast<String, dynamic>())).input(),
    );
  }
}

