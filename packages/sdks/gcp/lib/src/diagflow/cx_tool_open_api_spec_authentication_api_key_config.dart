// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class CxToolOpenApiSpecAuthenticationApiKeyConfig {
  /// Optional. The API key. If the `secretVersionForApiKey`` field is set, this field will be ignored.
  /// **Note**: This property is sensitive and will not be displayed in the plan.
  final pulumi.Input<String>? apiKey;

  /// The parameter name or the header name of the API key.
  /// E.g., If the API request is "https://example.com/act?X-Api-Key=", "X-Api-Key" would be the parameter name.
  final pulumi.Input<String> keyName;

  /// Key location in the request.
  /// See [RequestLocation](https://cloud.google.com/dialogflow/cx/docs/reference/rest/v3/projects.locations.agents.tools#requestlocation) for valid values.
  final pulumi.Input<String> requestLocation;

  /// Optional. The name of the SecretManager secret version resource storing the API key.
  /// If this field is set, the apiKey field will be ignored.
  /// Format: projects/{project}/secrets/{secret}/versions/{version}
  final pulumi.Input<String>? secretVersionForApiKey;

  /// Creates a new [CxToolOpenApiSpecAuthenticationApiKeyConfig].
  /// [apiKey] Optional. The API key. If the `secretVersionForApiKey`` field is set, this field will be ignored.
  /// [keyName] The parameter name or the header name of the API key.
  /// [requestLocation] Key location in the request.
  /// [secretVersionForApiKey] Optional. The name of the SecretManager secret version resource storing the API key.
  CxToolOpenApiSpecAuthenticationApiKeyConfig({
    this.apiKey,
    required this.keyName,
    required this.requestLocation,
    this.secretVersionForApiKey,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'apiKey': ?apiKey,
      'keyName': keyName,
      'requestLocation': requestLocation,
      'secretVersionForApiKey': ?secretVersionForApiKey,
    };
  }

  factory CxToolOpenApiSpecAuthenticationApiKeyConfig.fromMap(
    Map<String, dynamic> map,
  ) {
    return CxToolOpenApiSpecAuthenticationApiKeyConfig(
      apiKey: (() {
        final guardedValue = map['apiKey'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      keyName: pulumi.Input.fromValue(map['keyName'] as String),
      requestLocation: pulumi.Input.fromValue(map['requestLocation'] as String),
      secretVersionForApiKey: (() {
        final guardedValue = map['secretVersionForApiKey'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
