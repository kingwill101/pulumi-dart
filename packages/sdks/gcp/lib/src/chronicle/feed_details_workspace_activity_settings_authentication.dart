// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'feed_details_workspace_activity_settings_authentication_claims.dart';
import 'feed_details_workspace_activity_settings_authentication_rs_credentials.dart';

class FeedDetailsWorkspaceActivitySettingsAuthentication {
  /// Claims identifying a specific customer.
  /// Structure is documented below.
  final pulumi.Input<FeedDetailsWorkspaceActivitySettingsAuthenticationClaims?>? claims;
  /// RS credentials.
  /// Structure is documented below.
  final pulumi.Input<FeedDetailsWorkspaceActivitySettingsAuthenticationRsCredentials?>? rsCredentials;
  /// Token endpoint to get the OAuth token from.
  final pulumi.Input<String?>? tokenEndpoint;

  /// Creates a new [FeedDetailsWorkspaceActivitySettingsAuthentication].
  /// [claims] Claims identifying a specific customer.
  /// [rsCredentials] RS credentials.
  /// [tokenEndpoint] Token endpoint to get the OAuth token from.
  const FeedDetailsWorkspaceActivitySettingsAuthentication({
    this.claims,
    this.rsCredentials,
    this.tokenEndpoint,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'claims': ?pulumi.Input.mapOptionalInputValue<FeedDetailsWorkspaceActivitySettingsAuthenticationClaims, Map<String, dynamic>>(claims, (value) => value.toMap()),
      'rsCredentials': ?pulumi.Input.mapOptionalInputValue<FeedDetailsWorkspaceActivitySettingsAuthenticationRsCredentials, Map<String, dynamic>>(rsCredentials, (value) => value.toMap()),
      'tokenEndpoint': ?tokenEndpoint,
    };
  }

  factory FeedDetailsWorkspaceActivitySettingsAuthentication.fromMap(Map<String, dynamic> map) {
    return FeedDetailsWorkspaceActivitySettingsAuthentication(
      claims: (() { final guardedValue = map['claims']; if (guardedValue == null) return null; return pulumi.Input.fromValue(FeedDetailsWorkspaceActivitySettingsAuthenticationClaims.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      rsCredentials: (() { final guardedValue = map['rsCredentials']; if (guardedValue == null) return null; return pulumi.Input.fromValue(FeedDetailsWorkspaceActivitySettingsAuthenticationRsCredentials.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      tokenEndpoint: (() { final guardedValue = map['tokenEndpoint']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
