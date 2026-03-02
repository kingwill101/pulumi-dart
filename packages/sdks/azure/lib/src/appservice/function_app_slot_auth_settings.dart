// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'function_app_slot_auth_settings_active_directory.dart';
import 'function_app_slot_auth_settings_facebook.dart';
import 'function_app_slot_auth_settings_google.dart';
import 'function_app_slot_auth_settings_microsoft.dart';
import 'function_app_slot_auth_settings_twitter.dart';

class FunctionAppSlotAuthSettings {
  /// An `active_directory` block as defined below.
  final pulumi.Input<FunctionAppSlotAuthSettingsActiveDirectory>? activeDirectory;
  /// login parameters to send to the OpenID Connect authorization endpoint when a user logs in. Each parameter must be in the form "key=value".
  final pulumi.Input<Map<String, String>>? additionalLoginParams;
  /// External URLs that can be redirected to as part of logging in or logging out of the app.
  final pulumi.Input<List<String>>? allowedExternalRedirectUrls;
  /// The default provider to use when multiple providers have been set up. Possible values are `AzureActiveDirectory`, `Facebook`, `Google`, `MicrosoftAccount` and `Twitter`.
  ///
  /// > **NOTE:** When using multiple providers, the default provider must be set for settings like `unauthenticated_client_action` to work.
  final pulumi.Input<String>? defaultProvider;
  /// Is Authentication enabled?
  final pulumi.Input<bool> enabled;
  /// A `facebook` block as defined below.
  final pulumi.Input<FunctionAppSlotAuthSettingsFacebook>? facebook;
  /// A `google` block as defined below.
  final pulumi.Input<FunctionAppSlotAuthSettingsGoogle>? google;
  /// Issuer URI. When using Azure Active Directory, this value is the URI of the directory tenant, e.g. <https://sts.windows.net/{tenant-guid}/>.
  final pulumi.Input<String>? issuer;
  /// A `microsoft` block as defined below.
  final pulumi.Input<FunctionAppSlotAuthSettingsMicrosoft>? microsoft;
  /// The runtime version of the Authentication/Authorization module.
  final pulumi.Input<String>? runtimeVersion;
  /// The number of hours after session token expiration that a session token can be used to call the token refresh API. Defaults to `72`.
  final pulumi.Input<double>? tokenRefreshExtensionHours;
  /// If enabled the module will durably store platform-specific security tokens that are obtained during login flows. Defaults to `false`.
  final pulumi.Input<bool>? tokenStoreEnabled;
  /// A `twitter` block as defined below.
  final pulumi.Input<FunctionAppSlotAuthSettingsTwitter>? twitter;
  /// The action to take when an unauthenticated client attempts to access the app. Possible values are `AllowAnonymous` and `RedirectToLoginPage`.
  final pulumi.Input<String>? unauthenticatedClientAction;

  /// Creates a new [FunctionAppSlotAuthSettings].
  /// [activeDirectory] An `active_directory` block as defined below.
  /// [additionalLoginParams] login parameters to send to the OpenID Connect authorization endpoint when a user logs in. Each parameter must be in the form "key=value".
  /// [allowedExternalRedirectUrls] External URLs that can be redirected to as part of logging in or logging out of the app.
  /// [defaultProvider] The default provider to use when multiple providers have been set up. Possible values are `AzureActiveDirectory`, `Facebook`, `Google`, `MicrosoftAccount` and `Twitter`.
  /// [enabled] Is Authentication enabled?
  /// [facebook] A `facebook` block as defined below.
  /// [google] A `google` block as defined below.
  /// [issuer] Issuer URI. When using Azure Active Directory, this value is the URI of the directory tenant, e.g. <https://sts.windows.net/{tenant-guid}/>.
  /// [microsoft] A `microsoft` block as defined below.
  /// [runtimeVersion] The runtime version of the Authentication/Authorization module.
  /// [tokenRefreshExtensionHours] The number of hours after session token expiration that a session token can be used to call the token refresh API. Defaults to `72`.
  /// [tokenStoreEnabled] If enabled the module will durably store platform-specific security tokens that are obtained during login flows. Defaults to `false`.
  /// [twitter] A `twitter` block as defined below.
  /// [unauthenticatedClientAction] The action to take when an unauthenticated client attempts to access the app. Possible values are `AllowAnonymous` and `RedirectToLoginPage`.
  FunctionAppSlotAuthSettings({
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
      'activeDirectory': ?pulumi.Input.mapOptionalInputValue<FunctionAppSlotAuthSettingsActiveDirectory, Map<String, dynamic>>(activeDirectory, (value) => value.toMap()),
      'additionalLoginParams': ?additionalLoginParams,
      'allowedExternalRedirectUrls': ?allowedExternalRedirectUrls,
      'defaultProvider': ?defaultProvider,
      'enabled': enabled,
      'facebook': ?pulumi.Input.mapOptionalInputValue<FunctionAppSlotAuthSettingsFacebook, Map<String, dynamic>>(facebook, (value) => value.toMap()),
      'google': ?pulumi.Input.mapOptionalInputValue<FunctionAppSlotAuthSettingsGoogle, Map<String, dynamic>>(google, (value) => value.toMap()),
      'issuer': ?issuer,
      'microsoft': ?pulumi.Input.mapOptionalInputValue<FunctionAppSlotAuthSettingsMicrosoft, Map<String, dynamic>>(microsoft, (value) => value.toMap()),
      'runtimeVersion': ?runtimeVersion,
      'tokenRefreshExtensionHours': ?tokenRefreshExtensionHours,
      'tokenStoreEnabled': ?tokenStoreEnabled,
      'twitter': ?pulumi.Input.mapOptionalInputValue<FunctionAppSlotAuthSettingsTwitter, Map<String, dynamic>>(twitter, (value) => value.toMap()),
      'unauthenticatedClientAction': ?unauthenticatedClientAction,
    };
  }

  factory FunctionAppSlotAuthSettings.fromMap(Map<String, dynamic> map) {
    return FunctionAppSlotAuthSettings(
      activeDirectory: map['activeDirectory'] == null ? null : (FunctionAppSlotAuthSettingsActiveDirectory.fromMap((map['activeDirectory']! as Map).cast<String, dynamic>())).input(),
      additionalLoginParams: map['additionalLoginParams'] == null ? null : ((map['additionalLoginParams']! as Map).cast<String, String>()).input(),
      allowedExternalRedirectUrls: map['allowedExternalRedirectUrls'] == null ? null : ((map['allowedExternalRedirectUrls']! as List).cast<String>()).input(),
      defaultProvider: map['defaultProvider'] == null ? null : (map['defaultProvider']! as String).input(),
      enabled: (map['enabled'] as bool).input(),
      facebook: map['facebook'] == null ? null : (FunctionAppSlotAuthSettingsFacebook.fromMap((map['facebook']! as Map).cast<String, dynamic>())).input(),
      google: map['google'] == null ? null : (FunctionAppSlotAuthSettingsGoogle.fromMap((map['google']! as Map).cast<String, dynamic>())).input(),
      issuer: map['issuer'] == null ? null : (map['issuer']! as String).input(),
      microsoft: map['microsoft'] == null ? null : (FunctionAppSlotAuthSettingsMicrosoft.fromMap((map['microsoft']! as Map).cast<String, dynamic>())).input(),
      runtimeVersion: map['runtimeVersion'] == null ? null : (map['runtimeVersion']! as String).input(),
      tokenRefreshExtensionHours: map['tokenRefreshExtensionHours'] == null ? null : (map['tokenRefreshExtensionHours']! as double).input(),
      tokenStoreEnabled: map['tokenStoreEnabled'] == null ? null : (map['tokenStoreEnabled']! as bool).input(),
      twitter: map['twitter'] == null ? null : (FunctionAppSlotAuthSettingsTwitter.fromMap((map['twitter']! as Map).cast<String, dynamic>())).input(),
      unauthenticatedClientAction: map['unauthenticatedClientAction'] == null ? null : (map['unauthenticatedClientAction']! as String).input(),
    );
  }
}

