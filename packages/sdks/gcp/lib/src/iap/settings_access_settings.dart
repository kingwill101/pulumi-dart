// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'settings_access_settings_allowed_domains_settings.dart';
import 'settings_access_settings_cors_settings.dart';
import 'settings_access_settings_gcip_settings.dart';
import 'settings_access_settings_oauth_settings.dart';
import 'settings_access_settings_reauth_settings.dart';
import 'settings_access_settings_workforce_identity_settings.dart';

class SettingsAccessSettings {
  /// Settings to configure and enable allowed domains.
  /// Structure is documented below.
  final pulumi.Input<SettingsAccessSettingsAllowedDomainsSettings>? allowedDomainsSettings;
  /// Configuration to allow cross-origin requests via IAP.
  /// Structure is documented below.
  final pulumi.Input<SettingsAccessSettingsCorsSettings>? corsSettings;
  /// GCIP claims and endpoint configurations for 3p identity providers.
  /// * Enabling gcipSetting significantly changes the way IAP authenticates users. Identity Platform does not support IAM, so IAP will not enforce any IAM policies for requests to your application.
  /// Structure is documented below.
  final pulumi.Input<SettingsAccessSettingsGcipSettings>? gcipSettings;
  /// Identity sources that IAP can use to authenticate the end user. Only one identity source
  /// can be configured. The possible values are:
  /// * `WORKFORCE_IDENTITY_FEDERATION`: Use external identities set up on Google Cloud Workforce
  /// Identity Federation.
  /// Each value may be one of: `WORKFORCE_IDENTITY_FEDERATION`.
  final pulumi.Input<List<String>>? identitySources;
  /// Settings to configure IAP's OAuth behavior.
  /// Structure is documented below.
  final pulumi.Input<SettingsAccessSettingsOauthSettings>? oauthSettings;
  /// Settings to configure reauthentication policies in IAP.
  /// Structure is documented below.
  final pulumi.Input<SettingsAccessSettingsReauthSettings>? reauthSettings;
  /// Settings to configure the workforce identity federation, including workforce pools
  /// and OAuth 2.0 settings.
  /// Structure is documented below.
  final pulumi.Input<SettingsAccessSettingsWorkforceIdentitySettings>? workforceIdentitySettings;

  /// Creates a new [SettingsAccessSettings].
  /// [allowedDomainsSettings] Settings to configure and enable allowed domains.
  /// [corsSettings] Configuration to allow cross-origin requests via IAP.
  /// [gcipSettings] GCIP claims and endpoint configurations for 3p identity providers.
  /// [identitySources] Identity sources that IAP can use to authenticate the end user. Only one identity source
  /// [oauthSettings] Settings to configure IAP's OAuth behavior.
  /// [reauthSettings] Settings to configure reauthentication policies in IAP.
  /// [workforceIdentitySettings] Settings to configure the workforce identity federation, including workforce pools
  SettingsAccessSettings({
    this.allowedDomainsSettings,
    this.corsSettings,
    this.gcipSettings,
    this.identitySources,
    this.oauthSettings,
    this.reauthSettings,
    this.workforceIdentitySettings,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allowedDomainsSettings': ?pulumi.Input.mapOptionalInputValue<SettingsAccessSettingsAllowedDomainsSettings, Map<String, dynamic>>(allowedDomainsSettings, (value) => value.toMap()),
      'corsSettings': ?pulumi.Input.mapOptionalInputValue<SettingsAccessSettingsCorsSettings, Map<String, dynamic>>(corsSettings, (value) => value.toMap()),
      'gcipSettings': ?pulumi.Input.mapOptionalInputValue<SettingsAccessSettingsGcipSettings, Map<String, dynamic>>(gcipSettings, (value) => value.toMap()),
      'identitySources': ?identitySources,
      'oauthSettings': ?pulumi.Input.mapOptionalInputValue<SettingsAccessSettingsOauthSettings, Map<String, dynamic>>(oauthSettings, (value) => value.toMap()),
      'reauthSettings': ?pulumi.Input.mapOptionalInputValue<SettingsAccessSettingsReauthSettings, Map<String, dynamic>>(reauthSettings, (value) => value.toMap()),
      'workforceIdentitySettings': ?pulumi.Input.mapOptionalInputValue<SettingsAccessSettingsWorkforceIdentitySettings, Map<String, dynamic>>(workforceIdentitySettings, (value) => value.toMap()),
    };
  }

  factory SettingsAccessSettings.fromMap(Map<String, dynamic> map) {
    return SettingsAccessSettings(
      allowedDomainsSettings: map['allowedDomainsSettings'] == null ? null : (SettingsAccessSettingsAllowedDomainsSettings.fromMap((map['allowedDomainsSettings'] as Map).cast<String, dynamic>())).input(),
      corsSettings: map['corsSettings'] == null ? null : (SettingsAccessSettingsCorsSettings.fromMap((map['corsSettings'] as Map).cast<String, dynamic>())).input(),
      gcipSettings: map['gcipSettings'] == null ? null : (SettingsAccessSettingsGcipSettings.fromMap((map['gcipSettings'] as Map).cast<String, dynamic>())).input(),
      identitySources: map['identitySources'] == null ? null : ((map['identitySources'] as List).cast<String>()).input(),
      oauthSettings: map['oauthSettings'] == null ? null : (SettingsAccessSettingsOauthSettings.fromMap((map['oauthSettings'] as Map).cast<String, dynamic>())).input(),
      reauthSettings: map['reauthSettings'] == null ? null : (SettingsAccessSettingsReauthSettings.fromMap((map['reauthSettings'] as Map).cast<String, dynamic>())).input(),
      workforceIdentitySettings: map['workforceIdentitySettings'] == null ? null : (SettingsAccessSettingsWorkforceIdentitySettings.fromMap((map['workforceIdentitySettings'] as Map).cast<String, dynamic>())).input(),
    );
  }
}

