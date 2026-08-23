// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_integrations_v1alpha_access_token_response.dart';
import 'google_cloud_integrations_v1alpha_parameter_map_response.dart';

/// For resource owner credentials grant, the client will ask the user for their authorization credentials (ususally a username and password) and send a POST request to the authorization server. The authorization server will respond with a JSON object containing the access token.
class GoogleCloudIntegrationsV1alphaOAuth2ResourceOwnerCredentialsResponse {
  /// Access token fetched from the authorization server.
  final pulumi.Input<GoogleCloudIntegrationsV1alphaAccessTokenResponse> accessToken;
  /// The client's ID.
  final pulumi.Input<String> clientId;
  /// The client's secret.
  final pulumi.Input<String> clientSecret;
  /// The user's password.
  final pulumi.Input<String> password;
  /// Represent how to pass parameters to fetch access token
  final pulumi.Input<String> requestType;
  /// A space-delimited list of requested scope permissions.
  final pulumi.Input<String> scope;
  /// The token endpoint is used by the client to obtain an access token by presenting its authorization grant or refresh token.
  final pulumi.Input<String> tokenEndpoint;
  /// Token parameters for the auth request.
  final pulumi.Input<GoogleCloudIntegrationsV1alphaParameterMapResponse> tokenParams;
  /// The user's username.
  final pulumi.Input<String> username;

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
  const GoogleCloudIntegrationsV1alphaOAuth2ResourceOwnerCredentialsResponse({
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
      'accessToken': pulumi.Input.mapInputValue<GoogleCloudIntegrationsV1alphaAccessTokenResponse, Map<String, dynamic>>(accessToken, (value) => value.toMap()),
      'clientId': clientId,
      'clientSecret': clientSecret,
      'password': password,
      'requestType': requestType,
      'scope': scope,
      'tokenEndpoint': tokenEndpoint,
      'tokenParams': pulumi.Input.mapInputValue<GoogleCloudIntegrationsV1alphaParameterMapResponse, Map<String, dynamic>>(tokenParams, (value) => value.toMap()),
      'username': username,
    };
  }

  factory GoogleCloudIntegrationsV1alphaOAuth2ResourceOwnerCredentialsResponse.fromMap(Map<String, dynamic> map) {
    return GoogleCloudIntegrationsV1alphaOAuth2ResourceOwnerCredentialsResponse(
      accessToken: pulumi.Input.fromValue(GoogleCloudIntegrationsV1alphaAccessTokenResponse.fromMap((map['accessToken']! as Map).cast<String, dynamic>())),
      clientId: pulumi.Input.fromValue(map['clientId'] as String),
      clientSecret: pulumi.Input.fromValue(map['clientSecret'] as String),
      password: pulumi.Input.fromValue(map['password'] as String),
      requestType: pulumi.Input.fromValue(map['requestType'] as String),
      scope: pulumi.Input.fromValue(map['scope'] as String),
      tokenEndpoint: pulumi.Input.fromValue(map['tokenEndpoint'] as String),
      tokenParams: pulumi.Input.fromValue(GoogleCloudIntegrationsV1alphaParameterMapResponse.fromMap((map['tokenParams']! as Map).cast<String, dynamic>())),
      username: pulumi.Input.fromValue(map['username'] as String),
    );
  }
}
