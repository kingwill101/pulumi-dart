// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_windows_web_app_auth_setting_active_directory.dart';
import 'get_windows_web_app_auth_setting_facebook.dart';
import 'get_windows_web_app_auth_setting_github.dart';
import 'get_windows_web_app_auth_setting_google.dart';
import 'get_windows_web_app_auth_setting_microsoft.dart';
import 'get_windows_web_app_auth_setting_twitter.dart';

class GetWindowsWebAppAuthSetting {
  /// A `activeDirectory` block as defined above.
  final pulumi.Input<List<GetWindowsWebAppAuthSettingActiveDirectory>> activeDirectories;
  /// A `additionalLoginParameters` block as defined above.
  final pulumi.Input<Map<String, String>> additionalLoginParameters;
  /// External URLs that can be redirected to as part of logging in or logging out of the app.
  final pulumi.Input<List<String>> allowedExternalRedirectUrls;
  /// The Default Authentication Provider used when more than one Authentication Provider is configured and the `unauthenticatedAction` is set to `RedirectToLoginPage`.
  final pulumi.Input<String> defaultProvider;
  /// Is the Backup enabled?
  final pulumi.Input<bool> enabled;
  /// A `facebook` block as defined below.
  final pulumi.Input<List<GetWindowsWebAppAuthSettingFacebook>> facebooks;
  /// A `github` block as defined below.
  final pulumi.Input<List<GetWindowsWebAppAuthSettingGithub>> githubs;
  /// A `google` block as defined below.
  final pulumi.Input<List<GetWindowsWebAppAuthSettingGoogle>> googles;
  /// The OpenID Connect Issuer URI that represents the entity which issues access tokens for this Windows Web App.
  final pulumi.Input<String> issuer;
  /// A `microsoft` block as defined below.
  final pulumi.Input<List<GetWindowsWebAppAuthSettingMicrosoft>> microsofts;
  /// The Runtime Version of the Authentication and Authorisation feature of this App.
  final pulumi.Input<String> runtimeVersion;
  /// The number of hours after session token expiration that a session token can be used to call the token refresh API.
  final pulumi.Input<double> tokenRefreshExtensionHours;
  /// Is the Token Store configuration Enabled.
  final pulumi.Input<bool> tokenStoreEnabled;
  /// A `twitter` block as defined below.
  final pulumi.Input<List<GetWindowsWebAppAuthSettingTwitter>> twitters;
  /// The action to take when an unauthenticated client attempts to access the app.
  final pulumi.Input<String> unauthenticatedClientAction;

  /// Creates a new [GetWindowsWebAppAuthSetting].
  /// [activeDirectories] A `activeDirectory` block as defined above.
  /// [additionalLoginParameters] A `additionalLoginParameters` block as defined above.
  /// [allowedExternalRedirectUrls] External URLs that can be redirected to as part of logging in or logging out of the app.
  /// [defaultProvider] The Default Authentication Provider used when more than one Authentication Provider is configured and the `unauthenticatedAction` is set to `RedirectToLoginPage`.
  /// [enabled] Is the Backup enabled?
  /// [facebooks] A `facebook` block as defined below.
  /// [githubs] A `github` block as defined below.
  /// [googles] A `google` block as defined below.
  /// [issuer] The OpenID Connect Issuer URI that represents the entity which issues access tokens for this Windows Web App.
  /// [microsofts] A `microsoft` block as defined below.
  /// [runtimeVersion] The Runtime Version of the Authentication and Authorisation feature of this App.
  /// [tokenRefreshExtensionHours] The number of hours after session token expiration that a session token can be used to call the token refresh API.
  /// [tokenStoreEnabled] Is the Token Store configuration Enabled.
  /// [twitters] A `twitter` block as defined below.
  /// [unauthenticatedClientAction] The action to take when an unauthenticated client attempts to access the app.
  const GetWindowsWebAppAuthSetting({
    required this.activeDirectories,
    required this.additionalLoginParameters,
    required this.allowedExternalRedirectUrls,
    required this.defaultProvider,
    required this.enabled,
    required this.facebooks,
    required this.githubs,
    required this.googles,
    required this.issuer,
    required this.microsofts,
    required this.runtimeVersion,
    required this.tokenRefreshExtensionHours,
    required this.tokenStoreEnabled,
    required this.twitters,
    required this.unauthenticatedClientAction,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'activeDirectories': pulumi.Input.mapInputValue<List<GetWindowsWebAppAuthSettingActiveDirectory>, List<Map<String, dynamic>>>(activeDirectories, (value) => pulumi.Input.encodeList<GetWindowsWebAppAuthSettingActiveDirectory, Map<String, dynamic>>(value, (value) => value.toMap())),
      'additionalLoginParameters': additionalLoginParameters,
      'allowedExternalRedirectUrls': allowedExternalRedirectUrls,
      'defaultProvider': defaultProvider,
      'enabled': enabled,
      'facebooks': pulumi.Input.mapInputValue<List<GetWindowsWebAppAuthSettingFacebook>, List<Map<String, dynamic>>>(facebooks, (value) => pulumi.Input.encodeList<GetWindowsWebAppAuthSettingFacebook, Map<String, dynamic>>(value, (value) => value.toMap())),
      'githubs': pulumi.Input.mapInputValue<List<GetWindowsWebAppAuthSettingGithub>, List<Map<String, dynamic>>>(githubs, (value) => pulumi.Input.encodeList<GetWindowsWebAppAuthSettingGithub, Map<String, dynamic>>(value, (value) => value.toMap())),
      'googles': pulumi.Input.mapInputValue<List<GetWindowsWebAppAuthSettingGoogle>, List<Map<String, dynamic>>>(googles, (value) => pulumi.Input.encodeList<GetWindowsWebAppAuthSettingGoogle, Map<String, dynamic>>(value, (value) => value.toMap())),
      'issuer': issuer,
      'microsofts': pulumi.Input.mapInputValue<List<GetWindowsWebAppAuthSettingMicrosoft>, List<Map<String, dynamic>>>(microsofts, (value) => pulumi.Input.encodeList<GetWindowsWebAppAuthSettingMicrosoft, Map<String, dynamic>>(value, (value) => value.toMap())),
      'runtimeVersion': runtimeVersion,
      'tokenRefreshExtensionHours': tokenRefreshExtensionHours,
      'tokenStoreEnabled': tokenStoreEnabled,
      'twitters': pulumi.Input.mapInputValue<List<GetWindowsWebAppAuthSettingTwitter>, List<Map<String, dynamic>>>(twitters, (value) => pulumi.Input.encodeList<GetWindowsWebAppAuthSettingTwitter, Map<String, dynamic>>(value, (value) => value.toMap())),
      'unauthenticatedClientAction': unauthenticatedClientAction,
    };
  }

  factory GetWindowsWebAppAuthSetting.fromMap(Map<String, dynamic> map) {
    return GetWindowsWebAppAuthSetting(
      activeDirectories: pulumi.Input.fromValue(pulumi.Input.decodeList<GetWindowsWebAppAuthSettingActiveDirectory>(map['activeDirectories']!, (value) => GetWindowsWebAppAuthSettingActiveDirectory.fromMap((value as Map).cast<String, dynamic>()))),
      additionalLoginParameters: pulumi.Input.fromValue((map['additionalLoginParameters'] as Map).cast<String, String>()),
      allowedExternalRedirectUrls: pulumi.Input.fromValue((map['allowedExternalRedirectUrls'] as List).cast<String>()),
      defaultProvider: pulumi.Input.fromValue(map['defaultProvider'] as String),
      enabled: pulumi.Input.fromValue(map['enabled'] as bool),
      facebooks: pulumi.Input.fromValue(pulumi.Input.decodeList<GetWindowsWebAppAuthSettingFacebook>(map['facebooks']!, (value) => GetWindowsWebAppAuthSettingFacebook.fromMap((value as Map).cast<String, dynamic>()))),
      githubs: pulumi.Input.fromValue(pulumi.Input.decodeList<GetWindowsWebAppAuthSettingGithub>(map['githubs']!, (value) => GetWindowsWebAppAuthSettingGithub.fromMap((value as Map).cast<String, dynamic>()))),
      googles: pulumi.Input.fromValue(pulumi.Input.decodeList<GetWindowsWebAppAuthSettingGoogle>(map['googles']!, (value) => GetWindowsWebAppAuthSettingGoogle.fromMap((value as Map).cast<String, dynamic>()))),
      issuer: pulumi.Input.fromValue(map['issuer'] as String),
      microsofts: pulumi.Input.fromValue(pulumi.Input.decodeList<GetWindowsWebAppAuthSettingMicrosoft>(map['microsofts']!, (value) => GetWindowsWebAppAuthSettingMicrosoft.fromMap((value as Map).cast<String, dynamic>()))),
      runtimeVersion: pulumi.Input.fromValue(map['runtimeVersion'] as String),
      tokenRefreshExtensionHours: pulumi.Input.fromValue(map['tokenRefreshExtensionHours'] as double),
      tokenStoreEnabled: pulumi.Input.fromValue(map['tokenStoreEnabled'] as bool),
      twitters: pulumi.Input.fromValue(pulumi.Input.decodeList<GetWindowsWebAppAuthSettingTwitter>(map['twitters']!, (value) => GetWindowsWebAppAuthSettingTwitter.fromMap((value as Map).cast<String, dynamic>()))),
      unauthenticatedClientAction: pulumi.Input.fromValue(map['unauthenticatedClientAction'] as String),
    );
  }
}
