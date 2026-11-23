// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'analyst_agent_persona_mcp_data_source_request_header.dart';

class AnalystAgentPersonaMcpDataSource {
  /// Input only. The API key of the MCP server.
  final pulumi.Input<String?>? apiKey;
  /// The HTTP header when the API key is passed in a request header
  /// (e.g. 'x-api-key', 'api-key', 'X-Auth-Token').
  final pulumi.Input<String?>? apiKeyHeader;
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
  /// Additional HTTP headers sent on every request to the MCP server, for
  /// example a static header required by an API gateway. Headers managed by the
  /// agent take precedence and cannot be set here. When empty, no additional
  /// headers are sent.
  final pulumi.Input<List<AnalystAgentPersonaMcpDataSourceRequestHeader>?>? requestHeaders;
  /// The URL of the MCP server.
  final pulumi.Input<String> serverUrl;
  /// The HTTP header name used to pass the agent session ID in MCP server
  /// requests (defaults to 'X-Session-Id' when unset). Must be a valid HTTP
  /// header field name (RFC 9110 token).
  final pulumi.Input<String?>? sessionIdHeader;
  /// The HTTP header name used to pass the agent task ID in MCP server
  /// requests (defaults to 'X-Task-Id' when unset). Must be a valid HTTP
  /// header field name (RFC 9110 token).
  final pulumi.Input<String?>? taskIdHeader;

  /// Creates a new [AnalystAgentPersonaMcpDataSource].
  /// [apiKey] Input only. The API key of the MCP server.
  /// [apiKeyHeader] The HTTP header when the API key is passed in a request header
  /// [apiKeyName] The API key parameter name.
  /// [clientId] The client ID for authentication.
  /// [clientSecret] Input only. The client secret for authentication.
  /// [description] The description of the MCP agent.
  /// [displayName] The display name of the persona, shown to users.
  /// [enabled] Whether this external data source is enabled for the current analysis.
  /// [oauthTokenUrl] The URL to use for retrieving the OAuth token.
  /// [prompt] The custom prompt for the MCP agent.
  /// [requestHeaders] Additional HTTP headers sent on every request to the MCP server, for
  /// [serverUrl] The URL of the MCP server.
  /// [sessionIdHeader] The HTTP header name used to pass the agent session ID in MCP server
  /// [taskIdHeader] The HTTP header name used to pass the agent task ID in MCP server
  const AnalystAgentPersonaMcpDataSource({
    this.apiKey,
    this.apiKeyHeader,
    this.apiKeyName,
    this.clientId,
    this.clientSecret,
    required this.description,
    required this.displayName,
    required this.enabled,
    this.oauthTokenUrl,
    this.prompt,
    this.requestHeaders,
    required this.serverUrl,
    this.sessionIdHeader,
    this.taskIdHeader,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'apiKey': ?apiKey,
      'apiKeyHeader': ?apiKeyHeader,
      'apiKeyName': ?apiKeyName,
      'clientId': ?clientId,
      'clientSecret': ?clientSecret,
      'description': description,
      'displayName': displayName,
      'enabled': enabled,
      'oauthTokenUrl': ?oauthTokenUrl,
      'prompt': ?prompt,
      'requestHeaders': ?pulumi.Input.mapOptionalInputValue<List<AnalystAgentPersonaMcpDataSourceRequestHeader>, List<Map<String, dynamic>>>(requestHeaders, (value) => pulumi.Input.encodeList<AnalystAgentPersonaMcpDataSourceRequestHeader, Map<String, dynamic>>(value, (value) => value.toMap())),
      'serverUrl': serverUrl,
      'sessionIdHeader': ?sessionIdHeader,
      'taskIdHeader': ?taskIdHeader,
    };
  }

  factory AnalystAgentPersonaMcpDataSource.fromMap(Map<String, dynamic> map) {
    return AnalystAgentPersonaMcpDataSource(
      apiKey: (() { final guardedValue = map['apiKey']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      apiKeyHeader: (() { final guardedValue = map['apiKeyHeader']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      apiKeyName: (() { final guardedValue = map['apiKeyName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      clientId: (() { final guardedValue = map['clientId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      clientSecret: (() { final guardedValue = map['clientSecret']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      description: pulumi.Input.fromValue(map['description'] as String),
      displayName: pulumi.Input.fromValue(map['displayName'] as String),
      enabled: pulumi.Input.fromValue(map['enabled'] as bool),
      oauthTokenUrl: (() { final guardedValue = map['oauthTokenUrl']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      prompt: (() { final guardedValue = map['prompt']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      requestHeaders: (() { final guardedValue = map['requestHeaders']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<AnalystAgentPersonaMcpDataSourceRequestHeader>(guardedValue, (value) => AnalystAgentPersonaMcpDataSourceRequestHeader.fromMap((value as Map).cast<String, dynamic>()))); })(),
      serverUrl: pulumi.Input.fromValue(map['serverUrl'] as String),
      sessionIdHeader: (() { final guardedValue = map['sessionIdHeader']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      taskIdHeader: (() { final guardedValue = map['taskIdHeader']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
