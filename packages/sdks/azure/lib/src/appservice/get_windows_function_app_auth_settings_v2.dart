// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_windows_function_app_auth_settings_v2_active_directory_v2.dart';
import 'get_windows_function_app_auth_settings_v2_apple_v2.dart';
import 'get_windows_function_app_auth_settings_v2_azure_static_web_app_v2.dart';
import 'get_windows_function_app_auth_settings_v2_custom_oidc_v2.dart';
import 'get_windows_function_app_auth_settings_v2_facebook_v2.dart';
import 'get_windows_function_app_auth_settings_v2_github_v2.dart';
import 'get_windows_function_app_auth_settings_v2_google_v2.dart';
import 'get_windows_function_app_auth_settings_v2_login.dart';
import 'get_windows_function_app_auth_settings_v2_microsoft_v2.dart';
import 'get_windows_function_app_auth_settings_v2_twitter_v2.dart';

class GetWindowsFunctionAppAuthSettingsV2 {
  /// An `active_directory_v2` block as defined below.
  final pulumi.Input<List<GetWindowsFunctionAppAuthSettingsV2ActiveDirectoryV2>> activeDirectoryV2s;
  /// An `apple_v2` block as defined below.
  final pulumi.Input<List<GetWindowsFunctionAppAuthSettingsV2AppleV2>> appleV2s;
  /// Are the AuthV2 Settings enabled.
  final pulumi.Input<bool> authEnabled;
  /// An `azure_static_web_app_v2` block as defined below.
  final pulumi.Input<List<GetWindowsFunctionAppAuthSettingsV2AzureStaticWebAppV2>> azureStaticWebAppV2s;
  /// The path to the App Auth settings.
  final pulumi.Input<String> configFilePath;
  /// Zero or more `custom_oidc_v2` blocks as defined below.
  final pulumi.Input<List<GetWindowsFunctionAppAuthSettingsV2CustomOidcV2>> customOidcV2s;
  /// The Default Authentication Provider used when more than one Authentication Provider is configured and the `unauthenticated_action` is set to `RedirectToLoginPage`.
  final pulumi.Input<String> defaultProvider;
  /// The paths which should be excluded from the `unauthenticated_action` when it is set to `RedirectToLoginPage`.
  final pulumi.Input<List<String>> excludedPaths;
  /// A `facebook_v2` block as defined below.
  final pulumi.Input<List<GetWindowsFunctionAppAuthSettingsV2FacebookV2>> facebookV2s;
  /// The convention used to determine the url of the request made.
  final pulumi.Input<String> forwardProxyConvention;
  /// The name of the custom header containing the host of the request.
  final pulumi.Input<String> forwardProxyCustomHostHeaderName;
  /// The name of the custom header containing the scheme of the request.
  final pulumi.Input<String> forwardProxyCustomSchemeHeaderName;
  /// A `github_v2` block as defined below.
  final pulumi.Input<List<GetWindowsFunctionAppAuthSettingsV2GithubV2>> githubV2s;
  /// A `google_v2` block as defined below.
  final pulumi.Input<List<GetWindowsFunctionAppAuthSettingsV2GoogleV2>> googleV2s;
  /// The prefix that should precede all the authentication and authorisation paths.
  final pulumi.Input<String> httpRouteApiPrefix;
  /// A `login` block as defined below.
  final pulumi.Input<List<GetWindowsFunctionAppAuthSettingsV2Login>> logins;
  /// A `microsoft_v2` block as defined below.
  final pulumi.Input<List<GetWindowsFunctionAppAuthSettingsV2MicrosoftV2>> microsoftV2s;
  /// Is the authentication flow used for all requests.
  final pulumi.Input<bool> requireAuthentication;
  /// Is HTTPS required on connections?
  final pulumi.Input<bool> requireHttps;
  /// The Runtime Version of the Authentication and Authorisation feature of this App.
  final pulumi.Input<String> runtimeVersion;
  /// A `twitter_v2` block as defined below.
  final pulumi.Input<List<GetWindowsFunctionAppAuthSettingsV2TwitterV2>> twitterV2s;
  /// The action to take for requests made without authentication.
  final pulumi.Input<String> unauthenticatedAction;

  /// Creates a new [GetWindowsFunctionAppAuthSettingsV2].
  /// [activeDirectoryV2s] An `active_directory_v2` block as defined below.
  /// [appleV2s] An `apple_v2` block as defined below.
  /// [authEnabled] Are the AuthV2 Settings enabled.
  /// [azureStaticWebAppV2s] An `azure_static_web_app_v2` block as defined below.
  /// [configFilePath] The path to the App Auth settings.
  /// [customOidcV2s] Zero or more `custom_oidc_v2` blocks as defined below.
  /// [defaultProvider] The Default Authentication Provider used when more than one Authentication Provider is configured and the `unauthenticated_action` is set to `RedirectToLoginPage`.
  /// [excludedPaths] The paths which should be excluded from the `unauthenticated_action` when it is set to `RedirectToLoginPage`.
  /// [facebookV2s] A `facebook_v2` block as defined below.
  /// [forwardProxyConvention] The convention used to determine the url of the request made.
  /// [forwardProxyCustomHostHeaderName] The name of the custom header containing the host of the request.
  /// [forwardProxyCustomSchemeHeaderName] The name of the custom header containing the scheme of the request.
  /// [githubV2s] A `github_v2` block as defined below.
  /// [googleV2s] A `google_v2` block as defined below.
  /// [httpRouteApiPrefix] The prefix that should precede all the authentication and authorisation paths.
  /// [logins] A `login` block as defined below.
  /// [microsoftV2s] A `microsoft_v2` block as defined below.
  /// [requireAuthentication] Is the authentication flow used for all requests.
  /// [requireHttps] Is HTTPS required on connections?
  /// [runtimeVersion] The Runtime Version of the Authentication and Authorisation feature of this App.
  /// [twitterV2s] A `twitter_v2` block as defined below.
  /// [unauthenticatedAction] The action to take for requests made without authentication.
  GetWindowsFunctionAppAuthSettingsV2({
    required this.activeDirectoryV2s,
    required this.appleV2s,
    required this.authEnabled,
    required this.azureStaticWebAppV2s,
    required this.configFilePath,
    required this.customOidcV2s,
    required this.defaultProvider,
    required this.excludedPaths,
    required this.facebookV2s,
    required this.forwardProxyConvention,
    required this.forwardProxyCustomHostHeaderName,
    required this.forwardProxyCustomSchemeHeaderName,
    required this.githubV2s,
    required this.googleV2s,
    required this.httpRouteApiPrefix,
    required this.logins,
    required this.microsoftV2s,
    required this.requireAuthentication,
    required this.requireHttps,
    required this.runtimeVersion,
    required this.twitterV2s,
    required this.unauthenticatedAction,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'activeDirectoryV2s': pulumi.Input.mapInputValue<List<GetWindowsFunctionAppAuthSettingsV2ActiveDirectoryV2>, List<Map<String, dynamic>>>(activeDirectoryV2s, (value) => pulumi.Input.encodeList<GetWindowsFunctionAppAuthSettingsV2ActiveDirectoryV2, Map<String, dynamic>>(value, (value) => value.toMap())),
      'appleV2s': pulumi.Input.mapInputValue<List<GetWindowsFunctionAppAuthSettingsV2AppleV2>, List<Map<String, dynamic>>>(appleV2s, (value) => pulumi.Input.encodeList<GetWindowsFunctionAppAuthSettingsV2AppleV2, Map<String, dynamic>>(value, (value) => value.toMap())),
      'authEnabled': authEnabled,
      'azureStaticWebAppV2s': pulumi.Input.mapInputValue<List<GetWindowsFunctionAppAuthSettingsV2AzureStaticWebAppV2>, List<Map<String, dynamic>>>(azureStaticWebAppV2s, (value) => pulumi.Input.encodeList<GetWindowsFunctionAppAuthSettingsV2AzureStaticWebAppV2, Map<String, dynamic>>(value, (value) => value.toMap())),
      'configFilePath': configFilePath,
      'customOidcV2s': pulumi.Input.mapInputValue<List<GetWindowsFunctionAppAuthSettingsV2CustomOidcV2>, List<Map<String, dynamic>>>(customOidcV2s, (value) => pulumi.Input.encodeList<GetWindowsFunctionAppAuthSettingsV2CustomOidcV2, Map<String, dynamic>>(value, (value) => value.toMap())),
      'defaultProvider': defaultProvider,
      'excludedPaths': excludedPaths,
      'facebookV2s': pulumi.Input.mapInputValue<List<GetWindowsFunctionAppAuthSettingsV2FacebookV2>, List<Map<String, dynamic>>>(facebookV2s, (value) => pulumi.Input.encodeList<GetWindowsFunctionAppAuthSettingsV2FacebookV2, Map<String, dynamic>>(value, (value) => value.toMap())),
      'forwardProxyConvention': forwardProxyConvention,
      'forwardProxyCustomHostHeaderName': forwardProxyCustomHostHeaderName,
      'forwardProxyCustomSchemeHeaderName': forwardProxyCustomSchemeHeaderName,
      'githubV2s': pulumi.Input.mapInputValue<List<GetWindowsFunctionAppAuthSettingsV2GithubV2>, List<Map<String, dynamic>>>(githubV2s, (value) => pulumi.Input.encodeList<GetWindowsFunctionAppAuthSettingsV2GithubV2, Map<String, dynamic>>(value, (value) => value.toMap())),
      'googleV2s': pulumi.Input.mapInputValue<List<GetWindowsFunctionAppAuthSettingsV2GoogleV2>, List<Map<String, dynamic>>>(googleV2s, (value) => pulumi.Input.encodeList<GetWindowsFunctionAppAuthSettingsV2GoogleV2, Map<String, dynamic>>(value, (value) => value.toMap())),
      'httpRouteApiPrefix': httpRouteApiPrefix,
      'logins': pulumi.Input.mapInputValue<List<GetWindowsFunctionAppAuthSettingsV2Login>, List<Map<String, dynamic>>>(logins, (value) => pulumi.Input.encodeList<GetWindowsFunctionAppAuthSettingsV2Login, Map<String, dynamic>>(value, (value) => value.toMap())),
      'microsoftV2s': pulumi.Input.mapInputValue<List<GetWindowsFunctionAppAuthSettingsV2MicrosoftV2>, List<Map<String, dynamic>>>(microsoftV2s, (value) => pulumi.Input.encodeList<GetWindowsFunctionAppAuthSettingsV2MicrosoftV2, Map<String, dynamic>>(value, (value) => value.toMap())),
      'requireAuthentication': requireAuthentication,
      'requireHttps': requireHttps,
      'runtimeVersion': runtimeVersion,
      'twitterV2s': pulumi.Input.mapInputValue<List<GetWindowsFunctionAppAuthSettingsV2TwitterV2>, List<Map<String, dynamic>>>(twitterV2s, (value) => pulumi.Input.encodeList<GetWindowsFunctionAppAuthSettingsV2TwitterV2, Map<String, dynamic>>(value, (value) => value.toMap())),
      'unauthenticatedAction': unauthenticatedAction,
    };
  }

  factory GetWindowsFunctionAppAuthSettingsV2.fromMap(Map<String, dynamic> map) {
    return GetWindowsFunctionAppAuthSettingsV2(
      activeDirectoryV2s: pulumi.Input.fromValue(pulumi.Input.decodeList<GetWindowsFunctionAppAuthSettingsV2ActiveDirectoryV2>(map['activeDirectoryV2s']!, (value) => GetWindowsFunctionAppAuthSettingsV2ActiveDirectoryV2.fromMap((value as Map).cast<String, dynamic>()))),
      appleV2s: pulumi.Input.fromValue(pulumi.Input.decodeList<GetWindowsFunctionAppAuthSettingsV2AppleV2>(map['appleV2s']!, (value) => GetWindowsFunctionAppAuthSettingsV2AppleV2.fromMap((value as Map).cast<String, dynamic>()))),
      authEnabled: pulumi.Input.fromValue(map['authEnabled'] as bool),
      azureStaticWebAppV2s: pulumi.Input.fromValue(pulumi.Input.decodeList<GetWindowsFunctionAppAuthSettingsV2AzureStaticWebAppV2>(map['azureStaticWebAppV2s']!, (value) => GetWindowsFunctionAppAuthSettingsV2AzureStaticWebAppV2.fromMap((value as Map).cast<String, dynamic>()))),
      configFilePath: pulumi.Input.fromValue(map['configFilePath'] as String),
      customOidcV2s: pulumi.Input.fromValue(pulumi.Input.decodeList<GetWindowsFunctionAppAuthSettingsV2CustomOidcV2>(map['customOidcV2s']!, (value) => GetWindowsFunctionAppAuthSettingsV2CustomOidcV2.fromMap((value as Map).cast<String, dynamic>()))),
      defaultProvider: pulumi.Input.fromValue(map['defaultProvider'] as String),
      excludedPaths: pulumi.Input.fromValue((map['excludedPaths'] as List).cast<String>()),
      facebookV2s: pulumi.Input.fromValue(pulumi.Input.decodeList<GetWindowsFunctionAppAuthSettingsV2FacebookV2>(map['facebookV2s']!, (value) => GetWindowsFunctionAppAuthSettingsV2FacebookV2.fromMap((value as Map).cast<String, dynamic>()))),
      forwardProxyConvention: pulumi.Input.fromValue(map['forwardProxyConvention'] as String),
      forwardProxyCustomHostHeaderName: pulumi.Input.fromValue(map['forwardProxyCustomHostHeaderName'] as String),
      forwardProxyCustomSchemeHeaderName: pulumi.Input.fromValue(map['forwardProxyCustomSchemeHeaderName'] as String),
      githubV2s: pulumi.Input.fromValue(pulumi.Input.decodeList<GetWindowsFunctionAppAuthSettingsV2GithubV2>(map['githubV2s']!, (value) => GetWindowsFunctionAppAuthSettingsV2GithubV2.fromMap((value as Map).cast<String, dynamic>()))),
      googleV2s: pulumi.Input.fromValue(pulumi.Input.decodeList<GetWindowsFunctionAppAuthSettingsV2GoogleV2>(map['googleV2s']!, (value) => GetWindowsFunctionAppAuthSettingsV2GoogleV2.fromMap((value as Map).cast<String, dynamic>()))),
      httpRouteApiPrefix: pulumi.Input.fromValue(map['httpRouteApiPrefix'] as String),
      logins: pulumi.Input.fromValue(pulumi.Input.decodeList<GetWindowsFunctionAppAuthSettingsV2Login>(map['logins']!, (value) => GetWindowsFunctionAppAuthSettingsV2Login.fromMap((value as Map).cast<String, dynamic>()))),
      microsoftV2s: pulumi.Input.fromValue(pulumi.Input.decodeList<GetWindowsFunctionAppAuthSettingsV2MicrosoftV2>(map['microsoftV2s']!, (value) => GetWindowsFunctionAppAuthSettingsV2MicrosoftV2.fromMap((value as Map).cast<String, dynamic>()))),
      requireAuthentication: pulumi.Input.fromValue(map['requireAuthentication'] as bool),
      requireHttps: pulumi.Input.fromValue(map['requireHttps'] as bool),
      runtimeVersion: pulumi.Input.fromValue(map['runtimeVersion'] as String),
      twitterV2s: pulumi.Input.fromValue(pulumi.Input.decodeList<GetWindowsFunctionAppAuthSettingsV2TwitterV2>(map['twitterV2s']!, (value) => GetWindowsFunctionAppAuthSettingsV2TwitterV2.fromMap((value as Map).cast<String, dynamic>()))),
      unauthenticatedAction: pulumi.Input.fromValue(map['unauthenticatedAction'] as String),
    );
  }
}

