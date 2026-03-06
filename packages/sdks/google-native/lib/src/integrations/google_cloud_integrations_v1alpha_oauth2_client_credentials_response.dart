// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_integrations_v1alpha_access_token_response.dart';
import 'google_cloud_integrations_v1alpha_parameter_map_response.dart';

/// For client credentials grant, the client sends a POST request with grant_type as 'client_credentials' to the authorization server. The authorization server will respond with a JSON object containing the access token.
class GoogleCloudIntegrationsV1alphaOAuth2ClientCredentialsResponse {
  /// Access token fetched from the authorization server.
  final pulumi.Input<GoogleCloudIntegrationsV1alphaAccessTokenResponse> accessToken;
  /// The client's ID.
  final pulumi.Input<String> clientId;
  /// The client's secret.
  final pulumi.Input<String> clientSecret;
  /// Represent how to pass parameters to fetch access token
  final pulumi.Input<String> requestType;
  /// A space-delimited list of requested scope permissions.
  final pulumi.Input<String> scope;
  /// The token endpoint is used by the client to obtain an access token by presenting its authorization grant or refresh token.
  final pulumi.Input<String> tokenEndpoint;
  /// Token parameters for the auth request.
  final pulumi.Input<GoogleCloudIntegrationsV1alphaParameterMapResponse> tokenParams;

  /// Creates a new [GoogleCloudIntegrationsV1alphaOAuth2ClientCredentialsResponse].
  /// [accessToken] Access token fetched from the authorization server.
  /// [clientId] The client's ID.
  /// [clientSecret] The client's secret.
  /// [requestType] Represent how to pass parameters to fetch access token
  /// [scope] A space-delimited list of requested scope permissions.
  /// [tokenEndpoint] The token endpoint is used by the client to obtain an access token by presenting its authorization grant or refresh token.
  /// [tokenParams] Token parameters for the auth request.
  const GoogleCloudIntegrationsV1alphaOAuth2ClientCredentialsResponse({
    required this.accessToken,
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
      'clientId': clientId,
      'clientSecret': clientSecret,
      'requestType': requestType,
      'scope': scope,
      'tokenEndpoint': tokenEndpoint,
      'tokenParams': pulumi.Input.mapInputValue<GoogleCloudIntegrationsV1alphaParameterMapResponse, Map<String, dynamic>>(tokenParams, (value) => value.toMap()),
    };
  }

  factory GoogleCloudIntegrationsV1alphaOAuth2ClientCredentialsResponse.fromMap(Map<String, dynamic> map) {
    return GoogleCloudIntegrationsV1alphaOAuth2ClientCredentialsResponse(
      accessToken: pulumi.Input.fromValue(GoogleCloudIntegrationsV1alphaAccessTokenResponse.fromMap((map['accessToken']! as Map).cast<String, dynamic>())),
      clientId: pulumi.Input.fromValue(map['clientId'] as String),
      clientSecret: pulumi.Input.fromValue(map['clientSecret'] as String),
      requestType: pulumi.Input.fromValue(map['requestType'] as String),
      scope: pulumi.Input.fromValue(map['scope'] as String),
      tokenEndpoint: pulumi.Input.fromValue(map['tokenEndpoint'] as String),
      tokenParams: pulumi.Input.fromValue(GoogleCloudIntegrationsV1alphaParameterMapResponse.fromMap((map['tokenParams']! as Map).cast<String, dynamic>())),
    );
  }
}

