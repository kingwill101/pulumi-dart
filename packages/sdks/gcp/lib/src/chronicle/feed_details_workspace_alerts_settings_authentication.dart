// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'feed_details_workspace_alerts_settings_authentication_claims.dart';
import 'feed_details_workspace_alerts_settings_authentication_rs_credentials.dart';

class FeedDetailsWorkspaceAlertsSettingsAuthentication {
  /// Claims identifying a specific customer.
  /// Structure is documented below.
  final pulumi.Input<FeedDetailsWorkspaceAlertsSettingsAuthenticationClaims?>? claims;
  /// RS credentials.
  /// Structure is documented below.
  final pulumi.Input<FeedDetailsWorkspaceAlertsSettingsAuthenticationRsCredentials?>? rsCredentials;
  /// Token endpoint to get the OAuth token from.
  final pulumi.Input<String?>? tokenEndpoint;

  /// Creates a new [FeedDetailsWorkspaceAlertsSettingsAuthentication].
  /// [claims] Claims identifying a specific customer.
  /// [rsCredentials] RS credentials.
  /// [tokenEndpoint] Token endpoint to get the OAuth token from.
  const FeedDetailsWorkspaceAlertsSettingsAuthentication({
    this.claims,
    this.rsCredentials,
    this.tokenEndpoint,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'claims': ?pulumi.Input.mapOptionalInputValue<FeedDetailsWorkspaceAlertsSettingsAuthenticationClaims, Map<String, dynamic>>(claims, (value) => value.toMap()),
      'rsCredentials': ?pulumi.Input.mapOptionalInputValue<FeedDetailsWorkspaceAlertsSettingsAuthenticationRsCredentials, Map<String, dynamic>>(rsCredentials, (value) => value.toMap()),
      'tokenEndpoint': ?tokenEndpoint,
    };
  }

  factory FeedDetailsWorkspaceAlertsSettingsAuthentication.fromMap(Map<String, dynamic> map) {
    return FeedDetailsWorkspaceAlertsSettingsAuthentication(
      claims: (() { final guardedValue = map['claims']; if (guardedValue == null) return null; return pulumi.Input.fromValue(FeedDetailsWorkspaceAlertsSettingsAuthenticationClaims.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      rsCredentials: (() { final guardedValue = map['rsCredentials']; if (guardedValue == null) return null; return pulumi.Input.fromValue(FeedDetailsWorkspaceAlertsSettingsAuthenticationRsCredentials.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      tokenEndpoint: (() { final guardedValue = map['tokenEndpoint']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
