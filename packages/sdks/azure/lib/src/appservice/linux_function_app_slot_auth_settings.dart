// ignore_for_file: unused_element, unnecessary_cast

import 'linux_function_app_slot_auth_settings_active_directory.dart';
import 'linux_function_app_slot_auth_settings_facebook.dart';
import 'linux_function_app_slot_auth_settings_github.dart';
import 'linux_function_app_slot_auth_settings_google.dart';
import 'linux_function_app_slot_auth_settings_microsoft.dart';
import 'linux_function_app_slot_auth_settings_twitter.dart';

class LinuxFunctionAppSlotAuthSettings {
  /// an `active_directory` block as detailed below.
  final LinuxFunctionAppSlotAuthSettingsActiveDirectory? activeDirectory;
  /// Specifies a map of login Parameters to send to the OpenID Connect authorization endpoint when a user logs in.
  final Map<String, String>? additionalLoginParameters;
  /// Specifies a list of External URLs that can be redirected to as part of logging in or logging out of the Windows Web App.
  final List<String>? allowedExternalRedirectUrls;
  /// The default authentication provider to use when multiple providers are configured. Possible values include: `AzureActiveDirectory`, `Facebook`, `Google`, `MicrosoftAccount`, `Twitter`, `Github`.
  ///
  /// > **Note:** This setting is only needed if multiple providers are configured, and the `unauthenticated_client_action` is set to "RedirectToLoginPage".
  final String? defaultProvider;
  /// Should the Authentication / Authorization feature be enabled?
  final bool enabled;
  /// a `facebook` block as detailed below.
  final LinuxFunctionAppSlotAuthSettingsFacebook? facebook;
  /// a `github` block as detailed below.
  final LinuxFunctionAppSlotAuthSettingsGithub? github;
  /// a `google` block as detailed below.
  final LinuxFunctionAppSlotAuthSettingsGoogle? google;
  /// The OpenID Connect Issuer URI that represents the entity which issues access tokens.
  ///
  /// > **Note:** When using Azure Active Directory, this value is the URI of the directory tenant, e.g. <https://sts.windows.net/{tenant-guid}/>.
  final String? issuer;
  /// a `microsoft` block as detailed below.
  final LinuxFunctionAppSlotAuthSettingsMicrosoft? microsoft;
  /// The RuntimeVersion of the Authentication / Authorization feature in use.
  final String? runtimeVersion;
  /// The number of hours after session token expiration that a session token can be used to call the token refresh API. Defaults to `72` hours.
  final double? tokenRefreshExtensionHours;
  /// Should the Linux Web App durably store platform-specific security tokens that are obtained during login flows? Defaults to `false`.
  final bool? tokenStoreEnabled;
  /// a `twitter` block as detailed below.
  final LinuxFunctionAppSlotAuthSettingsTwitter? twitter;
  /// The action to take when an unauthenticated client attempts to access the app. Possible values include: `RedirectToLoginPage`, `AllowAnonymous`.
  final String? unauthenticatedClientAction;

  /// Creates a new [LinuxFunctionAppSlotAuthSettings].
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
  /// [tokenStoreEnabled] Should the Linux Web App durably store platform-specific security tokens that are obtained during login flows? Defaults to `false`.
  /// [twitter] a `twitter` block as detailed below.
  /// [unauthenticatedClientAction] The action to take when an unauthenticated client attempts to access the app. Possible values include: `RedirectToLoginPage`, `AllowAnonymous`.
  LinuxFunctionAppSlotAuthSettings({
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
      'activeDirectory': ?activeDirectory == null ? null : activeDirectory!.toMap(),
      'additionalLoginParameters': ?additionalLoginParameters,
      'allowedExternalRedirectUrls': ?allowedExternalRedirectUrls,
      'defaultProvider': ?defaultProvider,
      'enabled': enabled,
      'facebook': ?facebook == null ? null : facebook!.toMap(),
      'github': ?github == null ? null : github!.toMap(),
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

  factory LinuxFunctionAppSlotAuthSettings.fromMap(Map<String, dynamic> map) {
    return LinuxFunctionAppSlotAuthSettings(
      activeDirectory: map['activeDirectory'] == null ? null : LinuxFunctionAppSlotAuthSettingsActiveDirectory.fromMap((map['activeDirectory'] as Map).cast<String, dynamic>()),
      additionalLoginParameters: map['additionalLoginParameters'] == null ? null : (map['additionalLoginParameters'] as Map).cast<String, String>(),
      allowedExternalRedirectUrls: map['allowedExternalRedirectUrls'] == null ? null : (map['allowedExternalRedirectUrls'] as List).cast<String>(),
      defaultProvider: map['defaultProvider'] == null ? null : map['defaultProvider'] as String,
      enabled: map['enabled'] as bool,
      facebook: map['facebook'] == null ? null : LinuxFunctionAppSlotAuthSettingsFacebook.fromMap((map['facebook'] as Map).cast<String, dynamic>()),
      github: map['github'] == null ? null : LinuxFunctionAppSlotAuthSettingsGithub.fromMap((map['github'] as Map).cast<String, dynamic>()),
      google: map['google'] == null ? null : LinuxFunctionAppSlotAuthSettingsGoogle.fromMap((map['google'] as Map).cast<String, dynamic>()),
      issuer: map['issuer'] == null ? null : map['issuer'] as String,
      microsoft: map['microsoft'] == null ? null : LinuxFunctionAppSlotAuthSettingsMicrosoft.fromMap((map['microsoft'] as Map).cast<String, dynamic>()),
      runtimeVersion: map['runtimeVersion'] == null ? null : map['runtimeVersion'] as String,
      tokenRefreshExtensionHours: map['tokenRefreshExtensionHours'] == null ? null : map['tokenRefreshExtensionHours'] as double,
      tokenStoreEnabled: map['tokenStoreEnabled'] == null ? null : map['tokenStoreEnabled'] as bool,
      twitter: map['twitter'] == null ? null : LinuxFunctionAppSlotAuthSettingsTwitter.fromMap((map['twitter'] as Map).cast<String, dynamic>()),
      unauthenticatedClientAction: map['unauthenticatedClientAction'] == null ? null : map['unauthenticatedClientAction'] as String,
    );
  }
}

