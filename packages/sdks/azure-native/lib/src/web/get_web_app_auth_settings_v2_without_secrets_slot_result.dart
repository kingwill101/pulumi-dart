// ignore_for_file: unused_element, unnecessary_cast

import 'auth_platform_response.dart';
import 'global_validation_response.dart';
import 'http_settings_response.dart';
import 'identity_providers_response.dart';
import 'login_response.dart';

/// Result data returned by getWebAppAuthSettingsV2WithoutSecretsSlot.
class GetWebAppAuthSettingsV2WithoutSecretsSlotResult {
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

  /// Creates a new [GetWebAppAuthSettingsV2WithoutSecretsSlotResult].
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
  GetWebAppAuthSettingsV2WithoutSecretsSlotResult({
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
      'globalValidation': ?globalValidation?.toMap(),
      'httpSettings': ?httpSettings?.toMap(),
      'id': id,
      'identityProviders': ?identityProviders?.toMap(),
      'kind': ?kind,
      'login': ?login?.toMap(),
      'name': name,
      'platform': ?platform?.toMap(),
      'type': type,
    };
  }

  factory GetWebAppAuthSettingsV2WithoutSecretsSlotResult.fromMap(
    Map<String, dynamic> map,
  ) {
    return GetWebAppAuthSettingsV2WithoutSecretsSlotResult(
      azureApiVersion: map['azureApiVersion'] as String,
      globalValidation: (() {
        final guardedValue = map['globalValidation'];
        if (guardedValue == null) return null;
        return GlobalValidationResponse.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      })(),
      httpSettings: (() {
        final guardedValue = map['httpSettings'];
        if (guardedValue == null) return null;
        return HttpSettingsResponse.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      })(),
      id: map['id'] as String,
      identityProviders: (() {
        final guardedValue = map['identityProviders'];
        if (guardedValue == null) return null;
        return IdentityProvidersResponse.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      })(),
      kind: (() {
        final guardedValue = map['kind'];
        if (guardedValue == null) return null;
        return guardedValue as String;
      })(),
      login: (() {
        final guardedValue = map['login'];
        if (guardedValue == null) return null;
        return LoginResponse.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      })(),
      name: map['name'] as String,
      platform: (() {
        final guardedValue = map['platform'];
        if (guardedValue == null) return null;
        return AuthPlatformResponse.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      })(),
      type: map['type'] as String,
    );
  }
}
