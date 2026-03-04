// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_windows_function_app_auth_setting_active_directory.dart';
import 'get_windows_function_app_auth_setting_facebook.dart';
import 'get_windows_function_app_auth_setting_github.dart';
import 'get_windows_function_app_auth_setting_google.dart';
import 'get_windows_function_app_auth_setting_microsoft.dart';
import 'get_windows_function_app_auth_setting_twitter.dart';

class GetWindowsFunctionAppAuthSetting {
  /// A `active_directory` block as defined above.
  final pulumi.Input<List<GetWindowsFunctionAppAuthSettingActiveDirectory>>
  activeDirectories;

  /// A map of Login Parameters to send to the OpenID Connect authorization endpoint when a user logs in.
  final pulumi.Input<Map<String, String>> additionalLoginParameters;

  /// External URLs that can be redirected to as part of logging in or logging out of the app.
  final pulumi.Input<List<String>> allowedExternalRedirectUrls;

  /// The Default Authentication Provider used when more than one Authentication Provider is configured and the `unauthenticated_action` is set to `RedirectToLoginPage`.
  final pulumi.Input<String> defaultProvider;

  /// Is the Backup Job enabled?
  final pulumi.Input<bool> enabled;

  /// A `facebook` block as defined below.
  final pulumi.Input<List<GetWindowsFunctionAppAuthSettingFacebook>> facebooks;

  /// A `github` block as defined below.
  final pulumi.Input<List<GetWindowsFunctionAppAuthSettingGithub>> githubs;

  /// A `google` block as defined below.
  final pulumi.Input<List<GetWindowsFunctionAppAuthSettingGoogle>> googles;

  /// The OpenID Connect Issuer URI that represents the entity which issues access tokens for this Windows Function App.
  final pulumi.Input<String> issuer;

  /// A `microsoft` block as defined below.
  final pulumi.Input<List<GetWindowsFunctionAppAuthSettingMicrosoft>>
  microsofts;

  /// The Runtime Version of the Authentication and Authorisation feature of this App.
  final pulumi.Input<String> runtimeVersion;

  /// The number of hours after session token expiration that a session token can be used to call the token refresh API.
  final pulumi.Input<double> tokenRefreshExtensionHours;

  /// Is the Token Store configuration Enabled.
  final pulumi.Input<bool> tokenStoreEnabled;

  /// A `twitter` block as defined below.
  final pulumi.Input<List<GetWindowsFunctionAppAuthSettingTwitter>> twitters;

  /// The action to take when an unauthenticated client attempts to access the app.
  final pulumi.Input<String> unauthenticatedClientAction;

  /// Creates a new [GetWindowsFunctionAppAuthSetting].
  /// [activeDirectories] A `active_directory` block as defined above.
  /// [additionalLoginParameters] A map of Login Parameters to send to the OpenID Connect authorization endpoint when a user logs in.
  /// [allowedExternalRedirectUrls] External URLs that can be redirected to as part of logging in or logging out of the app.
  /// [defaultProvider] The Default Authentication Provider used when more than one Authentication Provider is configured and the `unauthenticated_action` is set to `RedirectToLoginPage`.
  /// [enabled] Is the Backup Job enabled?
  /// [facebooks] A `facebook` block as defined below.
  /// [githubs] A `github` block as defined below.
  /// [googles] A `google` block as defined below.
  /// [issuer] The OpenID Connect Issuer URI that represents the entity which issues access tokens for this Windows Function App.
  /// [microsofts] A `microsoft` block as defined below.
  /// [runtimeVersion] The Runtime Version of the Authentication and Authorisation feature of this App.
  /// [tokenRefreshExtensionHours] The number of hours after session token expiration that a session token can be used to call the token refresh API.
  /// [tokenStoreEnabled] Is the Token Store configuration Enabled.
  /// [twitters] A `twitter` block as defined below.
  /// [unauthenticatedClientAction] The action to take when an unauthenticated client attempts to access the app.
  GetWindowsFunctionAppAuthSetting({
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
      'activeDirectories':
          pulumi.Input.mapInputValue<
            List<GetWindowsFunctionAppAuthSettingActiveDirectory>,
            List<Map<String, dynamic>>
          >(
            activeDirectories,
            (value) =>
                pulumi.Input.encodeList<
                  GetWindowsFunctionAppAuthSettingActiveDirectory,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'additionalLoginParameters': additionalLoginParameters,
      'allowedExternalRedirectUrls': allowedExternalRedirectUrls,
      'defaultProvider': defaultProvider,
      'enabled': enabled,
      'facebooks':
          pulumi.Input.mapInputValue<
            List<GetWindowsFunctionAppAuthSettingFacebook>,
            List<Map<String, dynamic>>
          >(
            facebooks,
            (value) =>
                pulumi.Input.encodeList<
                  GetWindowsFunctionAppAuthSettingFacebook,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'githubs':
          pulumi.Input.mapInputValue<
            List<GetWindowsFunctionAppAuthSettingGithub>,
            List<Map<String, dynamic>>
          >(
            githubs,
            (value) =>
                pulumi.Input.encodeList<
                  GetWindowsFunctionAppAuthSettingGithub,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'googles':
          pulumi.Input.mapInputValue<
            List<GetWindowsFunctionAppAuthSettingGoogle>,
            List<Map<String, dynamic>>
          >(
            googles,
            (value) =>
                pulumi.Input.encodeList<
                  GetWindowsFunctionAppAuthSettingGoogle,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'issuer': issuer,
      'microsofts':
          pulumi.Input.mapInputValue<
            List<GetWindowsFunctionAppAuthSettingMicrosoft>,
            List<Map<String, dynamic>>
          >(
            microsofts,
            (value) =>
                pulumi.Input.encodeList<
                  GetWindowsFunctionAppAuthSettingMicrosoft,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'runtimeVersion': runtimeVersion,
      'tokenRefreshExtensionHours': tokenRefreshExtensionHours,
      'tokenStoreEnabled': tokenStoreEnabled,
      'twitters':
          pulumi.Input.mapInputValue<
            List<GetWindowsFunctionAppAuthSettingTwitter>,
            List<Map<String, dynamic>>
          >(
            twitters,
            (value) =>
                pulumi.Input.encodeList<
                  GetWindowsFunctionAppAuthSettingTwitter,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'unauthenticatedClientAction': unauthenticatedClientAction,
    };
  }

  factory GetWindowsFunctionAppAuthSetting.fromMap(Map<String, dynamic> map) {
    return GetWindowsFunctionAppAuthSetting(
      activeDirectories: pulumi.Input.fromValue(
        pulumi
            .Input.decodeList<GetWindowsFunctionAppAuthSettingActiveDirectory>(
          map['activeDirectories']!,
          (value) => GetWindowsFunctionAppAuthSettingActiveDirectory.fromMap(
            (value as Map).cast<String, dynamic>(),
          ),
        ),
      ),
      additionalLoginParameters: pulumi.Input.fromValue(
        (map['additionalLoginParameters'] as Map).cast<String, String>(),
      ),
      allowedExternalRedirectUrls: pulumi.Input.fromValue(
        (map['allowedExternalRedirectUrls'] as List).cast<String>(),
      ),
      defaultProvider: pulumi.Input.fromValue(map['defaultProvider'] as String),
      enabled: pulumi.Input.fromValue(map['enabled'] as bool),
      facebooks: pulumi.Input.fromValue(
        pulumi.Input.decodeList<GetWindowsFunctionAppAuthSettingFacebook>(
          map['facebooks']!,
          (value) => GetWindowsFunctionAppAuthSettingFacebook.fromMap(
            (value as Map).cast<String, dynamic>(),
          ),
        ),
      ),
      githubs: pulumi.Input.fromValue(
        pulumi.Input.decodeList<GetWindowsFunctionAppAuthSettingGithub>(
          map['githubs']!,
          (value) => GetWindowsFunctionAppAuthSettingGithub.fromMap(
            (value as Map).cast<String, dynamic>(),
          ),
        ),
      ),
      googles: pulumi.Input.fromValue(
        pulumi.Input.decodeList<GetWindowsFunctionAppAuthSettingGoogle>(
          map['googles']!,
          (value) => GetWindowsFunctionAppAuthSettingGoogle.fromMap(
            (value as Map).cast<String, dynamic>(),
          ),
        ),
      ),
      issuer: pulumi.Input.fromValue(map['issuer'] as String),
      microsofts: pulumi.Input.fromValue(
        pulumi.Input.decodeList<GetWindowsFunctionAppAuthSettingMicrosoft>(
          map['microsofts']!,
          (value) => GetWindowsFunctionAppAuthSettingMicrosoft.fromMap(
            (value as Map).cast<String, dynamic>(),
          ),
        ),
      ),
      runtimeVersion: pulumi.Input.fromValue(map['runtimeVersion'] as String),
      tokenRefreshExtensionHours: pulumi.Input.fromValue(
        map['tokenRefreshExtensionHours'] as double,
      ),
      tokenStoreEnabled: pulumi.Input.fromValue(
        map['tokenStoreEnabled'] as bool,
      ),
      twitters: pulumi.Input.fromValue(
        pulumi.Input.decodeList<GetWindowsFunctionAppAuthSettingTwitter>(
          map['twitters']!,
          (value) => GetWindowsFunctionAppAuthSettingTwitter.fromMap(
            (value as Map).cast<String, dynamic>(),
          ),
        ),
      ),
      unauthenticatedClientAction: pulumi.Input.fromValue(
        map['unauthenticatedClientAction'] as String,
      ),
    );
  }
}
