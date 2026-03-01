// ignore_for_file: unused_element, unnecessary_cast

import 'google_cloud_integrations_v1alpha_access_token_response.dart';
import 'google_cloud_integrations_v1alpha_parameter_map_response.dart';

/// For resource owner credentials grant, the client will ask the user for their authorization credentials (ususally a username and password) and send a POST request to the authorization server. The authorization server will respond with a JSON object containing the access token.
class GoogleCloudIntegrationsV1alphaOAuth2ResourceOwnerCredentialsResponse {
  /// Access token fetched from the authorization server.
  final GoogleCloudIntegrationsV1alphaAccessTokenResponse accessToken;
  /// The client's ID.
  final String clientId;
  /// The client's secret.
  final String clientSecret;
  /// The user's password.
  final String password;
  /// Represent how to pass parameters to fetch access token
  final String requestType;
  /// A space-delimited list of requested scope permissions.
  final String scope;
  /// The token endpoint is used by the client to obtain an access token by presenting its authorization grant or refresh token.
  final String tokenEndpoint;
  /// Token parameters for the auth request.
  final GoogleCloudIntegrationsV1alphaParameterMapResponse tokenParams;
  /// The user's username.
  final String username;

  /// Creates a new [GoogleCloudIntegrationsV1alphaOAuth2ResourceOwnerCredentialsResponse].
  /// [accessToken] Access token fetched from the authorization server.
  /// [clientId] The client's ID.
  /// [clientSecret] The client's secret.
  /// [password] The user's password.
  /// [requestType] Represent how to pass parameters to fetch access token
  /// [scope] A space-delimited list of requested scope permissions.
  /// [tokenEndpoint] The token endpoint is used by the client to obtain an access token by presenting its authorization grant or refresh token.
  /// [tokenParams] Token parameters for the auth request.
  /// [username] The user's username.
  GoogleCloudIntegrationsV1alphaOAuth2ResourceOwnerCredentialsResponse({
    required this.accessToken,
    required this.clientId,
    required this.clientSecret,
    required this.password,
    required this.requestType,
    required this.scope,
    required this.tokenEndpoint,
    required this.tokenParams,
    required this.username,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accessToken': accessToken.toMap(),
      'clientId': clientId,
      'clientSecret': clientSecret,
      'password': password,
      'requestType': requestType,
      'scope': scope,
      'tokenEndpoint': tokenEndpoint,
      'tokenParams': tokenParams.toMap(),
      'username': username,
    };
  }

  factory GoogleCloudIntegrationsV1alphaOAuth2ResourceOwnerCredentialsResponse.fromMap(Map<String, dynamic> map) {
    return GoogleCloudIntegrationsV1alphaOAuth2ResourceOwnerCredentialsResponse(
      accessToken: GoogleCloudIntegrationsV1alphaAccessTokenResponse.fromMap((map['accessToken'] as Map).cast<String, dynamic>()),
      clientId: map['clientId'] as String,
      clientSecret: map['clientSecret'] as String,
      password: map['password'] as String,
      requestType: map['requestType'] as String,
      scope: map['scope'] as String,
      tokenEndpoint: map['tokenEndpoint'] as String,
      tokenParams: GoogleCloudIntegrationsV1alphaParameterMapResponse.fromMap((map['tokenParams'] as Map).cast<String, dynamic>()),
      username: map['username'] as String,
    );
  }
}

