// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AnalystAgentPersonaMcpDataSource {
  /// Input only. The API key of the MCP server.
  final pulumi.Input<String?>? apiKey;
  /// The API key parameter name.
  final pulumi.Input<String?>? apiKeyName;
  /// The client ID for authentication.
  final pulumi.Input<String?>? clientId;
  /// Input only. The client secret for authentication.
  final pulumi.Input<String?>? clientSecret;
  /// The description of the MCP agent.
  final pulumi.Input<String> description;
  /// The display name of the persona, shown to users.
  final pulumi.Input<String> displayName;
  /// Whether this external data source is enabled for the current analysis.
  final pulumi.Input<bool> enabled;
  /// The URL to use for retrieving the OAuth token.
  final pulumi.Input<String?>? oauthTokenUrl;
  /// The custom prompt for the MCP agent.
  final pulumi.Input<String?>? prompt;
  /// The URL of the MCP server.
  final pulumi.Input<String> serverUrl;

  /// Creates a new [AnalystAgentPersonaMcpDataSource].
  /// [apiKey] Input only. The API key of the MCP server.
  /// [apiKeyName] The API key parameter name.
  /// [clientId] The client ID for authentication.
  /// [clientSecret] Input only. The client secret for authentication.
  /// [description] The description of the MCP agent.
  /// [displayName] The display name of the persona, shown to users.
  /// [enabled] Whether this external data source is enabled for the current analysis.
  /// [oauthTokenUrl] The URL to use for retrieving the OAuth token.
  /// [prompt] The custom prompt for the MCP agent.
  /// [serverUrl] The URL of the MCP server.
  const AnalystAgentPersonaMcpDataSource({
    this.apiKey,
    this.apiKeyName,
    this.clientId,
    this.clientSecret,
    required this.description,
    required this.displayName,
    required this.enabled,
    this.oauthTokenUrl,
    this.prompt,
    required this.serverUrl,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'apiKey': ?apiKey,
      'apiKeyName': ?apiKeyName,
      'clientId': ?clientId,
      'clientSecret': ?clientSecret,
      'description': description,
      'displayName': displayName,
      'enabled': enabled,
      'oauthTokenUrl': ?oauthTokenUrl,
      'prompt': ?prompt,
      'serverUrl': serverUrl,
    };
  }

  factory AnalystAgentPersonaMcpDataSource.fromMap(Map<String, dynamic> map) {
    return AnalystAgentPersonaMcpDataSource(
      apiKey: (() { final guardedValue = map['apiKey']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      apiKeyName: (() { final guardedValue = map['apiKeyName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      clientId: (() { final guardedValue = map['clientId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      clientSecret: (() { final guardedValue = map['clientSecret']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      description: pulumi.Input.fromValue(map['description'] as String),
      displayName: pulumi.Input.fromValue(map['displayName'] as String),
      enabled: pulumi.Input.fromValue(map['enabled'] as bool),
      oauthTokenUrl: (() { final guardedValue = map['oauthTokenUrl']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      prompt: (() { final guardedValue = map['prompt']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      serverUrl: pulumi.Input.fromValue(map['serverUrl'] as String),
    );
  }
}
