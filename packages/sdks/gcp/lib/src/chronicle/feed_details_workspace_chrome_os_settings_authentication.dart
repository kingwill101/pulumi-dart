// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'feed_details_workspace_chrome_os_settings_authentication_claims.dart';
import 'feed_details_workspace_chrome_os_settings_authentication_rs_credentials.dart';

class FeedDetailsWorkspaceChromeOsSettingsAuthentication {
  /// Claims identifying a specific customer.
  /// Structure is documented below.
  final pulumi.Input<FeedDetailsWorkspaceChromeOsSettingsAuthenticationClaims?>? claims;
  /// RS credentials.
  /// Structure is documented below.
  final pulumi.Input<FeedDetailsWorkspaceChromeOsSettingsAuthenticationRsCredentials?>? rsCredentials;
  /// Token endpoint to get the OAuth token from.
  final pulumi.Input<String?>? tokenEndpoint;

  /// Creates a new [FeedDetailsWorkspaceChromeOsSettingsAuthentication].
  /// [claims] Claims identifying a specific customer.
  /// [rsCredentials] RS credentials.
  /// [tokenEndpoint] Token endpoint to get the OAuth token from.
  const FeedDetailsWorkspaceChromeOsSettingsAuthentication({
    this.claims,
    this.rsCredentials,
    this.tokenEndpoint,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'claims': ?pulumi.Input.mapOptionalInputValue<FeedDetailsWorkspaceChromeOsSettingsAuthenticationClaims, Map<String, dynamic>>(claims, (value) => value.toMap()),
      'rsCredentials': ?pulumi.Input.mapOptionalInputValue<FeedDetailsWorkspaceChromeOsSettingsAuthenticationRsCredentials, Map<String, dynamic>>(rsCredentials, (value) => value.toMap()),
      'tokenEndpoint': ?tokenEndpoint,
    };
  }

  factory FeedDetailsWorkspaceChromeOsSettingsAuthentication.fromMap(Map<String, dynamic> map) {
    return FeedDetailsWorkspaceChromeOsSettingsAuthentication(
      claims: (() { final guardedValue = map['claims']; if (guardedValue == null) return null; return pulumi.Input.fromValue(FeedDetailsWorkspaceChromeOsSettingsAuthenticationClaims.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      rsCredentials: (() { final guardedValue = map['rsCredentials']; if (guardedValue == null) return null; return pulumi.Input.fromValue(FeedDetailsWorkspaceChromeOsSettingsAuthenticationRsCredentials.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      tokenEndpoint: (() { final guardedValue = map['tokenEndpoint']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
