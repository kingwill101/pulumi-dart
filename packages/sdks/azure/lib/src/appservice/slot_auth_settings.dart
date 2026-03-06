// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'slot_auth_settings_active_directory.dart';
import 'slot_auth_settings_facebook.dart';
import 'slot_auth_settings_google.dart';
import 'slot_auth_settings_microsoft.dart';
import 'slot_auth_settings_twitter.dart';

class SlotAuthSettings {
  /// A `active_directory` block as defined below.
  final pulumi.Input<SlotAuthSettingsActiveDirectory>? activeDirectory;
  /// Login parameters to send to the OpenID Connect authorization endpoint when a user logs in. Each parameter must be in the form "key=value".
  final pulumi.Input<Map<String, String>>? additionalLoginParams;
  /// External URLs that can be redirected to as part of logging in or logging out of the app.
  final pulumi.Input<List<String>>? allowedExternalRedirectUrls;
  /// The default provider to use when multiple providers have been set up. Possible values are `AzureActiveDirectory`, `Facebook`, `Google`, `MicrosoftAccount` and `Twitter`.
  ///
  /// &gt; **NOTE:** When using multiple providers, the default provider must be set for settings like `unauthenticated_client_action` to work.
  final pulumi.Input<String>? defaultProvider;
  /// Is Authentication enabled?
  final pulumi.Input<bool> enabled;
  /// A `facebook` block as defined below.
  final pulumi.Input<SlotAuthSettingsFacebook>? facebook;
  /// A `google` block as defined below.
  final pulumi.Input<SlotAuthSettingsGoogle>? google;
  /// Issuer URI. When using Azure Active Directory, this value is the URI of the directory tenant, e.g. &lt;https://sts.windows.net/{tenant-guid}/&gt;.
  final pulumi.Input<String>? issuer;
  /// A `microsoft` block as defined below.
  final pulumi.Input<SlotAuthSettingsMicrosoft>? microsoft;
  /// The runtime version of the Authentication/Authorization module.
  final pulumi.Input<String>? runtimeVersion;
  /// The number of hours after session token expiration that a session token can be used to call the token refresh API. Defaults to `72`.
  final pulumi.Input<double>? tokenRefreshExtensionHours;
  /// If enabled the module will durably store platform-specific security tokens that are obtained during login flows. Defaults to `false`.
  final pulumi.Input<bool>? tokenStoreEnabled;
  /// A `twitter` block as defined below.
  final pulumi.Input<SlotAuthSettingsTwitter>? twitter;
  /// The action to take when an unauthenticated client attempts to access the app. Possible values are `AllowAnonymous` and `RedirectToLoginPage`.
  final pulumi.Input<String>? unauthenticatedClientAction;

  /// Creates a new [SlotAuthSettings].
  /// [activeDirectory] A `active_directory` block as defined below.
  /// [additionalLoginParams] Login parameters to send to the OpenID Connect authorization endpoint when a user logs in. Each parameter must be in the form "key=value".
  /// [allowedExternalRedirectUrls] External URLs that can be redirected to as part of logging in or logging out of the app.
  /// [defaultProvider] The default provider to use when multiple providers have been set up. Possible values are `AzureActiveDirectory`, `Facebook`, `Google`, `MicrosoftAccount` and `Twitter`.
  /// [enabled] Is Authentication enabled?
  /// [facebook] A `facebook` block as defined below.
  /// [google] A `google` block as defined below.
  /// [issuer] Issuer URI. When using Azure Active Directory, this value is the URI of the directory tenant, e.g. &lt;https://sts.windows.net/{tenant-guid}/&gt;.
  /// [microsoft] A `microsoft` block as defined below.
  /// [runtimeVersion] The runtime version of the Authentication/Authorization module.
  /// [tokenRefreshExtensionHours] The number of hours after session token expiration that a session token can be used to call the token refresh API. Defaults to `72`.
  /// [tokenStoreEnabled] If enabled the module will durably store platform-specific security tokens that are obtained during login flows. Defaults to `false`.
  /// [twitter] A `twitter` block as defined below.
  /// [unauthenticatedClientAction] The action to take when an unauthenticated client attempts to access the app. Possible values are `AllowAnonymous` and `RedirectToLoginPage`.
  const SlotAuthSettings({
    this.activeDirectory,
    this.additionalLoginParams,
    this.allowedExternalRedirectUrls,
    this.defaultProvider,
    required this.enabled,
    this.facebook,
    this.google,
    this.issuer,
    this.microsoft,
    this.runtimeVersion,
    this.tokenRefreshExtensionHours,
    this.tokenStoreEnabled,
    this.twitter,
    this.unauthenticatedClientAction,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'activeDirectory': ?pulumi.Input.mapOptionalInputValue<SlotAuthSettingsActiveDirectory, Map<String, dynamic>>(activeDirectory, (value) => value.toMap()),
      'additionalLoginParams': ?additionalLoginParams,
      'allowedExternalRedirectUrls': ?allowedExternalRedirectUrls,
      'defaultProvider': ?defaultProvider,
      'enabled': enabled,
      'facebook': ?pulumi.Input.mapOptionalInputValue<SlotAuthSettingsFacebook, Map<String, dynamic>>(facebook, (value) => value.toMap()),
      'google': ?pulumi.Input.mapOptionalInputValue<SlotAuthSettingsGoogle, Map<String, dynamic>>(google, (value) => value.toMap()),
      'issuer': ?issuer,
      'microsoft': ?pulumi.Input.mapOptionalInputValue<SlotAuthSettingsMicrosoft, Map<String, dynamic>>(microsoft, (value) => value.toMap()),
      'runtimeVersion': ?runtimeVersion,
      'tokenRefreshExtensionHours': ?tokenRefreshExtensionHours,
      'tokenStoreEnabled': ?tokenStoreEnabled,
      'twitter': ?pulumi.Input.mapOptionalInputValue<SlotAuthSettingsTwitter, Map<String, dynamic>>(twitter, (value) => value.toMap()),
      'unauthenticatedClientAction': ?unauthenticatedClientAction,
    };
  }

  factory SlotAuthSettings.fromMap(Map<String, dynamic> map) {
    return SlotAuthSettings(
      activeDirectory: (() { final guardedValue = map['activeDirectory']; if (guardedValue == null) return null; return pulumi.Input.fromValue(SlotAuthSettingsActiveDirectory.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      additionalLoginParams: (() { final guardedValue = map['additionalLoginParams']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      allowedExternalRedirectUrls: (() { final guardedValue = map['allowedExternalRedirectUrls']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      defaultProvider: (() { final guardedValue = map['defaultProvider']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      enabled: pulumi.Input.fromValue(map['enabled'] as bool),
      facebook: (() { final guardedValue = map['facebook']; if (guardedValue == null) return null; return pulumi.Input.fromValue(SlotAuthSettingsFacebook.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      google: (() { final guardedValue = map['google']; if (guardedValue == null) return null; return pulumi.Input.fromValue(SlotAuthSettingsGoogle.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      issuer: (() { final guardedValue = map['issuer']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      microsoft: (() { final guardedValue = map['microsoft']; if (guardedValue == null) return null; return pulumi.Input.fromValue(SlotAuthSettingsMicrosoft.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      runtimeVersion: (() { final guardedValue = map['runtimeVersion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tokenRefreshExtensionHours: (() { final guardedValue = map['tokenRefreshExtensionHours']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as double); })(),
      tokenStoreEnabled: (() { final guardedValue = map['tokenStoreEnabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      twitter: (() { final guardedValue = map['twitter']; if (guardedValue == null) return null; return pulumi.Input.fromValue(SlotAuthSettingsTwitter.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      unauthenticatedClientAction: (() { final guardedValue = map['unauthenticatedClientAction']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

