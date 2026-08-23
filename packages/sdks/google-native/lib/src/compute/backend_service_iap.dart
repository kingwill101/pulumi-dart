// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'backend_service_iapoauth2_client_info.dart';

/// Identity-Aware Proxy
class BackendServiceIAP {
  /// Whether the serving infrastructure will authenticate and authorize all incoming requests.
  final pulumi.Input<bool>? enabled;
  /// OAuth2 client ID to use for the authentication flow.
  final pulumi.Input<String>? oauth2ClientId;
  /// [Input Only] OAuth client info required to generate client id to be used for IAP.
  final pulumi.Input<BackendServiceIAPOAuth2ClientInfo>? oauth2ClientInfo;
  /// OAuth2 client secret to use for the authentication flow. For security reasons, this value cannot be retrieved via the API. Instead, the SHA-256 hash of the value is returned in the oauth2ClientSecretSha256 field. @InputOnly
  final pulumi.Input<String>? oauth2ClientSecret;

  /// Creates a new [BackendServiceIAP].
  /// [enabled] Whether the serving infrastructure will authenticate and authorize all incoming requests.
  /// [oauth2ClientId] OAuth2 client ID to use for the authentication flow.
  /// [oauth2ClientInfo] [Input Only] OAuth client info required to generate client id to be used for IAP.
  /// [oauth2ClientSecret] OAuth2 client secret to use for the authentication flow. For security reasons, this value cannot be retrieved via the API. Instead, the SHA-256 hash of the value is returned in the oauth2ClientSecretSha256 field. @InputOnly
  const BackendServiceIAP({
    this.enabled,
    this.oauth2ClientId,
    this.oauth2ClientInfo,
    this.oauth2ClientSecret,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enabled': ?enabled,
      'oauth2ClientId': ?oauth2ClientId,
      'oauth2ClientInfo': ?pulumi.Input.mapOptionalInputValue<BackendServiceIAPOAuth2ClientInfo, Map<String, dynamic>>(oauth2ClientInfo, (value) => value.toMap()),
      'oauth2ClientSecret': ?oauth2ClientSecret,
    };
  }

  factory BackendServiceIAP.fromMap(Map<String, dynamic> map) {
    return BackendServiceIAP(
      enabled: (() { final guardedValue = map['enabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      oauth2ClientId: (() { final guardedValue = map['oauth2ClientId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      oauth2ClientInfo: (() { final guardedValue = map['oauth2ClientInfo']; if (guardedValue == null) return null; return pulumi.Input.fromValue(BackendServiceIAPOAuth2ClientInfo.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      oauth2ClientSecret: (() { final guardedValue = map['oauth2ClientSecret']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
