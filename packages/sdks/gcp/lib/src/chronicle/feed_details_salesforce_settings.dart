// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'feed_details_salesforce_settings_oauth_jwt_credentials.dart';
import 'feed_details_salesforce_settings_oauth_password_grant_auth.dart';

class FeedDetailsSalesforceSettings {
  /// API hostname.
  final pulumi.Input<String>? hostname;
  /// OAuth 2.0 JWT grant. See, https://tools.ietf.org/html/rfc7519
  /// Structure is documented below.
  final pulumi.Input<FeedDetailsSalesforceSettingsOauthJwtCredentials>? oauthJwtCredentials;
  /// OAuth 2.0 password grant. See https://tools.ietf.org/html/rfc6749.
  /// Structure is documented below.
  final pulumi.Input<FeedDetailsSalesforceSettingsOauthPasswordGrantAuth>? oauthPasswordGrantAuth;

  /// Creates a new [FeedDetailsSalesforceSettings].
  /// [hostname] API hostname.
  /// [oauthJwtCredentials] OAuth 2.0 JWT grant. See, https://tools.ietf.org/html/rfc7519
  /// [oauthPasswordGrantAuth] OAuth 2.0 password grant. See https://tools.ietf.org/html/rfc6749.
  const FeedDetailsSalesforceSettings({
    this.hostname,
    this.oauthJwtCredentials,
    this.oauthPasswordGrantAuth,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'hostname': ?hostname,
      'oauthJwtCredentials': ?pulumi.Input.mapOptionalInputValue<FeedDetailsSalesforceSettingsOauthJwtCredentials, Map<String, dynamic>>(oauthJwtCredentials, (value) => value.toMap()),
      'oauthPasswordGrantAuth': ?pulumi.Input.mapOptionalInputValue<FeedDetailsSalesforceSettingsOauthPasswordGrantAuth, Map<String, dynamic>>(oauthPasswordGrantAuth, (value) => value.toMap()),
    };
  }

  factory FeedDetailsSalesforceSettings.fromMap(Map<String, dynamic> map) {
    return FeedDetailsSalesforceSettings(
      hostname: (() { final guardedValue = map['hostname']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      oauthJwtCredentials: (() { final guardedValue = map['oauthJwtCredentials']; if (guardedValue == null) return null; return pulumi.Input.fromValue(FeedDetailsSalesforceSettingsOauthJwtCredentials.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      oauthPasswordGrantAuth: (() { final guardedValue = map['oauthPasswordGrantAuth']; if (guardedValue == null) return null; return pulumi.Input.fromValue(FeedDetailsSalesforceSettingsOauthPasswordGrantAuth.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
