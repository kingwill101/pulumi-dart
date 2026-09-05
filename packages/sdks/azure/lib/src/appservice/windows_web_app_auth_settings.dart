// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'windows_web_app_auth_settings_active_directory.dart';
import 'windows_web_app_auth_settings_facebook.dart';
import 'windows_web_app_auth_settings_github.dart';
import 'windows_web_app_auth_settings_google.dart';
import 'windows_web_app_auth_settings_microsoft.dart';
import 'windows_web_app_auth_settings_twitter.dart';

class WindowsWebAppAuthSettings {
  /// An `activeDirectory` block as defined above.
  final pulumi.Input<WindowsWebAppAuthSettingsActiveDirectory?>? activeDirectory;
  /// Specifies a map of login Parameters to send to the OpenID Connect authorization endpoint when a user logs in.
  final pulumi.Input<Map<String, String>?>? additionalLoginParameters;
  /// Specifies a list of External URLs that can be redirected to as part of logging in or logging out of the Windows Web App.
  final pulumi.Input<List<String>?>? allowedExternalRedirectUrls;
  /// The default authentication provider to use when multiple providers are configured. Possible values include: `AzureActiveDirectory`, `Facebook`, `Google`, `MicrosoftAccount`, `Twitter`, `Github`
  ///
  /// &gt; **Note:** This setting is only needed if multiple providers are configured, and the `unauthenticatedClientAction` is set to "RedirectToLoginPage".
  final pulumi.Input<String?>? defaultProvider;
  /// Should the Authentication / Authorization feature is enabled for the Windows Web App be enabled?
  final pulumi.Input<bool> enabled;
  /// A `facebook` block as defined below.
  final pulumi.Input<WindowsWebAppAuthSettingsFacebook?>? facebook;
  /// A `github` block as defined below.
  final pulumi.Input<WindowsWebAppAuthSettingsGithub?>? github;
  /// A `google` block as defined below.
  final pulumi.Input<WindowsWebAppAuthSettingsGoogle?>? google;
  /// The OpenID Connect Issuer URI that represents the entity which issues access tokens for this Windows Web App.
  ///
  /// &gt; **Note:** When using Azure Active Directory, this value is the URI of the directory tenant, e.g. &lt;https://sts.windows.net/{tenant-guid}/&gt;.
  final pulumi.Input<String?>? issuer;
  /// A `microsoft` block as defined below.
  final pulumi.Input<WindowsWebAppAuthSettingsMicrosoft?>? microsoft;
  /// The RuntimeVersion of the Authentication / Authorization feature in use for the Windows Web App.
  final pulumi.Input<String?>? runtimeVersion;
  /// The number of hours after session token expiration that a session token can be used to call the token refresh API. Defaults to `72` hours.
  final pulumi.Input<double?>? tokenRefreshExtensionHours;
  /// Should the Windows Web App durably store platform-specific security tokens that are obtained during login flows? Defaults to `false`.
  final pulumi.Input<bool?>? tokenStoreEnabled;
  /// A `twitter` block as defined below.
  final pulumi.Input<WindowsWebAppAuthSettingsTwitter?>? twitter;
  /// The action to take when an unauthenticated client attempts to access the app. Possible values include: `RedirectToLoginPage`, `AllowAnonymous`.
  final pulumi.Input<String?>? unauthenticatedClientAction;

  /// Creates a new [WindowsWebAppAuthSettings].
  /// [activeDirectory] An `activeDirectory` block as defined above.
  /// [additionalLoginParameters] Specifies a map of login Parameters to send to the OpenID Connect authorization endpoint when a user logs in.
  /// [allowedExternalRedirectUrls] Specifies a list of External URLs that can be redirected to as part of logging in or logging out of the Windows Web App.
  /// [defaultProvider] The default authentication provider to use when multiple providers are configured. Possible values include: `AzureActiveDirectory`, `Facebook`, `Google`, `MicrosoftAccount`, `Twitter`, `Github`
  /// [enabled] Should the Authentication / Authorization feature is enabled for the Windows Web App be enabled?
  /// [facebook] A `facebook` block as defined below.
  /// [github] A `github` block as defined below.
  /// [google] A `google` block as defined below.
  /// [issuer] The OpenID Connect Issuer URI that represents the entity which issues access tokens for this Windows Web App.
  /// [microsoft] A `microsoft` block as defined below.
  /// [runtimeVersion] The RuntimeVersion of the Authentication / Authorization feature in use for the Windows Web App.
  /// [tokenRefreshExtensionHours] The number of hours after session token expiration that a session token can be used to call the token refresh API. Defaults to `72` hours.
  /// [tokenStoreEnabled] Should the Windows Web App durably store platform-specific security tokens that are obtained during login flows? Defaults to `false`.
  /// [twitter] A `twitter` block as defined below.
  /// [unauthenticatedClientAction] The action to take when an unauthenticated client attempts to access the app. Possible values include: `RedirectToLoginPage`, `AllowAnonymous`.
  const WindowsWebAppAuthSettings({
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
      'activeDirectory': ?pulumi.Input.mapOptionalInputValue<WindowsWebAppAuthSettingsActiveDirectory, Map<String, dynamic>>(activeDirectory, (value) => value.toMap()),
      'additionalLoginParameters': ?additionalLoginParameters,
      'allowedExternalRedirectUrls': ?allowedExternalRedirectUrls,
      'defaultProvider': ?defaultProvider,
      'enabled': enabled,
      'facebook': ?pulumi.Input.mapOptionalInputValue<WindowsWebAppAuthSettingsFacebook, Map<String, dynamic>>(facebook, (value) => value.toMap()),
      'github': ?pulumi.Input.mapOptionalInputValue<WindowsWebAppAuthSettingsGithub, Map<String, dynamic>>(github, (value) => value.toMap()),
      'google': ?pulumi.Input.mapOptionalInputValue<WindowsWebAppAuthSettingsGoogle, Map<String, dynamic>>(google, (value) => value.toMap()),
      'issuer': ?issuer,
      'microsoft': ?pulumi.Input.mapOptionalInputValue<WindowsWebAppAuthSettingsMicrosoft, Map<String, dynamic>>(microsoft, (value) => value.toMap()),
      'runtimeVersion': ?runtimeVersion,
      'tokenRefreshExtensionHours': ?tokenRefreshExtensionHours,
      'tokenStoreEnabled': ?tokenStoreEnabled,
      'twitter': ?pulumi.Input.mapOptionalInputValue<WindowsWebAppAuthSettingsTwitter, Map<String, dynamic>>(twitter, (value) => value.toMap()),
      'unauthenticatedClientAction': ?unauthenticatedClientAction,
    };
  }

  factory WindowsWebAppAuthSettings.fromMap(Map<String, dynamic> map) {
    return WindowsWebAppAuthSettings(
      activeDirectory: (() { final guardedValue = map['activeDirectory']; if (guardedValue == null) return null; return pulumi.Input.fromValue(WindowsWebAppAuthSettingsActiveDirectory.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      additionalLoginParameters: (() { final guardedValue = map['additionalLoginParameters']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      allowedExternalRedirectUrls: (() { final guardedValue = map['allowedExternalRedirectUrls']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      defaultProvider: (() { final guardedValue = map['defaultProvider']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      enabled: pulumi.Input.fromValue(map['enabled'] as bool),
      facebook: (() { final guardedValue = map['facebook']; if (guardedValue == null) return null; return pulumi.Input.fromValue(WindowsWebAppAuthSettingsFacebook.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      github: (() { final guardedValue = map['github']; if (guardedValue == null) return null; return pulumi.Input.fromValue(WindowsWebAppAuthSettingsGithub.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      google: (() { final guardedValue = map['google']; if (guardedValue == null) return null; return pulumi.Input.fromValue(WindowsWebAppAuthSettingsGoogle.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      issuer: (() { final guardedValue = map['issuer']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      microsoft: (() { final guardedValue = map['microsoft']; if (guardedValue == null) return null; return pulumi.Input.fromValue(WindowsWebAppAuthSettingsMicrosoft.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      runtimeVersion: (() { final guardedValue = map['runtimeVersion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tokenRefreshExtensionHours: (() { final guardedValue = map['tokenRefreshExtensionHours']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toDouble()); })(),
      tokenStoreEnabled: (() { final guardedValue = map['tokenStoreEnabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      twitter: (() { final guardedValue = map['twitter']; if (guardedValue == null) return null; return pulumi.Input.fromValue(WindowsWebAppAuthSettingsTwitter.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      unauthenticatedClientAction: (() { final guardedValue = map['unauthenticatedClientAction']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
