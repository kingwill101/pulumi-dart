// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'tool_mcp_tool_api_authentication.dart';
import 'tool_mcp_tool_service_directory_config.dart';
import 'tool_mcp_tool_tls_config.dart';

class ToolMcpTool {
  /// (Output)
  /// Authentication information required for API calls.
  /// Structure is documented below.
  final pulumi.Input<List<ToolMcpToolApiAuthentication>?>? apiAuthentications;
  /// (Output)
  /// The custom headers to send in the request to the MCP server. The values must be in the format `$context.variables.&lt;name_of_variable&gt;` and can be set in the session variables.
  final pulumi.Input<Map<String, String>?>? customHeaders;
  /// (Output)
  /// The description of the system tool.
  final pulumi.Input<String?>? description;
  /// (Output)
  /// The schema of the input arguments of the MCP tool. Represents a JSON object.
  final pulumi.Input<String?>? inputSchema;
  /// (Output)
  /// The name of the system tool.
  final pulumi.Input<String?>? name;
  /// (Output)
  /// The name override of the MCP tool. This is populated if the name was overridden by a Toolset override.
  final pulumi.Input<String?>? nameOverride;
  /// (Output)
  /// The schema of the output arguments of the MCP tool. Represents a JSON object.
  final pulumi.Input<String?>? outputSchema;
  /// (Output)
  /// The server address of the MCP server, e.g., "https://example.com/mcp/". If the server is built with the MCP SDK, the url should be suffixed with "/mcp/". Only Streamable HTTP transport based servers are supported. This is the same as the serverAddress in the McpToolset.
  final pulumi.Input<String?>? serverAddress;
  /// (Output)
  /// Configuration for tools using Service Directory.
  /// Structure is documented below.
  final pulumi.Input<List<ToolMcpToolServiceDirectoryConfig>?>? serviceDirectoryConfigs;
  /// (Output)
  /// The state of the MCP tool.
  /// Possible values:
  /// STATE_UNSPECIFIED
  /// ACTIVE
  /// INACTIVE
  /// STALE
  final pulumi.Input<String?>? state;
  /// (Output)
  /// The TLS configuration.
  /// Structure is documented below.
  final pulumi.Input<List<ToolMcpToolTlsConfig>?>? tlsConfigs;

  /// Creates a new [ToolMcpTool].
  /// [apiAuthentications] (Output)
  /// [customHeaders] (Output)
  /// [description] (Output)
  /// [inputSchema] (Output)
  /// [name] (Output)
  /// [nameOverride] (Output)
  /// [outputSchema] (Output)
  /// [serverAddress] (Output)
  /// [serviceDirectoryConfigs] (Output)
  /// [state] (Output)
  /// [tlsConfigs] (Output)
  const ToolMcpTool({
    this.apiAuthentications,
    this.customHeaders,
    this.description,
    this.inputSchema,
    this.name,
    this.nameOverride,
    this.outputSchema,
    this.serverAddress,
    this.serviceDirectoryConfigs,
    this.state,
    this.tlsConfigs,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'apiAuthentications': ?pulumi.Input.mapOptionalInputValue<List<ToolMcpToolApiAuthentication>, List<Map<String, dynamic>>>(apiAuthentications, (value) => pulumi.Input.encodeList<ToolMcpToolApiAuthentication, Map<String, dynamic>>(value, (value) => value.toMap())),
      'customHeaders': ?customHeaders,
      'description': ?description,
      'inputSchema': ?inputSchema,
      'name': ?name,
      'nameOverride': ?nameOverride,
      'outputSchema': ?outputSchema,
      'serverAddress': ?serverAddress,
      'serviceDirectoryConfigs': ?pulumi.Input.mapOptionalInputValue<List<ToolMcpToolServiceDirectoryConfig>, List<Map<String, dynamic>>>(serviceDirectoryConfigs, (value) => pulumi.Input.encodeList<ToolMcpToolServiceDirectoryConfig, Map<String, dynamic>>(value, (value) => value.toMap())),
      'state': ?state,
      'tlsConfigs': ?pulumi.Input.mapOptionalInputValue<List<ToolMcpToolTlsConfig>, List<Map<String, dynamic>>>(tlsConfigs, (value) => pulumi.Input.encodeList<ToolMcpToolTlsConfig, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory ToolMcpTool.fromMap(Map<String, dynamic> map) {
    return ToolMcpTool(
      apiAuthentications: (() { final guardedValue = map['apiAuthentications']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ToolMcpToolApiAuthentication>(guardedValue, (value) => ToolMcpToolApiAuthentication.fromMap((value as Map).cast<String, dynamic>()))); })(),
      customHeaders: (() { final guardedValue = map['customHeaders']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      inputSchema: (() { final guardedValue = map['inputSchema']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      nameOverride: (() { final guardedValue = map['nameOverride']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      outputSchema: (() { final guardedValue = map['outputSchema']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      serverAddress: (() { final guardedValue = map['serverAddress']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      serviceDirectoryConfigs: (() { final guardedValue = map['serviceDirectoryConfigs']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ToolMcpToolServiceDirectoryConfig>(guardedValue, (value) => ToolMcpToolServiceDirectoryConfig.fromMap((value as Map).cast<String, dynamic>()))); })(),
      state: (() { final guardedValue = map['state']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tlsConfigs: (() { final guardedValue = map['tlsConfigs']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ToolMcpToolTlsConfig>(guardedValue, (value) => ToolMcpToolTlsConfig.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}
