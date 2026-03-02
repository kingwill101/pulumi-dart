// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_integrations_v1alpha_access_token.dart';
import 'google_cloud_integrations_v1alpha_oauth2_resource_owner_credentials_request_type.dart';
import 'google_cloud_integrations_v1alpha_parameter_map.dart';

/// For resource owner credentials grant, the client will ask the user for their authorization credentials (ususally a username and password) and send a POST request to the authorization server. The authorization server will respond with a JSON object containing the access token.
class GoogleCloudIntegrationsV1alphaOAuth2ResourceOwnerCredentials {
  /// Access token fetched from the authorization server.
  final pulumi.Input<GoogleCloudIntegrationsV1alphaAccessToken>? accessToken;
  /// The client's ID.
  final pulumi.Input<String>? clientId;
  /// The client's secret.
  final pulumi.Input<String>? clientSecret;
  /// The user's password.
  final pulumi.Input<String>? password;
  /// Represent how to pass parameters to fetch access token
  final pulumi.Input<GoogleCloudIntegrationsV1alphaOAuth2ResourceOwnerCredentialsRequestType>? requestType;
  /// A space-delimited list of requested scope permissions.
  final pulumi.Input<String>? scope;
  /// The token endpoint is used by the client to obtain an access token by presenting its authorization grant or refresh token.
  final pulumi.Input<String>? tokenEndpoint;
  /// Token parameters for the auth request.
  final pulumi.Input<GoogleCloudIntegrationsV1alphaParameterMap>? tokenParams;
  /// The user's username.
  final pulumi.Input<String>? username;

  /// Creates a new [GoogleCloudIntegrationsV1alphaOAuth2ResourceOwnerCredentials].
  /// [accessToken] Access token fetched from the authorization server.
  /// [clientId] The client's ID.
  /// [clientSecret] The client's secret.
  /// [password] The user's password.
  /// [requestType] Represent how to pass parameters to fetch access token
  /// [scope] A space-delimited list of requested scope permissions.
  /// [tokenEndpoint] The token endpoint is used by the client to obtain an access token by presenting its authorization grant or refresh token.
  /// [tokenParams] Token parameters for the auth request.
  /// [username] The user's username.
  GoogleCloudIntegrationsV1alphaOAuth2ResourceOwnerCredentials({
    this.accessToken,
    this.clientId,
    this.clientSecret,
    this.password,
    this.requestType,
    this.scope,
    this.tokenEndpoint,
    this.tokenParams,
    this.username,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accessToken': ?pulumi.Input.mapOptionalInputValue<GoogleCloudIntegrationsV1alphaAccessToken, Map<String, dynamic>>(accessToken, (value) => value.toMap()),
      'clientId': ?clientId,
      'clientSecret': ?clientSecret,
      'password': ?password,
      'requestType': ?pulumi.Input.mapOptionalInputValue<GoogleCloudIntegrationsV1alphaOAuth2ResourceOwnerCredentialsRequestType, String>(requestType, (value) => value.value),
      'scope': ?scope,
      'tokenEndpoint': ?tokenEndpoint,
      'tokenParams': ?pulumi.Input.mapOptionalInputValue<GoogleCloudIntegrationsV1alphaParameterMap, Map<String, dynamic>>(tokenParams, (value) => value.toMap()),
      'username': ?username,
    };
  }

  factory GoogleCloudIntegrationsV1alphaOAuth2ResourceOwnerCredentials.fromMap(Map<String, dynamic> map) {
    return GoogleCloudIntegrationsV1alphaOAuth2ResourceOwnerCredentials(
      accessToken: map['accessToken'] == null ? null : (GoogleCloudIntegrationsV1alphaAccessToken.fromMap((map['accessToken']! as Map).cast<String, dynamic>())).input(),
      clientId: map['clientId'] == null ? null : (map['clientId']! as String).input(),
      clientSecret: map['clientSecret'] == null ? null : (map['clientSecret']! as String).input(),
      password: map['password'] == null ? null : (map['password']! as String).input(),
      requestType: map['requestType'] == null ? null : (GoogleCloudIntegrationsV1alphaOAuth2ResourceOwnerCredentialsRequestType.fromValue(map['requestType']! as String)).input(),
      scope: map['scope'] == null ? null : (map['scope']! as String).input(),
      tokenEndpoint: map['tokenEndpoint'] == null ? null : (map['tokenEndpoint']! as String).input(),
      tokenParams: map['tokenParams'] == null ? null : (GoogleCloudIntegrationsV1alphaParameterMap.fromMap((map['tokenParams']! as Map).cast<String, dynamic>())).input(),
      username: map['username'] == null ? null : (map['username']! as String).input(),
    );
  }
}

