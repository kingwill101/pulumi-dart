// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'settings_access_settings_workforce_identity_settings_oauth2.dart';

class SettingsAccessSettingsWorkforceIdentitySettings {
  /// OAuth 2.0 settings for IAP to perform OIDC flow with workforce identity
  /// federation services.
  /// Structure is documented below.
  ///
  ///
  /// &lt;a name="nestedAccessSettingsWorkforceIdentitySettingsOauth2"&gt;&lt;/a&gt;The `oauth2` block supports:
  final pulumi.Input<SettingsAccessSettingsWorkforceIdentitySettingsOauth2>? oauth2;
  /// The workforce pool resources. Only one workforce pool is accepted.
  final pulumi.Input<String>? workforcePools;

  /// Creates a new [SettingsAccessSettingsWorkforceIdentitySettings].
  /// [oauth2] OAuth 2.0 settings for IAP to perform OIDC flow with workforce identity
  /// [workforcePools] The workforce pool resources. Only one workforce pool is accepted.
  const SettingsAccessSettingsWorkforceIdentitySettings({
    this.oauth2,
    this.workforcePools,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'oauth2': ?pulumi.Input.mapOptionalInputValue<SettingsAccessSettingsWorkforceIdentitySettingsOauth2, Map<String, dynamic>>(oauth2, (value) => value.toMap()),
      'workforcePools': ?workforcePools,
    };
  }

  factory SettingsAccessSettingsWorkforceIdentitySettings.fromMap(Map<String, dynamic> map) {
    return SettingsAccessSettingsWorkforceIdentitySettings(
      oauth2: (() { final guardedValue = map['oauth2']; if (guardedValue == null) return null; return pulumi.Input.fromValue(SettingsAccessSettingsWorkforceIdentitySettingsOauth2.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      workforcePools: (() { final guardedValue = map['workforcePools']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
