// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_linux_web_app_auth_setting_active_directory.dart';
import 'get_linux_web_app_auth_setting_facebook.dart';
import 'get_linux_web_app_auth_setting_github.dart';
import 'get_linux_web_app_auth_setting_google.dart';
import 'get_linux_web_app_auth_setting_microsoft.dart';
import 'get_linux_web_app_auth_setting_twitter.dart';

class GetLinuxWebAppAuthSetting {
  /// A `active_directory` block as defined above.
  final pulumi.Input<List<GetLinuxWebAppAuthSettingActiveDirectory>> activeDirectories;
  /// A `additional_login_parameters` block as defined above.
  final pulumi.Input<Map<String, String>> additionalLoginParameters;
  /// External URLs that can be redirected to as part of logging in or logging out of the app.
  final pulumi.Input<List<String>> allowedExternalRedirectUrls;
  /// The Default Authentication Provider used when more than one Authentication Provider is configured and the `unauthenticated_action` is set to `RedirectToLoginPage`.
  final pulumi.Input<String> defaultProvider;
  /// Is the Backup enabled?
  final pulumi.Input<bool> enabled;
  /// A `facebook` block as defined below.
  final pulumi.Input<List<GetLinuxWebAppAuthSettingFacebook>> facebooks;
  /// A `github` block as defined below.
  final pulumi.Input<List<GetLinuxWebAppAuthSettingGithub>> githubs;
  /// A `google` block as defined below.
  final pulumi.Input<List<GetLinuxWebAppAuthSettingGoogle>> googles;
  /// The OpenID Connect Issuer URI that represents the entity which issues access tokens for this Linux Web App.
  final pulumi.Input<String> issuer;
  /// A `microsoft` block as defined below.
  final pulumi.Input<List<GetLinuxWebAppAuthSettingMicrosoft>> microsofts;
  /// The Runtime Version of the Authentication and Authorisation feature of this App.
  final pulumi.Input<String> runtimeVersion;
  /// The number of hours after session token expiration that a session token can be used to call the token refresh API.
  final pulumi.Input<double> tokenRefreshExtensionHours;
  /// Is the Token Store configuration Enabled.
  final pulumi.Input<bool> tokenStoreEnabled;
  /// A `twitter` block as defined below.
  final pulumi.Input<List<GetLinuxWebAppAuthSettingTwitter>> twitters;
  /// The action to take when an unauthenticated client attempts to access the app.
  final pulumi.Input<String> unauthenticatedClientAction;

  /// Creates a new [GetLinuxWebAppAuthSetting].
  /// [activeDirectories] A `active_directory` block as defined above.
  /// [additionalLoginParameters] A `additional_login_parameters` block as defined above.
  /// [allowedExternalRedirectUrls] External URLs that can be redirected to as part of logging in or logging out of the app.
  /// [defaultProvider] The Default Authentication Provider used when more than one Authentication Provider is configured and the `unauthenticated_action` is set to `RedirectToLoginPage`.
  /// [enabled] Is the Backup enabled?
  /// [facebooks] A `facebook` block as defined below.
  /// [githubs] A `github` block as defined below.
  /// [googles] A `google` block as defined below.
  /// [issuer] The OpenID Connect Issuer URI that represents the entity which issues access tokens for this Linux Web App.
  /// [microsofts] A `microsoft` block as defined below.
  /// [runtimeVersion] The Runtime Version of the Authentication and Authorisation feature of this App.
  /// [tokenRefreshExtensionHours] The number of hours after session token expiration that a session token can be used to call the token refresh API.
  /// [tokenStoreEnabled] Is the Token Store configuration Enabled.
  /// [twitters] A `twitter` block as defined below.
  /// [unauthenticatedClientAction] The action to take when an unauthenticated client attempts to access the app.
  const GetLinuxWebAppAuthSetting({
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
      'activeDirectories': pulumi.Input.mapInputValue<List<GetLinuxWebAppAuthSettingActiveDirectory>, List<Map<String, dynamic>>>(activeDirectories, (value) => pulumi.Input.encodeList<GetLinuxWebAppAuthSettingActiveDirectory, Map<String, dynamic>>(value, (value) => value.toMap())),
      'additionalLoginParameters': additionalLoginParameters,
      'allowedExternalRedirectUrls': allowedExternalRedirectUrls,
      'defaultProvider': defaultProvider,
      'enabled': enabled,
      'facebooks': pulumi.Input.mapInputValue<List<GetLinuxWebAppAuthSettingFacebook>, List<Map<String, dynamic>>>(facebooks, (value) => pulumi.Input.encodeList<GetLinuxWebAppAuthSettingFacebook, Map<String, dynamic>>(value, (value) => value.toMap())),
      'githubs': pulumi.Input.mapInputValue<List<GetLinuxWebAppAuthSettingGithub>, List<Map<String, dynamic>>>(githubs, (value) => pulumi.Input.encodeList<GetLinuxWebAppAuthSettingGithub, Map<String, dynamic>>(value, (value) => value.toMap())),
      'googles': pulumi.Input.mapInputValue<List<GetLinuxWebAppAuthSettingGoogle>, List<Map<String, dynamic>>>(googles, (value) => pulumi.Input.encodeList<GetLinuxWebAppAuthSettingGoogle, Map<String, dynamic>>(value, (value) => value.toMap())),
      'issuer': issuer,
      'microsofts': pulumi.Input.mapInputValue<List<GetLinuxWebAppAuthSettingMicrosoft>, List<Map<String, dynamic>>>(microsofts, (value) => pulumi.Input.encodeList<GetLinuxWebAppAuthSettingMicrosoft, Map<String, dynamic>>(value, (value) => value.toMap())),
      'runtimeVersion': runtimeVersion,
      'tokenRefreshExtensionHours': tokenRefreshExtensionHours,
      'tokenStoreEnabled': tokenStoreEnabled,
      'twitters': pulumi.Input.mapInputValue<List<GetLinuxWebAppAuthSettingTwitter>, List<Map<String, dynamic>>>(twitters, (value) => pulumi.Input.encodeList<GetLinuxWebAppAuthSettingTwitter, Map<String, dynamic>>(value, (value) => value.toMap())),
      'unauthenticatedClientAction': unauthenticatedClientAction,
    };
  }

  factory GetLinuxWebAppAuthSetting.fromMap(Map<String, dynamic> map) {
    return GetLinuxWebAppAuthSetting(
      activeDirectories: pulumi.Input.fromValue(pulumi.Input.decodeList<GetLinuxWebAppAuthSettingActiveDirectory>(map['activeDirectories']!, (value) => GetLinuxWebAppAuthSettingActiveDirectory.fromMap((value as Map).cast<String, dynamic>()))),
      additionalLoginParameters: pulumi.Input.fromValue((map['additionalLoginParameters'] as Map).cast<String, String>()),
      allowedExternalRedirectUrls: pulumi.Input.fromValue((map['allowedExternalRedirectUrls'] as List).cast<String>()),
      defaultProvider: pulumi.Input.fromValue(map['defaultProvider'] as String),
      enabled: pulumi.Input.fromValue(map['enabled'] as bool),
      facebooks: pulumi.Input.fromValue(pulumi.Input.decodeList<GetLinuxWebAppAuthSettingFacebook>(map['facebooks']!, (value) => GetLinuxWebAppAuthSettingFacebook.fromMap((value as Map).cast<String, dynamic>()))),
      githubs: pulumi.Input.fromValue(pulumi.Input.decodeList<GetLinuxWebAppAuthSettingGithub>(map['githubs']!, (value) => GetLinuxWebAppAuthSettingGithub.fromMap((value as Map).cast<String, dynamic>()))),
      googles: pulumi.Input.fromValue(pulumi.Input.decodeList<GetLinuxWebAppAuthSettingGoogle>(map['googles']!, (value) => GetLinuxWebAppAuthSettingGoogle.fromMap((value as Map).cast<String, dynamic>()))),
      issuer: pulumi.Input.fromValue(map['issuer'] as String),
      microsofts: pulumi.Input.fromValue(pulumi.Input.decodeList<GetLinuxWebAppAuthSettingMicrosoft>(map['microsofts']!, (value) => GetLinuxWebAppAuthSettingMicrosoft.fromMap((value as Map).cast<String, dynamic>()))),
      runtimeVersion: pulumi.Input.fromValue(map['runtimeVersion'] as String),
      tokenRefreshExtensionHours: pulumi.Input.fromValue(map['tokenRefreshExtensionHours'] as double),
      tokenStoreEnabled: pulumi.Input.fromValue(map['tokenStoreEnabled'] as bool),
      twitters: pulumi.Input.fromValue(pulumi.Input.decodeList<GetLinuxWebAppAuthSettingTwitter>(map['twitters']!, (value) => GetLinuxWebAppAuthSettingTwitter.fromMap((value as Map).cast<String, dynamic>()))),
      unauthenticatedClientAction: pulumi.Input.fromValue(map['unauthenticatedClientAction'] as String),
    );
  }
}

