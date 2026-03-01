// ignore_for_file: unused_element, unnecessary_cast

import 'function_app_slot_auth_settings_active_directory.dart';
import 'function_app_slot_auth_settings_facebook.dart';
import 'function_app_slot_auth_settings_google.dart';
import 'function_app_slot_auth_settings_microsoft.dart';
import 'function_app_slot_auth_settings_twitter.dart';

class FunctionAppSlotAuthSettings {
  /// An `active_directory` block as defined below.
  final FunctionAppSlotAuthSettingsActiveDirectory? activeDirectory;
  /// login parameters to send to the OpenID Connect authorization endpoint when a user logs in. Each parameter must be in the form "key=value".
  final Map<String, String>? additionalLoginParams;
  /// External URLs that can be redirected to as part of logging in or logging out of the app.
  final List<String>? allowedExternalRedirectUrls;
  /// The default provider to use when multiple providers have been set up. Possible values are `AzureActiveDirectory`, `Facebook`, `Google`, `MicrosoftAccount` and `Twitter`.
  ///
  /// > **NOTE:** When using multiple providers, the default provider must be set for settings like `unauthenticated_client_action` to work.
  final String? defaultProvider;
  /// Is Authentication enabled?
  final bool enabled;
  /// A `facebook` block as defined below.
  final FunctionAppSlotAuthSettingsFacebook? facebook;
  /// A `google` block as defined below.
  final FunctionAppSlotAuthSettingsGoogle? google;
  /// Issuer URI. When using Azure Active Directory, this value is the URI of the directory tenant, e.g. <https://sts.windows.net/{tenant-guid}/>.
  final String? issuer;
  /// A `microsoft` block as defined below.
  final FunctionAppSlotAuthSettingsMicrosoft? microsoft;
  /// The runtime version of the Authentication/Authorization module.
  final String? runtimeVersion;
  /// The number of hours after session token expiration that a session token can be used to call the token refresh API. Defaults to `72`.
  final double? tokenRefreshExtensionHours;
  /// If enabled the module will durably store platform-specific security tokens that are obtained during login flows. Defaults to `false`.
  final bool? tokenStoreEnabled;
  /// A `twitter` block as defined below.
  final FunctionAppSlotAuthSettingsTwitter? twitter;
  /// The action to take when an unauthenticated client attempts to access the app. Possible values are `AllowAnonymous` and `RedirectToLoginPage`.
  final String? unauthenticatedClientAction;

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
      'activeDirectory': ?activeDirectory == null ? null : activeDirectory!.toMap(),
      'additionalLoginParams': ?additionalLoginParams,
      'allowedExternalRedirectUrls': ?allowedExternalRedirectUrls,
      'defaultProvider': ?defaultProvider,
      'enabled': enabled,
      'facebook': ?facebook == null ? null : facebook!.toMap(),
      'google': ?google == null ? null : google!.toMap(),
      'issuer': ?issuer,
      'microsoft': ?microsoft == null ? null : microsoft!.toMap(),
      'runtimeVersion': ?runtimeVersion,
      'tokenRefreshExtensionHours': ?tokenRefreshExtensionHours,
      'tokenStoreEnabled': ?tokenStoreEnabled,
      'twitter': ?twitter == null ? null : twitter!.toMap(),
      'unauthenticatedClientAction': ?unauthenticatedClientAction,
    };
  }

  factory FunctionAppSlotAuthSettings.fromMap(Map<String, dynamic> map) {
    return FunctionAppSlotAuthSettings(
      activeDirectory: map['activeDirectory'] == null ? null : FunctionAppSlotAuthSettingsActiveDirectory.fromMap((map['activeDirectory'] as Map).cast<String, dynamic>()),
      additionalLoginParams: map['additionalLoginParams'] == null ? null : (map['additionalLoginParams'] as Map).cast<String, String>(),
      allowedExternalRedirectUrls: map['allowedExternalRedirectUrls'] == null ? null : (map['allowedExternalRedirectUrls'] as List).cast<String>(),
      defaultProvider: map['defaultProvider'] == null ? null : map['defaultProvider'] as String,
      enabled: map['enabled'] as bool,
      facebook: map['facebook'] == null ? null : FunctionAppSlotAuthSettingsFacebook.fromMap((map['facebook'] as Map).cast<String, dynamic>()),
      google: map['google'] == null ? null : FunctionAppSlotAuthSettingsGoogle.fromMap((map['google'] as Map).cast<String, dynamic>()),
      issuer: map['issuer'] == null ? null : map['issuer'] as String,
      microsoft: map['microsoft'] == null ? null : FunctionAppSlotAuthSettingsMicrosoft.fromMap((map['microsoft'] as Map).cast<String, dynamic>()),
      runtimeVersion: map['runtimeVersion'] == null ? null : map['runtimeVersion'] as String,
      tokenRefreshExtensionHours: map['tokenRefreshExtensionHours'] == null ? null : map['tokenRefreshExtensionHours'] as double,
      tokenStoreEnabled: map['tokenStoreEnabled'] == null ? null : map['tokenStoreEnabled'] as bool,
      twitter: map['twitter'] == null ? null : FunctionAppSlotAuthSettingsTwitter.fromMap((map['twitter'] as Map).cast<String, dynamic>()),
      unauthenticatedClientAction: map['unauthenticatedClientAction'] == null ? null : map['unauthenticatedClientAction'] as String,
    );
  }
}

