// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_integrations_v1alpha_access_token_response.dart';
import 'google_cloud_integrations_v1alpha_parameter_map_response.dart';

/// The OAuth Type where the client sends request with the client id and requested scopes to auth endpoint. User sees a consent screen and auth code is received at specified redirect url afterwards. The auth code is then combined with the client id and secret and sent to the token endpoint in exchange for the access and refresh token. The refresh token can be used to fetch new access tokens.
class GoogleCloudIntegrationsV1alphaOAuth2AuthorizationCodeResponse {
  /// The access token received from the token endpoint.
  final pulumi.Input<GoogleCloudIntegrationsV1alphaAccessTokenResponse> accessToken;
  /// Indicates if the user has opted in Google Reauth Policy. If opted in, the refresh token will be valid for 20 hours, after which time users must re-authenticate in order to obtain a new one.
  final pulumi.Input<bool> applyReauthPolicy;
  /// The Auth Code that is used to initially retrieve the access token.
  final pulumi.Input<String> authCode;
  /// The auth url endpoint to send the auth code request to.
  final pulumi.Input<String> authEndpoint;
  /// The auth parameters sent along with the auth code request.
  final pulumi.Input<GoogleCloudIntegrationsV1alphaParameterMapResponse> authParams;
  /// The client's id.
  final pulumi.Input<String> clientId;
  /// The client's secret.
  final pulumi.Input<String> clientSecret;
  /// Represent how to pass parameters to fetch access token
  final pulumi.Input<String> requestType;
  /// A space-delimited list of requested scope permissions.
  final pulumi.Input<String> scope;
  /// The token url endpoint to send the token request to.
  final pulumi.Input<String> tokenEndpoint;
  /// The token parameters sent along with the token request.
  final pulumi.Input<GoogleCloudIntegrationsV1alphaParameterMapResponse> tokenParams;

  /// Creates a new [GoogleCloudIntegrationsV1alphaOAuth2AuthorizationCodeResponse].
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
  const GoogleCloudIntegrationsV1alphaOAuth2AuthorizationCodeResponse({
    required this.accessToken,
    required this.applyReauthPolicy,
    required this.authCode,
    required this.authEndpoint,
    required this.authParams,
    required this.clientId,
    required this.clientSecret,
    required this.requestType,
    required this.scope,
    required this.tokenEndpoint,
    required this.tokenParams,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accessToken': pulumi.Input.mapInputValue<GoogleCloudIntegrationsV1alphaAccessTokenResponse, Map<String, dynamic>>(accessToken, (value) => value.toMap()),
      'applyReauthPolicy': applyReauthPolicy,
      'authCode': authCode,
      'authEndpoint': authEndpoint,
      'authParams': pulumi.Input.mapInputValue<GoogleCloudIntegrationsV1alphaParameterMapResponse, Map<String, dynamic>>(authParams, (value) => value.toMap()),
      'clientId': clientId,
      'clientSecret': clientSecret,
      'requestType': requestType,
      'scope': scope,
      'tokenEndpoint': tokenEndpoint,
      'tokenParams': pulumi.Input.mapInputValue<GoogleCloudIntegrationsV1alphaParameterMapResponse, Map<String, dynamic>>(tokenParams, (value) => value.toMap()),
    };
  }

  factory GoogleCloudIntegrationsV1alphaOAuth2AuthorizationCodeResponse.fromMap(Map<String, dynamic> map) {
    return GoogleCloudIntegrationsV1alphaOAuth2AuthorizationCodeResponse(
      accessToken: pulumi.Input.fromValue(GoogleCloudIntegrationsV1alphaAccessTokenResponse.fromMap((map['accessToken']! as Map).cast<String, dynamic>())),
      applyReauthPolicy: pulumi.Input.fromValue(map['applyReauthPolicy'] as bool),
      authCode: pulumi.Input.fromValue(map['authCode'] as String),
      authEndpoint: pulumi.Input.fromValue(map['authEndpoint'] as String),
      authParams: pulumi.Input.fromValue(GoogleCloudIntegrationsV1alphaParameterMapResponse.fromMap((map['authParams']! as Map).cast<String, dynamic>())),
      clientId: pulumi.Input.fromValue(map['clientId'] as String),
      clientSecret: pulumi.Input.fromValue(map['clientSecret'] as String),
      requestType: pulumi.Input.fromValue(map['requestType'] as String),
      scope: pulumi.Input.fromValue(map['scope'] as String),
      tokenEndpoint: pulumi.Input.fromValue(map['tokenEndpoint'] as String),
      tokenParams: pulumi.Input.fromValue(GoogleCloudIntegrationsV1alphaParameterMapResponse.fromMap((map['tokenParams']! as Map).cast<String, dynamic>())),
    );
  }
}

