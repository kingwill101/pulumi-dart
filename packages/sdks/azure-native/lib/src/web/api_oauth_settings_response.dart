// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'api_oauth_settings_parameter_response.dart';

/// OAuth settings for the connection provider
class ApiOAuthSettingsResponse {
  /// Resource provider client id
  final pulumi.Input<String>? clientId;

  /// Client Secret needed for OAuth
  final pulumi.Input<String>? clientSecret;

  /// OAuth parameters key is the name of parameter
  final pulumi.Input<Map<String, ApiOAuthSettingsParameterResponse>>?
  customParameters;

  /// Identity provider
  final pulumi.Input<String>? identityProvider;

  /// Read only properties for this oauth setting.
  final pulumi.Input<dynamic>? properties;

  /// Url
  final pulumi.Input<String>? redirectUrl;

  /// OAuth scopes
  final pulumi.Input<List<String>>? scopes;

  /// Creates a new [ApiOAuthSettingsResponse].
  /// [clientId] Resource provider client id
  /// [clientSecret] Client Secret needed for OAuth
  /// [customParameters] OAuth parameters key is the name of parameter
  /// [identityProvider] Identity provider
  /// [properties] Read only properties for this oauth setting.
  /// [redirectUrl] Url
  /// [scopes] OAuth scopes
  ApiOAuthSettingsResponse({
    this.clientId,
    this.clientSecret,
    this.customParameters,
    this.identityProvider,
    this.properties,
    this.redirectUrl,
    this.scopes,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clientId': ?clientId,
      'clientSecret': ?clientSecret,
      'customParameters':
          ?pulumi.Input.mapOptionalInputValue<
            Map<String, ApiOAuthSettingsParameterResponse>,
            Map<String, Map<String, dynamic>>
          >(
            customParameters,
            (value) =>
                pulumi.Input.encodeMapValues<
                  ApiOAuthSettingsParameterResponse,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'identityProvider': ?identityProvider,
      'properties': ?properties,
      'redirectUrl': ?redirectUrl,
      'scopes': ?scopes,
    };
  }

  factory ApiOAuthSettingsResponse.fromMap(Map<String, dynamic> map) {
    return ApiOAuthSettingsResponse(
      clientId: (() {
        final guardedValue = map['clientId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      clientSecret: (() {
        final guardedValue = map['clientSecret'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      customParameters: (() {
        final guardedValue = map['customParameters'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeMapValues<ApiOAuthSettingsParameterResponse>(
            guardedValue,
            (value) => ApiOAuthSettingsParameterResponse.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
      identityProvider: (() {
        final guardedValue = map['identityProvider'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      properties: (() {
        final guardedValue = map['properties'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue);
      })(),
      redirectUrl: (() {
        final guardedValue = map['redirectUrl'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      scopes: (() {
        final guardedValue = map['scopes'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
      })(),
    );
  }
}
