// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ToolsetMcpToolsetApiAuthenticationApiKeyConfig {
  /// The name of the SecretManager secret version resource storing the API key.
  /// Format: `projects/{project}/secrets/{secret}/versions/{version}`
  /// Note: You should grant `roles/secretmanager.secretAccessor` role to the CES
  /// service agent
  /// `service-@gcp-sa-ces.iam.gserviceaccount.com`.
  final pulumi.Input<String> apiKeySecretVersion;
  /// The parameter name or the header name of the API key.
  /// E.g., If the API request is "https://example.com/act?X-Api-Key=", "X-Api-Key" would be the parameter name.
  final pulumi.Input<String> keyName;
  /// Key location in the request. For API key auth on MCP toolsets,
  /// the API key can only be sent in the request header.
  /// Possible values:
  /// HEADER
  final pulumi.Input<String> requestLocation;

  /// Creates a new [ToolsetMcpToolsetApiAuthenticationApiKeyConfig].
  /// [apiKeySecretVersion] The name of the SecretManager secret version resource storing the API key.
  /// [keyName] The parameter name or the header name of the API key.
  /// [requestLocation] Key location in the request. For API key auth on MCP toolsets,
  const ToolsetMcpToolsetApiAuthenticationApiKeyConfig({
    required this.apiKeySecretVersion,
    required this.keyName,
    required this.requestLocation,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'apiKeySecretVersion': apiKeySecretVersion,
      'keyName': keyName,
      'requestLocation': requestLocation,
    };
  }

  factory ToolsetMcpToolsetApiAuthenticationApiKeyConfig.fromMap(Map<String, dynamic> map) {
    return ToolsetMcpToolsetApiAuthenticationApiKeyConfig(
      apiKeySecretVersion: pulumi.Input.fromValue(map['apiKeySecretVersion'] as String),
      keyName: pulumi.Input.fromValue(map['keyName'] as String),
      requestLocation: pulumi.Input.fromValue(map['requestLocation'] as String),
    );
  }
}
