// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'toolset_mcp_toolset_api_authentication.dart';
import 'toolset_mcp_toolset_service_directory_config.dart';
import 'toolset_mcp_toolset_tls_config.dart';
import 'toolset_mcp_toolset_tool_override.dart';

class ToolsetMcpToolset {
  /// Authentication information required to access tools and execute a tool
  /// against the MCP server. For API key auth, the API key can only be sent in
  /// the request header; sending it via query parameters is not supported.
  /// Structure is documented below.
  final pulumi.Input<ToolsetMcpToolsetApiAuthentication?>? apiAuthentication;
  /// The custom headers to send in the request to the MCP server. The values
  /// must be in the format `$context.variables.&lt;name_of_variable&gt;` and can be
  /// set in the session variables. See
  /// https://docs.cloud.google.com/customer-engagement-ai/conversational-agents/ps/tool/open-api#openapi-injection
  /// for more details.
  final pulumi.Input<Map<String, String>?>? customHeaders;
  /// The address of the MCP server, for example, "https://example.com/mcp/". If
  /// the server is built with the MCP SDK, the url should be suffixed with
  /// "/mcp/". Only Streamable HTTP transport based servers are supported. See
  /// https://modelcontextprotocol.io/specification/2025-03-26/basic/transports#streamable-http
  /// for more details.
  final pulumi.Input<String> serverAddress;
  /// Service Directory configuration for VPC-SC, used to resolve service names
  /// within a perimeter.
  /// Structure is documented below.
  final pulumi.Input<ToolsetMcpToolsetServiceDirectoryConfig?>? serviceDirectoryConfig;
  /// The TLS configuration. Includes the custom server certificates that the
  /// client should trust.
  /// Structure is documented below.
  final pulumi.Input<ToolsetMcpToolsetTlsConfig?>? tlsConfig;
  /// A list of tool overrides for the toolset.
  /// Structure is documented below.
  final pulumi.Input<List<ToolsetMcpToolsetToolOverride>?>? toolOverrides;

  /// Creates a new [ToolsetMcpToolset].
  /// [apiAuthentication] Authentication information required to access tools and execute a tool
  /// [customHeaders] The custom headers to send in the request to the MCP server. The values
  /// [serverAddress] The address of the MCP server, for example, "https://example.com/mcp/". If
  /// [serviceDirectoryConfig] Service Directory configuration for VPC-SC, used to resolve service names
  /// [tlsConfig] The TLS configuration. Includes the custom server certificates that the
  /// [toolOverrides] A list of tool overrides for the toolset.
  const ToolsetMcpToolset({
    this.apiAuthentication,
    this.customHeaders,
    required this.serverAddress,
    this.serviceDirectoryConfig,
    this.tlsConfig,
    this.toolOverrides,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'apiAuthentication': ?pulumi.Input.mapOptionalInputValue<ToolsetMcpToolsetApiAuthentication, Map<String, dynamic>>(apiAuthentication, (value) => value.toMap()),
      'customHeaders': ?customHeaders,
      'serverAddress': serverAddress,
      'serviceDirectoryConfig': ?pulumi.Input.mapOptionalInputValue<ToolsetMcpToolsetServiceDirectoryConfig, Map<String, dynamic>>(serviceDirectoryConfig, (value) => value.toMap()),
      'tlsConfig': ?pulumi.Input.mapOptionalInputValue<ToolsetMcpToolsetTlsConfig, Map<String, dynamic>>(tlsConfig, (value) => value.toMap()),
      'toolOverrides': ?pulumi.Input.mapOptionalInputValue<List<ToolsetMcpToolsetToolOverride>, List<Map<String, dynamic>>>(toolOverrides, (value) => pulumi.Input.encodeList<ToolsetMcpToolsetToolOverride, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory ToolsetMcpToolset.fromMap(Map<String, dynamic> map) {
    return ToolsetMcpToolset(
      apiAuthentication: (() { final guardedValue = map['apiAuthentication']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ToolsetMcpToolsetApiAuthentication.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      customHeaders: (() { final guardedValue = map['customHeaders']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      serverAddress: pulumi.Input.fromValue(map['serverAddress'] as String),
      serviceDirectoryConfig: (() { final guardedValue = map['serviceDirectoryConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ToolsetMcpToolsetServiceDirectoryConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      tlsConfig: (() { final guardedValue = map['tlsConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ToolsetMcpToolsetTlsConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      toolOverrides: (() { final guardedValue = map['toolOverrides']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ToolsetMcpToolsetToolOverride>(guardedValue, (value) => ToolsetMcpToolsetToolOverride.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}
