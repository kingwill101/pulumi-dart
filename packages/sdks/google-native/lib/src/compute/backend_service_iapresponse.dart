// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'backend_service_iapoauth2_client_info_response.dart';

/// Identity-Aware Proxy
class BackendServiceIAPResponse {
  /// Whether the serving infrastructure will authenticate and authorize all incoming requests.
  final pulumi.Input<bool> enabled;
  /// OAuth2 client ID to use for the authentication flow.
  final pulumi.Input<String> oauth2ClientId;
  /// [Input Only] OAuth client info required to generate client id to be used for IAP.
  final pulumi.Input<BackendServiceIAPOAuth2ClientInfoResponse> oauth2ClientInfo;
  /// OAuth2 client secret to use for the authentication flow. For security reasons, this value cannot be retrieved via the API. Instead, the SHA-256 hash of the value is returned in the oauth2ClientSecretSha256 field. @InputOnly
  final pulumi.Input<String> oauth2ClientSecret;
  /// SHA256 hash value for the field oauth2_client_secret above.
  final pulumi.Input<String> oauth2ClientSecretSha256;

  /// Creates a new [BackendServiceIAPResponse].
  /// [enabled] Whether the serving infrastructure will authenticate and authorize all incoming requests.
  /// [oauth2ClientId] OAuth2 client ID to use for the authentication flow.
  /// [oauth2ClientInfo] [Input Only] OAuth client info required to generate client id to be used for IAP.
  /// [oauth2ClientSecret] OAuth2 client secret to use for the authentication flow. For security reasons, this value cannot be retrieved via the API. Instead, the SHA-256 hash of the value is returned in the oauth2ClientSecretSha256 field. @InputOnly
  /// [oauth2ClientSecretSha256] SHA256 hash value for the field oauth2_client_secret above.
  const BackendServiceIAPResponse({
    required this.enabled,
    required this.oauth2ClientId,
    required this.oauth2ClientInfo,
    required this.oauth2ClientSecret,
    required this.oauth2ClientSecretSha256,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enabled': enabled,
      'oauth2ClientId': oauth2ClientId,
      'oauth2ClientInfo': pulumi.Input.mapInputValue<BackendServiceIAPOAuth2ClientInfoResponse, Map<String, dynamic>>(oauth2ClientInfo, (value) => value.toMap()),
      'oauth2ClientSecret': oauth2ClientSecret,
      'oauth2ClientSecretSha256': oauth2ClientSecretSha256,
    };
  }

  factory BackendServiceIAPResponse.fromMap(Map<String, dynamic> map) {
    return BackendServiceIAPResponse(
      enabled: pulumi.Input.fromValue(map['enabled'] as bool),
      oauth2ClientId: pulumi.Input.fromValue(map['oauth2ClientId'] as String),
      oauth2ClientInfo: pulumi.Input.fromValue(BackendServiceIAPOAuth2ClientInfoResponse.fromMap((map['oauth2ClientInfo']! as Map).cast<String, dynamic>())),
      oauth2ClientSecret: pulumi.Input.fromValue(map['oauth2ClientSecret'] as String),
      oauth2ClientSecretSha256: pulumi.Input.fromValue(map['oauth2ClientSecretSha256'] as String),
    );
  }
}

