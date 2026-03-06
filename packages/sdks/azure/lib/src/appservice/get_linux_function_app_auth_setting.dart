// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_linux_function_app_auth_setting_active_directory.dart';
import 'get_linux_function_app_auth_setting_facebook.dart';
import 'get_linux_function_app_auth_setting_github.dart';
import 'get_linux_function_app_auth_setting_google.dart';
import 'get_linux_function_app_auth_setting_microsoft.dart';
import 'get_linux_function_app_auth_setting_twitter.dart';

class GetLinuxFunctionAppAuthSetting {
  /// An `active_directory` block as defined above.
  final pulumi.Input<List<GetLinuxFunctionAppAuthSettingActiveDirectory>> activeDirectories;
  /// A map of login parameters sent to the OpenID Connect authorization endpoint when a user logs in.
  final pulumi.Input<Map<String, String>> additionalLoginParameters;
  /// External URLs that can be redirected to as part of logging in or logging out of the app.
  final pulumi.Input<List<String>> allowedExternalRedirectUrls;
  /// The Default Authentication Provider used when more than one Authentication Provider is configured and the `unauthenticated_action` is set to `RedirectToLoginPage`.
  final pulumi.Input<String> defaultProvider;
  /// Is this backup job enabled?
  final pulumi.Input<bool> enabled;
  /// A `facebook` block as defined below.
  final pulumi.Input<List<GetLinuxFunctionAppAuthSettingFacebook>> facebooks;
  /// A `github` block as defined below.
  final pulumi.Input<List<GetLinuxFunctionAppAuthSettingGithub>> githubs;
  /// A `google` block as defined below.
  final pulumi.Input<List<GetLinuxFunctionAppAuthSettingGoogle>> googles;
  /// The OpenID Connect Issuer URI that represents the entity which issues access tokens for this Linux Web App.
  final pulumi.Input<String> issuer;
  /// A `microsoft` block as defined below.
  final pulumi.Input<List<GetLinuxFunctionAppAuthSettingMicrosoft>> microsofts;
  /// The Runtime Version of the Authentication and Authorisation feature of this App.
  final pulumi.Input<String> runtimeVersion;
  /// The number of hours after session token expiration that a session token can be used to call the token refresh API.
  final pulumi.Input<double> tokenRefreshExtensionHours;
  /// Is the Token Store configuration Enabled.
  final pulumi.Input<bool> tokenStoreEnabled;
  /// A `twitter` block as defined below.
  final pulumi.Input<List<GetLinuxFunctionAppAuthSettingTwitter>> twitters;
  /// The action to taken when an unauthenticated client attempts to access the app.
  final pulumi.Input<String> unauthenticatedClientAction;

  /// Creates a new [GetLinuxFunctionAppAuthSetting].
  /// [activeDirectories] An `active_directory` block as defined above.
  /// [additionalLoginParameters] A map of login parameters sent to the OpenID Connect authorization endpoint when a user logs in.
  /// [allowedExternalRedirectUrls] External URLs that can be redirected to as part of logging in or logging out of the app.
  /// [defaultProvider] The Default Authentication Provider used when more than one Authentication Provider is configured and the `unauthenticated_action` is set to `RedirectToLoginPage`.
  /// [enabled] Is this backup job enabled?
  /// [facebooks] A `facebook` block as defined below.
  /// [githubs] A `github` block as defined below.
  /// [googles] A `google` block as defined below.
  /// [issuer] The OpenID Connect Issuer URI that represents the entity which issues access tokens for this Linux Web App.
  /// [microsofts] A `microsoft` block as defined below.
  /// [runtimeVersion] The Runtime Version of the Authentication and Authorisation feature of this App.
  /// [tokenRefreshExtensionHours] The number of hours after session token expiration that a session token can be used to call the token refresh API.
  /// [tokenStoreEnabled] Is the Token Store configuration Enabled.
  /// [twitters] A `twitter` block as defined below.
  /// [unauthenticatedClientAction] The action to taken when an unauthenticated client attempts to access the app.
  const GetLinuxFunctionAppAuthSetting({
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
      'activeDirectories': pulumi.Input.mapInputValue<List<GetLinuxFunctionAppAuthSettingActiveDirectory>, List<Map<String, dynamic>>>(activeDirectories, (value) => pulumi.Input.encodeList<GetLinuxFunctionAppAuthSettingActiveDirectory, Map<String, dynamic>>(value, (value) => value.toMap())),
      'additionalLoginParameters': additionalLoginParameters,
      'allowedExternalRedirectUrls': allowedExternalRedirectUrls,
      'defaultProvider': defaultProvider,
      'enabled': enabled,
      'facebooks': pulumi.Input.mapInputValue<List<GetLinuxFunctionAppAuthSettingFacebook>, List<Map<String, dynamic>>>(facebooks, (value) => pulumi.Input.encodeList<GetLinuxFunctionAppAuthSettingFacebook, Map<String, dynamic>>(value, (value) => value.toMap())),
      'githubs': pulumi.Input.mapInputValue<List<GetLinuxFunctionAppAuthSettingGithub>, List<Map<String, dynamic>>>(githubs, (value) => pulumi.Input.encodeList<GetLinuxFunctionAppAuthSettingGithub, Map<String, dynamic>>(value, (value) => value.toMap())),
      'googles': pulumi.Input.mapInputValue<List<GetLinuxFunctionAppAuthSettingGoogle>, List<Map<String, dynamic>>>(googles, (value) => pulumi.Input.encodeList<GetLinuxFunctionAppAuthSettingGoogle, Map<String, dynamic>>(value, (value) => value.toMap())),
      'issuer': issuer,
      'microsofts': pulumi.Input.mapInputValue<List<GetLinuxFunctionAppAuthSettingMicrosoft>, List<Map<String, dynamic>>>(microsofts, (value) => pulumi.Input.encodeList<GetLinuxFunctionAppAuthSettingMicrosoft, Map<String, dynamic>>(value, (value) => value.toMap())),
      'runtimeVersion': runtimeVersion,
      'tokenRefreshExtensionHours': tokenRefreshExtensionHours,
      'tokenStoreEnabled': tokenStoreEnabled,
      'twitters': pulumi.Input.mapInputValue<List<GetLinuxFunctionAppAuthSettingTwitter>, List<Map<String, dynamic>>>(twitters, (value) => pulumi.Input.encodeList<GetLinuxFunctionAppAuthSettingTwitter, Map<String, dynamic>>(value, (value) => value.toMap())),
      'unauthenticatedClientAction': unauthenticatedClientAction,
    };
  }

  factory GetLinuxFunctionAppAuthSetting.fromMap(Map<String, dynamic> map) {
    return GetLinuxFunctionAppAuthSetting(
      activeDirectories: pulumi.Input.fromValue(pulumi.Input.decodeList<GetLinuxFunctionAppAuthSettingActiveDirectory>(map['activeDirectories']!, (value) => GetLinuxFunctionAppAuthSettingActiveDirectory.fromMap((value as Map).cast<String, dynamic>()))),
      additionalLoginParameters: pulumi.Input.fromValue((map['additionalLoginParameters'] as Map).cast<String, String>()),
      allowedExternalRedirectUrls: pulumi.Input.fromValue((map['allowedExternalRedirectUrls'] as List).cast<String>()),
      defaultProvider: pulumi.Input.fromValue(map['defaultProvider'] as String),
      enabled: pulumi.Input.fromValue(map['enabled'] as bool),
      facebooks: pulumi.Input.fromValue(pulumi.Input.decodeList<GetLinuxFunctionAppAuthSettingFacebook>(map['facebooks']!, (value) => GetLinuxFunctionAppAuthSettingFacebook.fromMap((value as Map).cast<String, dynamic>()))),
      githubs: pulumi.Input.fromValue(pulumi.Input.decodeList<GetLinuxFunctionAppAuthSettingGithub>(map['githubs']!, (value) => GetLinuxFunctionAppAuthSettingGithub.fromMap((value as Map).cast<String, dynamic>()))),
      googles: pulumi.Input.fromValue(pulumi.Input.decodeList<GetLinuxFunctionAppAuthSettingGoogle>(map['googles']!, (value) => GetLinuxFunctionAppAuthSettingGoogle.fromMap((value as Map).cast<String, dynamic>()))),
      issuer: pulumi.Input.fromValue(map['issuer'] as String),
      microsofts: pulumi.Input.fromValue(pulumi.Input.decodeList<GetLinuxFunctionAppAuthSettingMicrosoft>(map['microsofts']!, (value) => GetLinuxFunctionAppAuthSettingMicrosoft.fromMap((value as Map).cast<String, dynamic>()))),
      runtimeVersion: pulumi.Input.fromValue(map['runtimeVersion'] as String),
      tokenRefreshExtensionHours: pulumi.Input.fromValue(map['tokenRefreshExtensionHours'] as double),
      tokenStoreEnabled: pulumi.Input.fromValue(map['tokenStoreEnabled'] as bool),
      twitters: pulumi.Input.fromValue(pulumi.Input.decodeList<GetLinuxFunctionAppAuthSettingTwitter>(map['twitters']!, (value) => GetLinuxFunctionAppAuthSettingTwitter.fromMap((value as Map).cast<String, dynamic>()))),
      unauthenticatedClientAction: pulumi.Input.fromValue(map['unauthenticatedClientAction'] as String),
    );
  }
}

