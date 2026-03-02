// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'linux_function_app_auth_settings_v2_active_directory_v2.dart';
import 'linux_function_app_auth_settings_v2_apple_v2.dart';
import 'linux_function_app_auth_settings_v2_azure_static_web_app_v2.dart';
import 'linux_function_app_auth_settings_v2_custom_oidc_v2.dart';
import 'linux_function_app_auth_settings_v2_facebook_v2.dart';
import 'linux_function_app_auth_settings_v2_github_v2.dart';
import 'linux_function_app_auth_settings_v2_google_v2.dart';
import 'linux_function_app_auth_settings_v2_login.dart';
import 'linux_function_app_auth_settings_v2_microsoft_v2.dart';
import 'linux_function_app_auth_settings_v2_twitter_v2.dart';

class LinuxFunctionAppAuthSettingsV2 {
  /// An `active_directory_v2` block as defined below.
  final pulumi.Input<LinuxFunctionAppAuthSettingsV2ActiveDirectoryV2>? activeDirectoryV2;
  /// An `apple_v2` block as defined below.
  final pulumi.Input<LinuxFunctionAppAuthSettingsV2AppleV2>? appleV2;
  /// Should the AuthV2 Settings be enabled. Defaults to `false`.
  final pulumi.Input<bool>? authEnabled;
  /// An `azure_static_web_app_v2` block as defined below.
  final pulumi.Input<LinuxFunctionAppAuthSettingsV2AzureStaticWebAppV2>? azureStaticWebAppV2;
  /// The path to the App Auth settings.
  ///
  /// > **Note:** Relative Paths are evaluated from the Site Root directory.
  final pulumi.Input<String>? configFilePath;
  /// Zero or more `custom_oidc_v2` blocks as defined below.
  final pulumi.Input<List<LinuxFunctionAppAuthSettingsV2CustomOidcV2>>? customOidcV2s;
  /// The Default Authentication Provider to use when the `unauthenticated_action` is set to `RedirectToLoginPage`. Possible values include: `apple`, `azureactivedirectory`, `facebook`, `github`, `google`, `twitter` and the `name` of your `custom_oidc_v2` provider.
  ///
  /// > **Note:** Whilst any value will be accepted by the API for `default_provider`, it can leave the app in an unusable state if this value does not correspond to the name of a known provider (either built-in value, or custom_oidc name) as it is used to build the auth endpoint URI.
  final pulumi.Input<String>? defaultProvider;
  /// The paths which should be excluded from the `unauthenticated_action` when it is set to `RedirectToLoginPage`.
  ///
  /// > **Note:** This list should be used instead of setting `WEBSITE_WARMUP_PATH` in `app_settings` as it takes priority.
  final pulumi.Input<List<String>>? excludedPaths;
  /// A `facebook_v2` block as defined below.
  final pulumi.Input<LinuxFunctionAppAuthSettingsV2FacebookV2>? facebookV2;
  /// The convention used to determine the url of the request made. Possible values include `NoProxy`, `Standard`, `Custom`. Defaults to `NoProxy`.
  final pulumi.Input<String>? forwardProxyConvention;
  /// The name of the custom header containing the host of the request.
  final pulumi.Input<String>? forwardProxyCustomHostHeaderName;
  /// The name of the custom header containing the scheme of the request.
  final pulumi.Input<String>? forwardProxyCustomSchemeHeaderName;
  /// A `github_v2` block as defined below.
  final pulumi.Input<LinuxFunctionAppAuthSettingsV2GithubV2>? githubV2;
  /// A `google_v2` block as defined below.
  final pulumi.Input<LinuxFunctionAppAuthSettingsV2GoogleV2>? googleV2;
  /// The prefix that should precede all the authentication and authorisation paths. Defaults to `/.auth`.
  final pulumi.Input<String>? httpRouteApiPrefix;
  /// A `login` block as defined below.
  final pulumi.Input<LinuxFunctionAppAuthSettingsV2Login> login;
  /// A `microsoft_v2` block as defined below.
  final pulumi.Input<LinuxFunctionAppAuthSettingsV2MicrosoftV2>? microsoftV2;
  /// Should the authentication flow be used for all requests.
  final pulumi.Input<bool>? requireAuthentication;
  /// Should HTTPS be required on connections? Defaults to `true`.
  final pulumi.Input<bool>? requireHttps;
  /// The Runtime Version of the Authentication and Authorisation feature of this App. Defaults to `~1`.
  final pulumi.Input<String>? runtimeVersion;
  /// A `twitter_v2` block as defined below.
  final pulumi.Input<LinuxFunctionAppAuthSettingsV2TwitterV2>? twitterV2;
  /// The action to take for requests made without authentication. Possible values include `RedirectToLoginPage`, `AllowAnonymous`, `Return401`, and `Return403`. Defaults to `RedirectToLoginPage`.
  final pulumi.Input<String>? unauthenticatedAction;

  /// Creates a new [LinuxFunctionAppAuthSettingsV2].
  /// [activeDirectoryV2] An `active_directory_v2` block as defined below.
  /// [appleV2] An `apple_v2` block as defined below.
  /// [authEnabled] Should the AuthV2 Settings be enabled. Defaults to `false`.
  /// [azureStaticWebAppV2] An `azure_static_web_app_v2` block as defined below.
  /// [configFilePath] The path to the App Auth settings.
  /// [customOidcV2s] Zero or more `custom_oidc_v2` blocks as defined below.
  /// [defaultProvider] The Default Authentication Provider to use when the `unauthenticated_action` is set to `RedirectToLoginPage`. Possible values include: `apple`, `azureactivedirectory`, `facebook`, `github`, `google`, `twitter` and the `name` of your `custom_oidc_v2` provider.
  /// [excludedPaths] The paths which should be excluded from the `unauthenticated_action` when it is set to `RedirectToLoginPage`.
  /// [facebookV2] A `facebook_v2` block as defined below.
  /// [forwardProxyConvention] The convention used to determine the url of the request made. Possible values include `NoProxy`, `Standard`, `Custom`. Defaults to `NoProxy`.
  /// [forwardProxyCustomHostHeaderName] The name of the custom header containing the host of the request.
  /// [forwardProxyCustomSchemeHeaderName] The name of the custom header containing the scheme of the request.
  /// [githubV2] A `github_v2` block as defined below.
  /// [googleV2] A `google_v2` block as defined below.
  /// [httpRouteApiPrefix] The prefix that should precede all the authentication and authorisation paths. Defaults to `/.auth`.
  /// [login] A `login` block as defined below.
  /// [microsoftV2] A `microsoft_v2` block as defined below.
  /// [requireAuthentication] Should the authentication flow be used for all requests.
  /// [requireHttps] Should HTTPS be required on connections? Defaults to `true`.
  /// [runtimeVersion] The Runtime Version of the Authentication and Authorisation feature of this App. Defaults to `~1`.
  /// [twitterV2] A `twitter_v2` block as defined below.
  /// [unauthenticatedAction] The action to take for requests made without authentication. Possible values include `RedirectToLoginPage`, `AllowAnonymous`, `Return401`, and `Return403`. Defaults to `RedirectToLoginPage`.
  LinuxFunctionAppAuthSettingsV2({
    this.activeDirectoryV2,
    this.appleV2,
    this.authEnabled,
    this.azureStaticWebAppV2,
    this.configFilePath,
    this.customOidcV2s,
    this.defaultProvider,
    this.excludedPaths,
    this.facebookV2,
    this.forwardProxyConvention,
    this.forwardProxyCustomHostHeaderName,
    this.forwardProxyCustomSchemeHeaderName,
    this.githubV2,
    this.googleV2,
    this.httpRouteApiPrefix,
    required this.login,
    this.microsoftV2,
    this.requireAuthentication,
    this.requireHttps,
    this.runtimeVersion,
    this.twitterV2,
    this.unauthenticatedAction,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'activeDirectoryV2': ?pulumi.Input.mapOptionalInputValue<LinuxFunctionAppAuthSettingsV2ActiveDirectoryV2, Map<String, dynamic>>(activeDirectoryV2, (value) => value.toMap()),
      'appleV2': ?pulumi.Input.mapOptionalInputValue<LinuxFunctionAppAuthSettingsV2AppleV2, Map<String, dynamic>>(appleV2, (value) => value.toMap()),
      'authEnabled': ?authEnabled,
      'azureStaticWebAppV2': ?pulumi.Input.mapOptionalInputValue<LinuxFunctionAppAuthSettingsV2AzureStaticWebAppV2, Map<String, dynamic>>(azureStaticWebAppV2, (value) => value.toMap()),
      'configFilePath': ?configFilePath,
      'customOidcV2s': ?pulumi.Input.mapOptionalInputValue<List<LinuxFunctionAppAuthSettingsV2CustomOidcV2>, List<Map<String, dynamic>>>(customOidcV2s, (value) => pulumi.Input.encodeList<LinuxFunctionAppAuthSettingsV2CustomOidcV2, Map<String, dynamic>>(value, (value) => value.toMap())),
      'defaultProvider': ?defaultProvider,
      'excludedPaths': ?excludedPaths,
      'facebookV2': ?pulumi.Input.mapOptionalInputValue<LinuxFunctionAppAuthSettingsV2FacebookV2, Map<String, dynamic>>(facebookV2, (value) => value.toMap()),
      'forwardProxyConvention': ?forwardProxyConvention,
      'forwardProxyCustomHostHeaderName': ?forwardProxyCustomHostHeaderName,
      'forwardProxyCustomSchemeHeaderName': ?forwardProxyCustomSchemeHeaderName,
      'githubV2': ?pulumi.Input.mapOptionalInputValue<LinuxFunctionAppAuthSettingsV2GithubV2, Map<String, dynamic>>(githubV2, (value) => value.toMap()),
      'googleV2': ?pulumi.Input.mapOptionalInputValue<LinuxFunctionAppAuthSettingsV2GoogleV2, Map<String, dynamic>>(googleV2, (value) => value.toMap()),
      'httpRouteApiPrefix': ?httpRouteApiPrefix,
      'login': pulumi.Input.mapInputValue<LinuxFunctionAppAuthSettingsV2Login, Map<String, dynamic>>(login, (value) => value.toMap()),
      'microsoftV2': ?pulumi.Input.mapOptionalInputValue<LinuxFunctionAppAuthSettingsV2MicrosoftV2, Map<String, dynamic>>(microsoftV2, (value) => value.toMap()),
      'requireAuthentication': ?requireAuthentication,
      'requireHttps': ?requireHttps,
      'runtimeVersion': ?runtimeVersion,
      'twitterV2': ?pulumi.Input.mapOptionalInputValue<LinuxFunctionAppAuthSettingsV2TwitterV2, Map<String, dynamic>>(twitterV2, (value) => value.toMap()),
      'unauthenticatedAction': ?unauthenticatedAction,
    };
  }

  factory LinuxFunctionAppAuthSettingsV2.fromMap(Map<String, dynamic> map) {
    return LinuxFunctionAppAuthSettingsV2(
      activeDirectoryV2: map['activeDirectoryV2'] == null ? null : (LinuxFunctionAppAuthSettingsV2ActiveDirectoryV2.fromMap((map['activeDirectoryV2']! as Map).cast<String, dynamic>())).input(),
      appleV2: map['appleV2'] == null ? null : (LinuxFunctionAppAuthSettingsV2AppleV2.fromMap((map['appleV2']! as Map).cast<String, dynamic>())).input(),
      authEnabled: map['authEnabled'] == null ? null : (map['authEnabled']! as bool).input(),
      azureStaticWebAppV2: map['azureStaticWebAppV2'] == null ? null : (LinuxFunctionAppAuthSettingsV2AzureStaticWebAppV2.fromMap((map['azureStaticWebAppV2']! as Map).cast<String, dynamic>())).input(),
      configFilePath: map['configFilePath'] == null ? null : (map['configFilePath']! as String).input(),
      customOidcV2s: map['customOidcV2s'] == null ? null : (pulumi.Input.decodeList<LinuxFunctionAppAuthSettingsV2CustomOidcV2>(map['customOidcV2s']!, (value) => LinuxFunctionAppAuthSettingsV2CustomOidcV2.fromMap((value as Map).cast<String, dynamic>()))).input(),
      defaultProvider: map['defaultProvider'] == null ? null : (map['defaultProvider']! as String).input(),
      excludedPaths: map['excludedPaths'] == null ? null : ((map['excludedPaths']! as List).cast<String>()).input(),
      facebookV2: map['facebookV2'] == null ? null : (LinuxFunctionAppAuthSettingsV2FacebookV2.fromMap((map['facebookV2']! as Map).cast<String, dynamic>())).input(),
      forwardProxyConvention: map['forwardProxyConvention'] == null ? null : (map['forwardProxyConvention']! as String).input(),
      forwardProxyCustomHostHeaderName: map['forwardProxyCustomHostHeaderName'] == null ? null : (map['forwardProxyCustomHostHeaderName']! as String).input(),
      forwardProxyCustomSchemeHeaderName: map['forwardProxyCustomSchemeHeaderName'] == null ? null : (map['forwardProxyCustomSchemeHeaderName']! as String).input(),
      githubV2: map['githubV2'] == null ? null : (LinuxFunctionAppAuthSettingsV2GithubV2.fromMap((map['githubV2']! as Map).cast<String, dynamic>())).input(),
      googleV2: map['googleV2'] == null ? null : (LinuxFunctionAppAuthSettingsV2GoogleV2.fromMap((map['googleV2']! as Map).cast<String, dynamic>())).input(),
      httpRouteApiPrefix: map['httpRouteApiPrefix'] == null ? null : (map['httpRouteApiPrefix']! as String).input(),
      login: (LinuxFunctionAppAuthSettingsV2Login.fromMap((map['login'] as Map).cast<String, dynamic>())).input(),
      microsoftV2: map['microsoftV2'] == null ? null : (LinuxFunctionAppAuthSettingsV2MicrosoftV2.fromMap((map['microsoftV2']! as Map).cast<String, dynamic>())).input(),
      requireAuthentication: map['requireAuthentication'] == null ? null : (map['requireAuthentication']! as bool).input(),
      requireHttps: map['requireHttps'] == null ? null : (map['requireHttps']! as bool).input(),
      runtimeVersion: map['runtimeVersion'] == null ? null : (map['runtimeVersion']! as String).input(),
      twitterV2: map['twitterV2'] == null ? null : (LinuxFunctionAppAuthSettingsV2TwitterV2.fromMap((map['twitterV2']! as Map).cast<String, dynamic>())).input(),
      unauthenticatedAction: map['unauthenticatedAction'] == null ? null : (map['unauthenticatedAction']! as String).input(),
    );
  }
}

