// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_linux_function_app_auth_settings_v2_active_directory_v2.dart';
import 'get_linux_function_app_auth_settings_v2_apple_v2.dart';
import 'get_linux_function_app_auth_settings_v2_azure_static_web_app_v2.dart';
import 'get_linux_function_app_auth_settings_v2_custom_oidc_v2.dart';
import 'get_linux_function_app_auth_settings_v2_facebook_v2.dart';
import 'get_linux_function_app_auth_settings_v2_github_v2.dart';
import 'get_linux_function_app_auth_settings_v2_google_v2.dart';
import 'get_linux_function_app_auth_settings_v2_login.dart';
import 'get_linux_function_app_auth_settings_v2_microsoft_v2.dart';
import 'get_linux_function_app_auth_settings_v2_twitter_v2.dart';

class GetLinuxFunctionAppAuthSettingsV2 {
  /// An `active_directory_v2` block as defined below.
  final pulumi.Input<List<GetLinuxFunctionAppAuthSettingsV2ActiveDirectoryV2>> activeDirectoryV2s;
  /// An `apple_v2` block as defined below.
  final pulumi.Input<List<GetLinuxFunctionAppAuthSettingsV2AppleV2>> appleV2s;
  /// Are the AuthV2 Settings enabled.
  final pulumi.Input<bool> authEnabled;
  /// An `azure_static_web_app_v2` block as defined below.
  final pulumi.Input<List<GetLinuxFunctionAppAuthSettingsV2AzureStaticWebAppV2>> azureStaticWebAppV2s;
  /// The path to the App Auth settings.
  final pulumi.Input<String> configFilePath;
  /// Zero or more `custom_oidc_v2` blocks as defined below.
  final pulumi.Input<List<GetLinuxFunctionAppAuthSettingsV2CustomOidcV2>> customOidcV2s;
  /// The Default Authentication Provider used when more than one Authentication Provider is configured and the `unauthenticated_action` is set to `RedirectToLoginPage`.
  final pulumi.Input<String> defaultProvider;
  /// The paths which should be excluded from the `unauthenticated_action` when it is set to `RedirectToLoginPage`.
  final pulumi.Input<List<String>> excludedPaths;
  /// A `facebook_v2` block as defined below.
  final pulumi.Input<List<GetLinuxFunctionAppAuthSettingsV2FacebookV2>> facebookV2s;
  /// The convention used to determine the url of the request made.
  final pulumi.Input<String> forwardProxyConvention;
  /// The name of the custom header containing the host of the request.
  final pulumi.Input<String> forwardProxyCustomHostHeaderName;
  /// The name of the custom header containing the scheme of the request.
  final pulumi.Input<String> forwardProxyCustomSchemeHeaderName;
  /// A `github_v2` block as defined below.
  final pulumi.Input<List<GetLinuxFunctionAppAuthSettingsV2GithubV2>> githubV2s;
  /// A `google_v2` block as defined below.
  final pulumi.Input<List<GetLinuxFunctionAppAuthSettingsV2GoogleV2>> googleV2s;
  /// The prefix that should precede all the authentication and authorisation paths.
  final pulumi.Input<String> httpRouteApiPrefix;
  /// A `login` block as defined below.
  final pulumi.Input<List<GetLinuxFunctionAppAuthSettingsV2Login>> logins;
  /// A `microsoft_v2` block as defined below.
  final pulumi.Input<List<GetLinuxFunctionAppAuthSettingsV2MicrosoftV2>> microsoftV2s;
  /// Is the authentication flow used for all requests.
  final pulumi.Input<bool> requireAuthentication;
  /// Is HTTPS required on connections?
  final pulumi.Input<bool> requireHttps;
  /// The Runtime Version of the Authentication and Authorisation feature of this App.
  final pulumi.Input<String> runtimeVersion;
  /// A `twitter_v2` block as defined below.
  final pulumi.Input<List<GetLinuxFunctionAppAuthSettingsV2TwitterV2>> twitterV2s;
  /// The action to take for requests made without authentication.
  final pulumi.Input<String> unauthenticatedAction;

  /// Creates a new [GetLinuxFunctionAppAuthSettingsV2].
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
  GetLinuxFunctionAppAuthSettingsV2({
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
      'activeDirectoryV2s': pulumi.Input.mapInputValue<List<GetLinuxFunctionAppAuthSettingsV2ActiveDirectoryV2>, List<Map<String, dynamic>>>(activeDirectoryV2s, (value) => pulumi.Input.encodeList<GetLinuxFunctionAppAuthSettingsV2ActiveDirectoryV2, Map<String, dynamic>>(value, (value) => value.toMap())),
      'appleV2s': pulumi.Input.mapInputValue<List<GetLinuxFunctionAppAuthSettingsV2AppleV2>, List<Map<String, dynamic>>>(appleV2s, (value) => pulumi.Input.encodeList<GetLinuxFunctionAppAuthSettingsV2AppleV2, Map<String, dynamic>>(value, (value) => value.toMap())),
      'authEnabled': authEnabled,
      'azureStaticWebAppV2s': pulumi.Input.mapInputValue<List<GetLinuxFunctionAppAuthSettingsV2AzureStaticWebAppV2>, List<Map<String, dynamic>>>(azureStaticWebAppV2s, (value) => pulumi.Input.encodeList<GetLinuxFunctionAppAuthSettingsV2AzureStaticWebAppV2, Map<String, dynamic>>(value, (value) => value.toMap())),
      'configFilePath': configFilePath,
      'customOidcV2s': pulumi.Input.mapInputValue<List<GetLinuxFunctionAppAuthSettingsV2CustomOidcV2>, List<Map<String, dynamic>>>(customOidcV2s, (value) => pulumi.Input.encodeList<GetLinuxFunctionAppAuthSettingsV2CustomOidcV2, Map<String, dynamic>>(value, (value) => value.toMap())),
      'defaultProvider': defaultProvider,
      'excludedPaths': excludedPaths,
      'facebookV2s': pulumi.Input.mapInputValue<List<GetLinuxFunctionAppAuthSettingsV2FacebookV2>, List<Map<String, dynamic>>>(facebookV2s, (value) => pulumi.Input.encodeList<GetLinuxFunctionAppAuthSettingsV2FacebookV2, Map<String, dynamic>>(value, (value) => value.toMap())),
      'forwardProxyConvention': forwardProxyConvention,
      'forwardProxyCustomHostHeaderName': forwardProxyCustomHostHeaderName,
      'forwardProxyCustomSchemeHeaderName': forwardProxyCustomSchemeHeaderName,
      'githubV2s': pulumi.Input.mapInputValue<List<GetLinuxFunctionAppAuthSettingsV2GithubV2>, List<Map<String, dynamic>>>(githubV2s, (value) => pulumi.Input.encodeList<GetLinuxFunctionAppAuthSettingsV2GithubV2, Map<String, dynamic>>(value, (value) => value.toMap())),
      'googleV2s': pulumi.Input.mapInputValue<List<GetLinuxFunctionAppAuthSettingsV2GoogleV2>, List<Map<String, dynamic>>>(googleV2s, (value) => pulumi.Input.encodeList<GetLinuxFunctionAppAuthSettingsV2GoogleV2, Map<String, dynamic>>(value, (value) => value.toMap())),
      'httpRouteApiPrefix': httpRouteApiPrefix,
      'logins': pulumi.Input.mapInputValue<List<GetLinuxFunctionAppAuthSettingsV2Login>, List<Map<String, dynamic>>>(logins, (value) => pulumi.Input.encodeList<GetLinuxFunctionAppAuthSettingsV2Login, Map<String, dynamic>>(value, (value) => value.toMap())),
      'microsoftV2s': pulumi.Input.mapInputValue<List<GetLinuxFunctionAppAuthSettingsV2MicrosoftV2>, List<Map<String, dynamic>>>(microsoftV2s, (value) => pulumi.Input.encodeList<GetLinuxFunctionAppAuthSettingsV2MicrosoftV2, Map<String, dynamic>>(value, (value) => value.toMap())),
      'requireAuthentication': requireAuthentication,
      'requireHttps': requireHttps,
      'runtimeVersion': runtimeVersion,
      'twitterV2s': pulumi.Input.mapInputValue<List<GetLinuxFunctionAppAuthSettingsV2TwitterV2>, List<Map<String, dynamic>>>(twitterV2s, (value) => pulumi.Input.encodeList<GetLinuxFunctionAppAuthSettingsV2TwitterV2, Map<String, dynamic>>(value, (value) => value.toMap())),
      'unauthenticatedAction': unauthenticatedAction,
    };
  }

  factory GetLinuxFunctionAppAuthSettingsV2.fromMap(Map<String, dynamic> map) {
    return GetLinuxFunctionAppAuthSettingsV2(
      activeDirectoryV2s: (pulumi.Input.decodeList<GetLinuxFunctionAppAuthSettingsV2ActiveDirectoryV2>(map['activeDirectoryV2s'], (value) => GetLinuxFunctionAppAuthSettingsV2ActiveDirectoryV2.fromMap((value as Map).cast<String, dynamic>()))).input(),
      appleV2s: (pulumi.Input.decodeList<GetLinuxFunctionAppAuthSettingsV2AppleV2>(map['appleV2s'], (value) => GetLinuxFunctionAppAuthSettingsV2AppleV2.fromMap((value as Map).cast<String, dynamic>()))).input(),
      authEnabled: (map['authEnabled'] as bool).input(),
      azureStaticWebAppV2s: (pulumi.Input.decodeList<GetLinuxFunctionAppAuthSettingsV2AzureStaticWebAppV2>(map['azureStaticWebAppV2s'], (value) => GetLinuxFunctionAppAuthSettingsV2AzureStaticWebAppV2.fromMap((value as Map).cast<String, dynamic>()))).input(),
      configFilePath: (map['configFilePath'] as String).input(),
      customOidcV2s: (pulumi.Input.decodeList<GetLinuxFunctionAppAuthSettingsV2CustomOidcV2>(map['customOidcV2s'], (value) => GetLinuxFunctionAppAuthSettingsV2CustomOidcV2.fromMap((value as Map).cast<String, dynamic>()))).input(),
      defaultProvider: (map['defaultProvider'] as String).input(),
      excludedPaths: ((map['excludedPaths'] as List).cast<String>()).input(),
      facebookV2s: (pulumi.Input.decodeList<GetLinuxFunctionAppAuthSettingsV2FacebookV2>(map['facebookV2s'], (value) => GetLinuxFunctionAppAuthSettingsV2FacebookV2.fromMap((value as Map).cast<String, dynamic>()))).input(),
      forwardProxyConvention: (map['forwardProxyConvention'] as String).input(),
      forwardProxyCustomHostHeaderName: (map['forwardProxyCustomHostHeaderName'] as String).input(),
      forwardProxyCustomSchemeHeaderName: (map['forwardProxyCustomSchemeHeaderName'] as String).input(),
      githubV2s: (pulumi.Input.decodeList<GetLinuxFunctionAppAuthSettingsV2GithubV2>(map['githubV2s'], (value) => GetLinuxFunctionAppAuthSettingsV2GithubV2.fromMap((value as Map).cast<String, dynamic>()))).input(),
      googleV2s: (pulumi.Input.decodeList<GetLinuxFunctionAppAuthSettingsV2GoogleV2>(map['googleV2s'], (value) => GetLinuxFunctionAppAuthSettingsV2GoogleV2.fromMap((value as Map).cast<String, dynamic>()))).input(),
      httpRouteApiPrefix: (map['httpRouteApiPrefix'] as String).input(),
      logins: (pulumi.Input.decodeList<GetLinuxFunctionAppAuthSettingsV2Login>(map['logins'], (value) => GetLinuxFunctionAppAuthSettingsV2Login.fromMap((value as Map).cast<String, dynamic>()))).input(),
      microsoftV2s: (pulumi.Input.decodeList<GetLinuxFunctionAppAuthSettingsV2MicrosoftV2>(map['microsoftV2s'], (value) => GetLinuxFunctionAppAuthSettingsV2MicrosoftV2.fromMap((value as Map).cast<String, dynamic>()))).input(),
      requireAuthentication: (map['requireAuthentication'] as bool).input(),
      requireHttps: (map['requireHttps'] as bool).input(),
      runtimeVersion: (map['runtimeVersion'] as String).input(),
      twitterV2s: (pulumi.Input.decodeList<GetLinuxFunctionAppAuthSettingsV2TwitterV2>(map['twitterV2s'], (value) => GetLinuxFunctionAppAuthSettingsV2TwitterV2.fromMap((value as Map).cast<String, dynamic>()))).input(),
      unauthenticatedAction: (map['unauthenticatedAction'] as String).input(),
    );
  }
}

