// ignore_for_file: unused_element, unnecessary_cast


class CxToolVersionToolOpenApiSpecAuthenticationApiKeyConfig {
  /// Optional. The API key. If the `secretVersionForApiKey`` field is set, this field will be ignored.
  /// **Note**: This property is sensitive and will not be displayed in the plan.
  final String? apiKey;
  /// The parameter name or the header name of the API key.
  /// E.g., If the API request is "https://example.com/act?X-Api-Key=", "X-Api-Key" would be the parameter name.
  final String keyName;
  /// Key location in the request.
  /// See [RequestLocation](https://cloud.google.com/dialogflow/cx/docs/reference/rest/v3/projects.locations.agents.tools#requestlocation) for valid values.
  final String requestLocation;
  /// Optional. The name of the SecretManager secret version resource storing the API key.
  /// If this field is set, the apiKey field will be ignored.
  /// Format: projects/{project}/secrets/{secret}/versions/{version}
  final String? secretVersionForApiKey;

  /// Creates a new [CxToolVersionToolOpenApiSpecAuthenticationApiKeyConfig].
  /// [apiKey] Optional. The API key. If the `secretVersionForApiKey`` field is set, this field will be ignored.
  /// [keyName] The parameter name or the header name of the API key.
  /// [requestLocation] Key location in the request.
  /// [secretVersionForApiKey] Optional. The name of the SecretManager secret version resource storing the API key.
  CxToolVersionToolOpenApiSpecAuthenticationApiKeyConfig({
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

  factory CxToolVersionToolOpenApiSpecAuthenticationApiKeyConfig.fromMap(Map<String, dynamic> map) {
    return CxToolVersionToolOpenApiSpecAuthenticationApiKeyConfig(
      apiKey: map['apiKey'] == null ? null : map['apiKey'] as String,
      keyName: map['keyName'] as String,
      requestLocation: map['requestLocation'] as String,
      secretVersionForApiKey: map['secretVersionForApiKey'] == null ? null : map['secretVersionForApiKey'] as String,
    );
  }
}

