// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'auth_platform.dart';
import 'global_validation.dart';
import 'http_settings.dart';
import 'identity_providers.dart';
import 'login.dart';

/// {@template pulumi_web_web_app_auth_settings_v2_without_secrets_args_doc}
/// The set of arguments for WebAppAuthSettingsV2WithoutSecrets.
/// {@endtemplate}
/// {@macro pulumi_web_web_app_auth_settings_v2_without_secrets_args_doc}
class WebAppAuthSettingsV2WithoutSecretsArgs {
  /// The configuration settings that determines the validation flow of users using App Service Authentication/Authorization.
  final pulumi.Input<GlobalValidation>? globalValidation;
  /// The configuration settings of the HTTP requests for authentication and authorization requests made against App Service Authentication/Authorization.
  final pulumi.Input<HttpSettings>? httpSettings;
  /// The configuration settings of each of the identity providers used to configure App Service Authentication/Authorization.
  final pulumi.Input<IdentityProviders>? identityProviders;
  /// Kind of resource.
  final pulumi.Input<String>? kind;
  /// The configuration settings of the login flow of users using App Service Authentication/Authorization.
  final pulumi.Input<Login>? login;
  /// Name of web app.
  final pulumi.Input<String> name;
  /// The configuration settings of the platform of App Service Authentication/Authorization.
  final pulumi.Input<AuthPlatform>? platform;
  /// Name of the resource group to which the resource belongs.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [WebAppAuthSettingsV2WithoutSecretsArgs].
  /// [globalValidation] The configuration settings that determines the validation flow of users using App Service Authentication/Authorization.
  /// [httpSettings] The configuration settings of the HTTP requests for authentication and authorization requests made against App Service Authentication/Authorization.
  /// [identityProviders] The configuration settings of each of the identity providers used to configure App Service Authentication/Authorization.
  /// [kind] Kind of resource.
  /// [login] The configuration settings of the login flow of users using App Service Authentication/Authorization.
  /// [name] Name of web app.
  /// [platform] The configuration settings of the platform of App Service Authentication/Authorization.
  /// [resourceGroupName] Name of the resource group to which the resource belongs.
  WebAppAuthSettingsV2WithoutSecretsArgs({
    this.globalValidation,
    this.httpSettings,
    this.identityProviders,
    this.kind,
    this.login,
    required this.name,
    this.platform,
    required this.resourceGroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'globalValidation': ?pulumi.Input.mapOptionalInputValue<GlobalValidation, Map<String, dynamic>>(globalValidation, (value) => value.toMap()),
      'httpSettings': ?pulumi.Input.mapOptionalInputValue<HttpSettings, Map<String, dynamic>>(httpSettings, (value) => value.toMap()),
      'identityProviders': ?pulumi.Input.mapOptionalInputValue<IdentityProviders, Map<String, dynamic>>(identityProviders, (value) => value.toMap()),
      'kind': ?kind,
      'login': ?pulumi.Input.mapOptionalInputValue<Login, Map<String, dynamic>>(login, (value) => value.toMap()),
      'name': name,
      'platform': ?pulumi.Input.mapOptionalInputValue<AuthPlatform, Map<String, dynamic>>(platform, (value) => value.toMap()),
      'resourceGroupName': resourceGroupName,
    };
  }

  factory WebAppAuthSettingsV2WithoutSecretsArgs.fromMap(Map<String, dynamic> map) {
    return WebAppAuthSettingsV2WithoutSecretsArgs(
      globalValidation: (() { final guardedValue = map['globalValidation']; if (guardedValue == null) return null; return pulumi.Input.fromValue(GlobalValidation.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      httpSettings: (() { final guardedValue = map['httpSettings']; if (guardedValue == null) return null; return pulumi.Input.fromValue(HttpSettings.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      identityProviders: (() { final guardedValue = map['identityProviders']; if (guardedValue == null) return null; return pulumi.Input.fromValue(IdentityProviders.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      kind: (() { final guardedValue = map['kind']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      login: (() { final guardedValue = map['login']; if (guardedValue == null) return null; return pulumi.Input.fromValue(Login.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      name: pulumi.Input.fromValue(map['name'] as String),
      platform: (() { final guardedValue = map['platform']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AuthPlatform.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
    );
  }
}

