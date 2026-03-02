// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ToolOpenApiToolApiAuthenticationApiKeyConfig {
  /// (Output)
  /// The name of the SecretManager secret version resource storing the API key.
  /// Format: `projects/{project}/secrets/{secret}/versions/{version}`
  /// Note: You should grant `roles/secretmanager.secretAccessor` role to the CES
  /// service agent
  /// `service-<PROJECT-NUMBER>@gcp-sa-ces.iam.gserviceaccount.com`.
  final pulumi.Input<String>? apiKeySecretVersion;
  /// (Output)
  /// The parameter name or the header name of the API key.
  /// E.g., If the API request is "https://example.com/act?X-Api-Key=", "X-Api-Key" would be the parameter name.
  final pulumi.Input<String>? keyName;
  /// (Output)
  /// Key location in the request.
  /// Possible values:
  /// HEADER
  /// QUERY_STRING
  final pulumi.Input<String>? requestLocation;

  /// Creates a new [ToolOpenApiToolApiAuthenticationApiKeyConfig].
  /// [apiKeySecretVersion] (Output)
  /// [keyName] (Output)
  /// [requestLocation] (Output)
  ToolOpenApiToolApiAuthenticationApiKeyConfig({
    this.apiKeySecretVersion,
    this.keyName,
    this.requestLocation,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'apiKeySecretVersion': ?apiKeySecretVersion,
      'keyName': ?keyName,
      'requestLocation': ?requestLocation,
    };
  }

  factory ToolOpenApiToolApiAuthenticationApiKeyConfig.fromMap(Map<String, dynamic> map) {
    return ToolOpenApiToolApiAuthenticationApiKeyConfig(
      apiKeySecretVersion: map['apiKeySecretVersion'] == null ? null : (map['apiKeySecretVersion'] as String).input(),
      keyName: map['keyName'] == null ? null : (map['keyName'] as String).input(),
      requestLocation: map['requestLocation'] == null ? null : (map['requestLocation'] as String).input(),
    );
  }
}

