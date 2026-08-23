// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'feed_details_salesforce_settings_oauth_jwt_credentials_claims.dart';
import 'feed_details_salesforce_settings_oauth_jwt_credentials_rs_credentials.dart';

class FeedDetailsSalesforceSettingsOauthJwtCredentials {
  /// Claims identifying a specific customer.
  /// Structure is documented below.
  final pulumi.Input<FeedDetailsSalesforceSettingsOauthJwtCredentialsClaims>? claims;
  /// RS credentials.
  /// Structure is documented below.
  final pulumi.Input<FeedDetailsSalesforceSettingsOauthJwtCredentialsRsCredentials>? rsCredentials;
  /// Token endpoint to get the OAuth token from.
  final pulumi.Input<String>? tokenEndpoint;

  /// Creates a new [FeedDetailsSalesforceSettingsOauthJwtCredentials].
  /// [claims] Claims identifying a specific customer.
  /// [rsCredentials] RS credentials.
  /// [tokenEndpoint] Token endpoint to get the OAuth token from.
  const FeedDetailsSalesforceSettingsOauthJwtCredentials({
    this.claims,
    this.rsCredentials,
    this.tokenEndpoint,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'claims': ?pulumi.Input.mapOptionalInputValue<FeedDetailsSalesforceSettingsOauthJwtCredentialsClaims, Map<String, dynamic>>(claims, (value) => value.toMap()),
      'rsCredentials': ?pulumi.Input.mapOptionalInputValue<FeedDetailsSalesforceSettingsOauthJwtCredentialsRsCredentials, Map<String, dynamic>>(rsCredentials, (value) => value.toMap()),
      'tokenEndpoint': ?tokenEndpoint,
    };
  }

  factory FeedDetailsSalesforceSettingsOauthJwtCredentials.fromMap(Map<String, dynamic> map) {
    return FeedDetailsSalesforceSettingsOauthJwtCredentials(
      claims: (() { final guardedValue = map['claims']; if (guardedValue == null) return null; return pulumi.Input.fromValue(FeedDetailsSalesforceSettingsOauthJwtCredentialsClaims.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      rsCredentials: (() { final guardedValue = map['rsCredentials']; if (guardedValue == null) return null; return pulumi.Input.fromValue(FeedDetailsSalesforceSettingsOauthJwtCredentialsRsCredentials.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      tokenEndpoint: (() { final guardedValue = map['tokenEndpoint']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
