// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'linux_web_app_slot_auth_settings_v2_active_directory_v2.dart';
import 'linux_web_app_slot_auth_settings_v2_apple_v2.dart';
import 'linux_web_app_slot_auth_settings_v2_azure_static_web_app_v2.dart';
import 'linux_web_app_slot_auth_settings_v2_custom_oidc_v2.dart';
import 'linux_web_app_slot_auth_settings_v2_facebook_v2.dart';
import 'linux_web_app_slot_auth_settings_v2_github_v2.dart';
import 'linux_web_app_slot_auth_settings_v2_google_v2.dart';
import 'linux_web_app_slot_auth_settings_v2_login.dart';
import 'linux_web_app_slot_auth_settings_v2_microsoft_v2.dart';
import 'linux_web_app_slot_auth_settings_v2_twitter_v2.dart';

class LinuxWebAppSlotAuthSettingsV2 {
  /// An `active_directory_v2` block as defined below.
  final pulumi.Input<LinuxWebAppSlotAuthSettingsV2ActiveDirectoryV2>? activeDirectoryV2;
  /// An `apple_v2` block as defined below.
  final pulumi.Input<LinuxWebAppSlotAuthSettingsV2AppleV2>? appleV2;
  /// Should the AuthV2 Settings be enabled. Defaults to `false`.
  final pulumi.Input<bool>? authEnabled;
  /// An `azure_static_web_app_v2` block as defined below.
  final pulumi.Input<LinuxWebAppSlotAuthSettingsV2AzureStaticWebAppV2>? azureStaticWebAppV2;
  /// The path to the App Auth settings.
  ///
  /// &gt; **Note:** Relative Paths are evaluated from the Site Root directory.
  final pulumi.Input<String>? configFilePath;
  /// Zero or more `custom_oidc_v2` blocks as defined below.
  final pulumi.Input<List<LinuxWebAppSlotAuthSettingsV2CustomOidcV2>>? customOidcV2s;
  /// The Default Authentication Provider to use when the `unauthenticated_action` is set to `RedirectToLoginPage`. Possible values include: `apple`, `azureactivedirectory`, `facebook`, `github`, `google`, `twitter` and the `name` of your `custom_oidc_v2` provider.
  ///
  /// &gt; **Note:** Whilst any value will be accepted by the API for `default_provider`, it can leave the app in an unusable state if this value does not correspond to the name of a known provider (either built-in value, or custom_oidc name) as it is used to build the auth endpoint URI.
  final pulumi.Input<String>? defaultProvider;
  /// The paths which should be excluded from the `unauthenticated_action` when it is set to `RedirectToLoginPage`.
  ///
  /// &gt; **Note:** This list should be used instead of setting `WEBSITE_WARMUP_PATH` in `app_settings` as it takes priority.
  final pulumi.Input<List<String>>? excludedPaths;
  /// A `facebook_v2` block as defined below.
  final pulumi.Input<LinuxWebAppSlotAuthSettingsV2FacebookV2>? facebookV2;
  /// The convention used to determine the url of the request made. Possible values include `NoProxy`, `Standard`, `Custom`. Defaults to `NoProxy`.
  final pulumi.Input<String>? forwardProxyConvention;
  /// The name of the custom header containing the host of the request.
  final pulumi.Input<String>? forwardProxyCustomHostHeaderName;
  /// The name of the custom header containing the scheme of the request.
  final pulumi.Input<String>? forwardProxyCustomSchemeHeaderName;
  /// A `github_v2` block as defined below.
  final pulumi.Input<LinuxWebAppSlotAuthSettingsV2GithubV2>? githubV2;
  /// A `google_v2` block as defined below.
  final pulumi.Input<LinuxWebAppSlotAuthSettingsV2GoogleV2>? googleV2;
  /// The prefix that should precede all the authentication and authorisation paths. Defaults to `/.auth`.
  final pulumi.Input<String>? httpRouteApiPrefix;
  /// A `login` block as defined below.
  final pulumi.Input<LinuxWebAppSlotAuthSettingsV2Login> login;
  /// A `microsoft_v2` block as defined below.
  final pulumi.Input<LinuxWebAppSlotAuthSettingsV2MicrosoftV2>? microsoftV2;
  /// Should the authentication flow be used for all requests.
  final pulumi.Input<bool>? requireAuthentication;
  /// Should HTTPS be required on connections? Defaults to `true`.
  final pulumi.Input<bool>? requireHttps;
  /// The Runtime Version of the Authentication and Authorisation feature of this App. Defaults to `~1`.
  final pulumi.Input<String>? runtimeVersion;
  /// A `twitter_v2` block as defined below.
  final pulumi.Input<LinuxWebAppSlotAuthSettingsV2TwitterV2>? twitterV2;
  /// The action to take for requests made without authentication. Possible values include `RedirectToLoginPage`, `AllowAnonymous`, `Return401`, and `Return403`. Defaults to `RedirectToLoginPage`.
  final pulumi.Input<String>? unauthenticatedAction;

  /// Creates a new [LinuxWebAppSlotAuthSettingsV2].
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
  const LinuxWebAppSlotAuthSettingsV2({
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
      'activeDirectoryV2': ?pulumi.Input.mapOptionalInputValue<LinuxWebAppSlotAuthSettingsV2ActiveDirectoryV2, Map<String, dynamic>>(activeDirectoryV2, (value) => value.toMap()),
      'appleV2': ?pulumi.Input.mapOptionalInputValue<LinuxWebAppSlotAuthSettingsV2AppleV2, Map<String, dynamic>>(appleV2, (value) => value.toMap()),
      'authEnabled': ?authEnabled,
      'azureStaticWebAppV2': ?pulumi.Input.mapOptionalInputValue<LinuxWebAppSlotAuthSettingsV2AzureStaticWebAppV2, Map<String, dynamic>>(azureStaticWebAppV2, (value) => value.toMap()),
      'configFilePath': ?configFilePath,
      'customOidcV2s': ?pulumi.Input.mapOptionalInputValue<List<LinuxWebAppSlotAuthSettingsV2CustomOidcV2>, List<Map<String, dynamic>>>(customOidcV2s, (value) => pulumi.Input.encodeList<LinuxWebAppSlotAuthSettingsV2CustomOidcV2, Map<String, dynamic>>(value, (value) => value.toMap())),
      'defaultProvider': ?defaultProvider,
      'excludedPaths': ?excludedPaths,
      'facebookV2': ?pulumi.Input.mapOptionalInputValue<LinuxWebAppSlotAuthSettingsV2FacebookV2, Map<String, dynamic>>(facebookV2, (value) => value.toMap()),
      'forwardProxyConvention': ?forwardProxyConvention,
      'forwardProxyCustomHostHeaderName': ?forwardProxyCustomHostHeaderName,
      'forwardProxyCustomSchemeHeaderName': ?forwardProxyCustomSchemeHeaderName,
      'githubV2': ?pulumi.Input.mapOptionalInputValue<LinuxWebAppSlotAuthSettingsV2GithubV2, Map<String, dynamic>>(githubV2, (value) => value.toMap()),
      'googleV2': ?pulumi.Input.mapOptionalInputValue<LinuxWebAppSlotAuthSettingsV2GoogleV2, Map<String, dynamic>>(googleV2, (value) => value.toMap()),
      'httpRouteApiPrefix': ?httpRouteApiPrefix,
      'login': pulumi.Input.mapInputValue<LinuxWebAppSlotAuthSettingsV2Login, Map<String, dynamic>>(login, (value) => value.toMap()),
      'microsoftV2': ?pulumi.Input.mapOptionalInputValue<LinuxWebAppSlotAuthSettingsV2MicrosoftV2, Map<String, dynamic>>(microsoftV2, (value) => value.toMap()),
      'requireAuthentication': ?requireAuthentication,
      'requireHttps': ?requireHttps,
      'runtimeVersion': ?runtimeVersion,
      'twitterV2': ?pulumi.Input.mapOptionalInputValue<LinuxWebAppSlotAuthSettingsV2TwitterV2, Map<String, dynamic>>(twitterV2, (value) => value.toMap()),
      'unauthenticatedAction': ?unauthenticatedAction,
    };
  }

  factory LinuxWebAppSlotAuthSettingsV2.fromMap(Map<String, dynamic> map) {
    return LinuxWebAppSlotAuthSettingsV2(
      activeDirectoryV2: (() { final guardedValue = map['activeDirectoryV2']; if (guardedValue == null) return null; return pulumi.Input.fromValue(LinuxWebAppSlotAuthSettingsV2ActiveDirectoryV2.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      appleV2: (() { final guardedValue = map['appleV2']; if (guardedValue == null) return null; return pulumi.Input.fromValue(LinuxWebAppSlotAuthSettingsV2AppleV2.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      authEnabled: (() { final guardedValue = map['authEnabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      azureStaticWebAppV2: (() { final guardedValue = map['azureStaticWebAppV2']; if (guardedValue == null) return null; return pulumi.Input.fromValue(LinuxWebAppSlotAuthSettingsV2AzureStaticWebAppV2.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      configFilePath: (() { final guardedValue = map['configFilePath']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      customOidcV2s: (() { final guardedValue = map['customOidcV2s']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<LinuxWebAppSlotAuthSettingsV2CustomOidcV2>(guardedValue, (value) => LinuxWebAppSlotAuthSettingsV2CustomOidcV2.fromMap((value as Map).cast<String, dynamic>()))); })(),
      defaultProvider: (() { final guardedValue = map['defaultProvider']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      excludedPaths: (() { final guardedValue = map['excludedPaths']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      facebookV2: (() { final guardedValue = map['facebookV2']; if (guardedValue == null) return null; return pulumi.Input.fromValue(LinuxWebAppSlotAuthSettingsV2FacebookV2.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      forwardProxyConvention: (() { final guardedValue = map['forwardProxyConvention']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      forwardProxyCustomHostHeaderName: (() { final guardedValue = map['forwardProxyCustomHostHeaderName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      forwardProxyCustomSchemeHeaderName: (() { final guardedValue = map['forwardProxyCustomSchemeHeaderName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      githubV2: (() { final guardedValue = map['githubV2']; if (guardedValue == null) return null; return pulumi.Input.fromValue(LinuxWebAppSlotAuthSettingsV2GithubV2.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      googleV2: (() { final guardedValue = map['googleV2']; if (guardedValue == null) return null; return pulumi.Input.fromValue(LinuxWebAppSlotAuthSettingsV2GoogleV2.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      httpRouteApiPrefix: (() { final guardedValue = map['httpRouteApiPrefix']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      login: pulumi.Input.fromValue(LinuxWebAppSlotAuthSettingsV2Login.fromMap((map['login']! as Map).cast<String, dynamic>())),
      microsoftV2: (() { final guardedValue = map['microsoftV2']; if (guardedValue == null) return null; return pulumi.Input.fromValue(LinuxWebAppSlotAuthSettingsV2MicrosoftV2.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      requireAuthentication: (() { final guardedValue = map['requireAuthentication']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      requireHttps: (() { final guardedValue = map['requireHttps']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      runtimeVersion: (() { final guardedValue = map['runtimeVersion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      twitterV2: (() { final guardedValue = map['twitterV2']; if (guardedValue == null) return null; return pulumi.Input.fromValue(LinuxWebAppSlotAuthSettingsV2TwitterV2.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      unauthenticatedAction: (() { final guardedValue = map['unauthenticatedAction']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

