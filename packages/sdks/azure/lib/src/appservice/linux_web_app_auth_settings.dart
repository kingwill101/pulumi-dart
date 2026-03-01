// ignore_for_file: unused_element, unnecessary_cast

import 'linux_web_app_auth_settings_active_directory.dart';
import 'linux_web_app_auth_settings_facebook.dart';
import 'linux_web_app_auth_settings_github.dart';
import 'linux_web_app_auth_settings_google.dart';
import 'linux_web_app_auth_settings_microsoft.dart';
import 'linux_web_app_auth_settings_twitter.dart';

class LinuxWebAppAuthSettings {
  /// An `active_directory` block as defined above.
  final LinuxWebAppAuthSettingsActiveDirectory? activeDirectory;
  /// Specifies a map of login Parameters to send to the OpenID Connect authorization endpoint when a user logs in.
  final Map<String, String>? additionalLoginParameters;
  /// Specifies a list of External URLs that can be redirected to as part of logging in or logging out of the Linux Web App.
  final List<String>? allowedExternalRedirectUrls;
  /// The default authentication provider to use when multiple providers are configured. Possible values include: `BuiltInAuthenticationProviderAzureActiveDirectory`, `BuiltInAuthenticationProviderFacebook`, `BuiltInAuthenticationProviderGoogle`, `BuiltInAuthenticationProviderMicrosoftAccount`, `BuiltInAuthenticationProviderTwitter`, `BuiltInAuthenticationProviderGithub`
  ///
  /// > **Note:** This setting is only needed if multiple providers are configured, and the `unauthenticated_client_action` is set to "RedirectToLoginPage".
  final String? defaultProvider;
  /// Should the Authentication / Authorization feature be enabled for the Linux Web App?
  final bool enabled;
  /// A `facebook` block as defined below.
  final LinuxWebAppAuthSettingsFacebook? facebook;
  /// A `github` block as defined below.
  final LinuxWebAppAuthSettingsGithub? github;
  /// A `google` block as defined below.
  final LinuxWebAppAuthSettingsGoogle? google;
  /// The OpenID Connect Issuer URI that represents the entity that issues access tokens for this Linux Web App.
  ///
  /// > **Note:** When using Azure Active Directory, this value is the URI of the directory tenant, e.g. <https://sts.windows.net/{tenant-guid}/>.
  final String? issuer;
  /// A `microsoft` block as defined below.
  final LinuxWebAppAuthSettingsMicrosoft? microsoft;
  /// The RuntimeVersion of the Authentication / Authorization feature in use for the Linux Web App.
  final String? runtimeVersion;
  /// The number of hours after session token expiration that a session token can be used to call the token refresh API. Defaults to `72` hours.
  final double? tokenRefreshExtensionHours;
  /// Should the Linux Web App durably store platform-specific security tokens that are obtained during login flows? Defaults to `false`.
  final bool? tokenStoreEnabled;
  /// A `twitter` block as defined below.
  final LinuxWebAppAuthSettingsTwitter? twitter;
  /// The action to take when an unauthenticated client attempts to access the app. Possible values include: `RedirectToLoginPage`, `AllowAnonymous`.
  final String? unauthenticatedClientAction;

  /// Creates a new [LinuxWebAppAuthSettings].
  /// [activeDirectory] An `active_directory` block as defined above.
  /// [additionalLoginParameters] Specifies a map of login Parameters to send to the OpenID Connect authorization endpoint when a user logs in.
  /// [allowedExternalRedirectUrls] Specifies a list of External URLs that can be redirected to as part of logging in or logging out of the Linux Web App.
  /// [defaultProvider] The default authentication provider to use when multiple providers are configured. Possible values include: `BuiltInAuthenticationProviderAzureActiveDirectory`, `BuiltInAuthenticationProviderFacebook`, `BuiltInAuthenticationProviderGoogle`, `BuiltInAuthenticationProviderMicrosoftAccount`, `BuiltInAuthenticationProviderTwitter`, `BuiltInAuthenticationProviderGithub`
  /// [enabled] Should the Authentication / Authorization feature be enabled for the Linux Web App?
  /// [facebook] A `facebook` block as defined below.
  /// [github] A `github` block as defined below.
  /// [google] A `google` block as defined below.
  /// [issuer] The OpenID Connect Issuer URI that represents the entity that issues access tokens for this Linux Web App.
  /// [microsoft] A `microsoft` block as defined below.
  /// [runtimeVersion] The RuntimeVersion of the Authentication / Authorization feature in use for the Linux Web App.
  /// [tokenRefreshExtensionHours] The number of hours after session token expiration that a session token can be used to call the token refresh API. Defaults to `72` hours.
  /// [tokenStoreEnabled] Should the Linux Web App durably store platform-specific security tokens that are obtained during login flows? Defaults to `false`.
  /// [twitter] A `twitter` block as defined below.
  /// [unauthenticatedClientAction] The action to take when an unauthenticated client attempts to access the app. Possible values include: `RedirectToLoginPage`, `AllowAnonymous`.
  LinuxWebAppAuthSettings({
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

  factory LinuxWebAppAuthSettings.fromMap(Map<String, dynamic> map) {
    return LinuxWebAppAuthSettings(
      activeDirectory: map['activeDirectory'] == null ? null : LinuxWebAppAuthSettingsActiveDirectory.fromMap((map['activeDirectory'] as Map).cast<String, dynamic>()),
      additionalLoginParameters: map['additionalLoginParameters'] == null ? null : (map['additionalLoginParameters'] as Map).cast<String, String>(),
      allowedExternalRedirectUrls: map['allowedExternalRedirectUrls'] == null ? null : (map['allowedExternalRedirectUrls'] as List).cast<String>(),
      defaultProvider: map['defaultProvider'] == null ? null : map['defaultProvider'] as String,
      enabled: map['enabled'] as bool,
      facebook: map['facebook'] == null ? null : LinuxWebAppAuthSettingsFacebook.fromMap((map['facebook'] as Map).cast<String, dynamic>()),
      github: map['github'] == null ? null : LinuxWebAppAuthSettingsGithub.fromMap((map['github'] as Map).cast<String, dynamic>()),
      google: map['google'] == null ? null : LinuxWebAppAuthSettingsGoogle.fromMap((map['google'] as Map).cast<String, dynamic>()),
      issuer: map['issuer'] == null ? null : map['issuer'] as String,
      microsoft: map['microsoft'] == null ? null : LinuxWebAppAuthSettingsMicrosoft.fromMap((map['microsoft'] as Map).cast<String, dynamic>()),
      runtimeVersion: map['runtimeVersion'] == null ? null : map['runtimeVersion'] as String,
      tokenRefreshExtensionHours: map['tokenRefreshExtensionHours'] == null ? null : map['tokenRefreshExtensionHours'] as double,
      tokenStoreEnabled: map['tokenStoreEnabled'] == null ? null : map['tokenStoreEnabled'] as bool,
      twitter: map['twitter'] == null ? null : LinuxWebAppAuthSettingsTwitter.fromMap((map['twitter'] as Map).cast<String, dynamic>()),
      unauthenticatedClientAction: map['unauthenticatedClientAction'] == null ? null : map['unauthenticatedClientAction'] as String,
    );
  }
}

