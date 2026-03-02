// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'windows_function_app_slot_auth_settings_active_directory.dart';
import 'windows_function_app_slot_auth_settings_facebook.dart';
import 'windows_function_app_slot_auth_settings_github.dart';
import 'windows_function_app_slot_auth_settings_google.dart';
import 'windows_function_app_slot_auth_settings_microsoft.dart';
import 'windows_function_app_slot_auth_settings_twitter.dart';

class WindowsFunctionAppSlotAuthSettings {
  /// an `active_directory` block as detailed below.
  final pulumi.Input<WindowsFunctionAppSlotAuthSettingsActiveDirectory>? activeDirectory;
  /// Specifies a map of login Parameters to send to the OpenID Connect authorization endpoint when a user logs in.
  final pulumi.Input<Map<String, String>>? additionalLoginParameters;
  /// Specifies a list of External URLs that can be redirected to as part of logging in or logging out of the Windows Web App.
  final pulumi.Input<List<String>>? allowedExternalRedirectUrls;
  /// The default authentication provider to use when multiple providers are configured. Possible values include: `AzureActiveDirectory`, `Facebook`, `Google`, `MicrosoftAccount`, `Twitter`, `Github`.
  ///
  /// > **Note:** This setting is only needed if multiple providers are configured, and the `unauthenticated_client_action` is set to "RedirectToLoginPage".
  final pulumi.Input<String>? defaultProvider;
  /// Should the Authentication / Authorization feature be enabled?
  final pulumi.Input<bool> enabled;
  /// a `facebook` block as detailed below.
  final pulumi.Input<WindowsFunctionAppSlotAuthSettingsFacebook>? facebook;
  /// a `github` block as detailed below.
  final pulumi.Input<WindowsFunctionAppSlotAuthSettingsGithub>? github;
  /// a `google` block as detailed below.
  final pulumi.Input<WindowsFunctionAppSlotAuthSettingsGoogle>? google;
  /// The OpenID Connect Issuer URI that represents the entity which issues access tokens.
  ///
  /// > **Note:** When using Azure Active Directory, this value is the URI of the directory tenant, e.g. <https://sts.windows.net/{tenant-guid}/>.
  final pulumi.Input<String>? issuer;
  /// a `microsoft` block as detailed below.
  final pulumi.Input<WindowsFunctionAppSlotAuthSettingsMicrosoft>? microsoft;
  /// The RuntimeVersion of the Authentication / Authorization feature in use.
  final pulumi.Input<String>? runtimeVersion;
  /// The number of hours after session token expiration that a session token can be used to call the token refresh API. Defaults to `72` hours.
  final pulumi.Input<double>? tokenRefreshExtensionHours;
  /// Should the Windows Web App durably store platform-specific security tokens that are obtained during login flows? Defaults to `false`.
  final pulumi.Input<bool>? tokenStoreEnabled;
  /// a `twitter` block as detailed below.
  final pulumi.Input<WindowsFunctionAppSlotAuthSettingsTwitter>? twitter;
  /// The action to take when an unauthenticated client attempts to access the app. Possible values include: `RedirectToLoginPage`, `AllowAnonymous`.
  final pulumi.Input<String>? unauthenticatedClientAction;

  /// Creates a new [WindowsFunctionAppSlotAuthSettings].
  /// [activeDirectory] an `active_directory` block as detailed below.
  /// [additionalLoginParameters] Specifies a map of login Parameters to send to the OpenID Connect authorization endpoint when a user logs in.
  /// [allowedExternalRedirectUrls] Specifies a list of External URLs that can be redirected to as part of logging in or logging out of the Windows Web App.
  /// [defaultProvider] The default authentication provider to use when multiple providers are configured. Possible values include: `AzureActiveDirectory`, `Facebook`, `Google`, `MicrosoftAccount`, `Twitter`, `Github`.
  /// [enabled] Should the Authentication / Authorization feature be enabled?
  /// [facebook] a `facebook` block as detailed below.
  /// [github] a `github` block as detailed below.
  /// [google] a `google` block as detailed below.
  /// [issuer] The OpenID Connect Issuer URI that represents the entity which issues access tokens.
  /// [microsoft] a `microsoft` block as detailed below.
  /// [runtimeVersion] The RuntimeVersion of the Authentication / Authorization feature in use.
  /// [tokenRefreshExtensionHours] The number of hours after session token expiration that a session token can be used to call the token refresh API. Defaults to `72` hours.
  /// [tokenStoreEnabled] Should the Windows Web App durably store platform-specific security tokens that are obtained during login flows? Defaults to `false`.
  /// [twitter] a `twitter` block as detailed below.
  /// [unauthenticatedClientAction] The action to take when an unauthenticated client attempts to access the app. Possible values include: `RedirectToLoginPage`, `AllowAnonymous`.
  WindowsFunctionAppSlotAuthSettings({
    this.activeDirectory,
    this.additionalLoginParameters,
    this.allowedExternalRedirectUrls,
    this.defaultProvider,
    required this.enabled,
    this.facebook,
    this.github,
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
      'activeDirectory': ?pulumi.Input.mapOptionalInputValue<WindowsFunctionAppSlotAuthSettingsActiveDirectory, Map<String, dynamic>>(activeDirectory, (value) => value.toMap()),
      'additionalLoginParameters': ?additionalLoginParameters,
      'allowedExternalRedirectUrls': ?allowedExternalRedirectUrls,
      'defaultProvider': ?defaultProvider,
      'enabled': enabled,
      'facebook': ?pulumi.Input.mapOptionalInputValue<WindowsFunctionAppSlotAuthSettingsFacebook, Map<String, dynamic>>(facebook, (value) => value.toMap()),
      'github': ?pulumi.Input.mapOptionalInputValue<WindowsFunctionAppSlotAuthSettingsGithub, Map<String, dynamic>>(github, (value) => value.toMap()),
      'google': ?pulumi.Input.mapOptionalInputValue<WindowsFunctionAppSlotAuthSettingsGoogle, Map<String, dynamic>>(google, (value) => value.toMap()),
      'issuer': ?issuer,
      'microsoft': ?pulumi.Input.mapOptionalInputValue<WindowsFunctionAppSlotAuthSettingsMicrosoft, Map<String, dynamic>>(microsoft, (value) => value.toMap()),
      'runtimeVersion': ?runtimeVersion,
      'tokenRefreshExtensionHours': ?tokenRefreshExtensionHours,
      'tokenStoreEnabled': ?tokenStoreEnabled,
      'twitter': ?pulumi.Input.mapOptionalInputValue<WindowsFunctionAppSlotAuthSettingsTwitter, Map<String, dynamic>>(twitter, (value) => value.toMap()),
      'unauthenticatedClientAction': ?unauthenticatedClientAction,
    };
  }

  factory WindowsFunctionAppSlotAuthSettings.fromMap(Map<String, dynamic> map) {
    return WindowsFunctionAppSlotAuthSettings(
      activeDirectory: map['activeDirectory'] == null ? null : (WindowsFunctionAppSlotAuthSettingsActiveDirectory.fromMap((map['activeDirectory'] as Map).cast<String, dynamic>())).input(),
      additionalLoginParameters: map['additionalLoginParameters'] == null ? null : ((map['additionalLoginParameters'] as Map).cast<String, String>()).input(),
      allowedExternalRedirectUrls: map['allowedExternalRedirectUrls'] == null ? null : ((map['allowedExternalRedirectUrls'] as List).cast<String>()).input(),
      defaultProvider: map['defaultProvider'] == null ? null : (map['defaultProvider'] as String).input(),
      enabled: (map['enabled'] as bool).input(),
      facebook: map['facebook'] == null ? null : (WindowsFunctionAppSlotAuthSettingsFacebook.fromMap((map['facebook'] as Map).cast<String, dynamic>())).input(),
      github: map['github'] == null ? null : (WindowsFunctionAppSlotAuthSettingsGithub.fromMap((map['github'] as Map).cast<String, dynamic>())).input(),
      google: map['google'] == null ? null : (WindowsFunctionAppSlotAuthSettingsGoogle.fromMap((map['google'] as Map).cast<String, dynamic>())).input(),
      issuer: map['issuer'] == null ? null : (map['issuer'] as String).input(),
      microsoft: map['microsoft'] == null ? null : (WindowsFunctionAppSlotAuthSettingsMicrosoft.fromMap((map['microsoft'] as Map).cast<String, dynamic>())).input(),
      runtimeVersion: map['runtimeVersion'] == null ? null : (map['runtimeVersion'] as String).input(),
      tokenRefreshExtensionHours: map['tokenRefreshExtensionHours'] == null ? null : (map['tokenRefreshExtensionHours'] as double).input(),
      tokenStoreEnabled: map['tokenStoreEnabled'] == null ? null : (map['tokenStoreEnabled'] as bool).input(),
      twitter: map['twitter'] == null ? null : (WindowsFunctionAppSlotAuthSettingsTwitter.fromMap((map['twitter'] as Map).cast<String, dynamic>())).input(),
      unauthenticatedClientAction: map['unauthenticatedClientAction'] == null ? null : (map['unauthenticatedClientAction'] as String).input(),
    );
  }
}

