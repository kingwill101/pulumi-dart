// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AgentRemoteA2aAgentA2aConfigApiAuthenticationApiKeyConfig {
  /// The name of the SecretManager secret version resource storing the API key.
  /// Format: `projects/{project}/secrets/{secret}/versions/{version}`
  /// Note: You should grant `roles/secretmanager.secretAccessor` role to the CES
  /// service agent
  /// `service-@gcp-sa-ces.iam.gserviceaccount.com`.
  final pulumi.Input<String> apiKeySecretVersion;
  /// The parameter name or the header name of the API key.
  /// E.g., If the API request is "https://example.com/act?X-Api-Key=", "X-Api-Key" would be the parameter name.
  final pulumi.Input<String> keyName;
  /// Key location in the request.
  /// Possible values:
  /// HEADER
  /// QUERY_STRING
  final pulumi.Input<String> requestLocation;

  /// Creates a new [AgentRemoteA2aAgentA2aConfigApiAuthenticationApiKeyConfig].
  /// [apiKeySecretVersion] The name of the SecretManager secret version resource storing the API key.
  /// [keyName] The parameter name or the header name of the API key.
  /// [requestLocation] Key location in the request.
  const AgentRemoteA2aAgentA2aConfigApiAuthenticationApiKeyConfig({
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

  factory AgentRemoteA2aAgentA2aConfigApiAuthenticationApiKeyConfig.fromMap(Map<String, dynamic> map) {
    return AgentRemoteA2aAgentA2aConfigApiAuthenticationApiKeyConfig(
      apiKeySecretVersion: pulumi.Input.fromValue(map['apiKeySecretVersion'] as String),
      keyName: pulumi.Input.fromValue(map['keyName'] as String),
      requestLocation: pulumi.Input.fromValue(map['requestLocation'] as String),
    );
  }
}
