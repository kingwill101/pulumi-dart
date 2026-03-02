// ignore_for_file: unused_element, unnecessary_cast

import 'auth_platform_response.dart';
import 'global_validation_response.dart';
import 'http_settings_response.dart';
import 'identity_providers_response.dart';
import 'login_response.dart';

/// Result data returned by getWebAppAuthSettingsV2WithoutSecrets.
class GetWebAppAuthSettingsV2WithoutSecretsResult {
  /// The Azure API version of the resource.
  final String azureApiVersion;
  /// The configuration settings that determines the validation flow of users using App Service Authentication/Authorization.
  final GlobalValidationResponse? globalValidation;
  /// The configuration settings of the HTTP requests for authentication and authorization requests made against App Service Authentication/Authorization.
  final HttpSettingsResponse? httpSettings;
  /// Resource Id.
  final String id;
  /// The configuration settings of each of the identity providers used to configure App Service Authentication/Authorization.
  final IdentityProvidersResponse? identityProviders;
  /// Kind of resource.
  final String? kind;
  /// The configuration settings of the login flow of users using App Service Authentication/Authorization.
  final LoginResponse? login;
  /// Resource Name.
  final String name;
  /// The configuration settings of the platform of App Service Authentication/Authorization.
  final AuthPlatformResponse? platform;
  /// Resource type.
  final String type;

  /// Creates a new [GetWebAppAuthSettingsV2WithoutSecretsResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [globalValidation] The configuration settings that determines the validation flow of users using App Service Authentication/Authorization.
  /// [httpSettings] The configuration settings of the HTTP requests for authentication and authorization requests made against App Service Authentication/Authorization.
  /// [id] Resource Id.
  /// [identityProviders] The configuration settings of each of the identity providers used to configure App Service Authentication/Authorization.
  /// [kind] Kind of resource.
  /// [login] The configuration settings of the login flow of users using App Service Authentication/Authorization.
  /// [name] Resource Name.
  /// [platform] The configuration settings of the platform of App Service Authentication/Authorization.
  /// [type] Resource type.
  GetWebAppAuthSettingsV2WithoutSecretsResult({
    required this.azureApiVersion,
    this.globalValidation,
    this.httpSettings,
    required this.id,
    this.identityProviders,
    this.kind,
    this.login,
    required this.name,
    this.platform,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': azureApiVersion,
      'globalValidation': ?globalValidation == null ? null : globalValidation!.toMap(),
      'httpSettings': ?httpSettings == null ? null : httpSettings!.toMap(),
      'id': id,
      'identityProviders': ?identityProviders == null ? null : identityProviders!.toMap(),
      'kind': ?kind,
      'login': ?login == null ? null : login!.toMap(),
      'name': name,
      'platform': ?platform == null ? null : platform!.toMap(),
      'type': type,
    };
  }

  factory GetWebAppAuthSettingsV2WithoutSecretsResult.fromMap(Map<String, dynamic> map) {
    return GetWebAppAuthSettingsV2WithoutSecretsResult(
      azureApiVersion: map['azureApiVersion'] as String,
      globalValidation: map['globalValidation'] == null ? null : GlobalValidationResponse.fromMap((map['globalValidation']! as Map).cast<String, dynamic>()),
      httpSettings: map['httpSettings'] == null ? null : HttpSettingsResponse.fromMap((map['httpSettings']! as Map).cast<String, dynamic>()),
      id: map['id'] as String,
      identityProviders: map['identityProviders'] == null ? null : IdentityProvidersResponse.fromMap((map['identityProviders']! as Map).cast<String, dynamic>()),
      kind: map['kind'] == null ? null : map['kind']! as String,
      login: map['login'] == null ? null : LoginResponse.fromMap((map['login']! as Map).cast<String, dynamic>()),
      name: map['name'] as String,
      platform: map['platform'] == null ? null : AuthPlatformResponse.fromMap((map['platform']! as Map).cast<String, dynamic>()),
      type: map['type'] as String,
    );
  }
}

