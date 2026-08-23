// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_mcp_server_interface.dart';
import 'get_mcp_server_tool.dart';

/// Result data returned by getMcpServer.
class GetMcpServerResult {
  /// Attributes of the Agent.
  final Map<String, String> attributes;
  /// Create time.
  final String createTime;
  /// The description of the MCP Server.
  final String description;
  /// The display name of the MCP Server.
  final String displayName;
  final String? filter;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  /// The connection details for the MCP Server.
  final List<GetMcpServerInterface> interfaces;
  final String location;
  final String mcpServerId;
  final String project;
  /// A list of tools available with the MCP Server.
  final List<GetMcpServerTool> tools;
  /// Update time.
  final String updateTime;
  /// The URN of the MCP Server.
  final String urn;

  /// Creates a new [GetMcpServerResult].
  /// [attributes] Attributes of the Agent.
  /// [createTime] Create time.
  /// [description] The description of the MCP Server.
  /// [displayName] The display name of the MCP Server.
  /// [filter] Optional.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [interfaces] The connection details for the MCP Server.
  /// [location] Required.
  /// [mcpServerId] Required.
  /// [project] Required.
  /// [tools] A list of tools available with the MCP Server.
  /// [updateTime] Update time.
  /// [urn] The URN of the MCP Server.
  const GetMcpServerResult({
    required this.attributes,
    required this.createTime,
    required this.description,
    required this.displayName,
    this.filter,
    required this.id,
    required this.interfaces,
    required this.location,
    required this.mcpServerId,
    required this.project,
    required this.tools,
    required this.updateTime,
    required this.urn,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'attributes': attributes,
      'createTime': createTime,
      'description': description,
      'displayName': displayName,
      'filter': ?filter,
      'id': id,
      'interfaces': pulumi.Input.encodeList<GetMcpServerInterface, Map<String, dynamic>>(interfaces, (value) => value.toMap()),
      'location': location,
      'mcpServerId': mcpServerId,
      'project': project,
      'tools': pulumi.Input.encodeList<GetMcpServerTool, Map<String, dynamic>>(tools, (value) => value.toMap()),
      'updateTime': updateTime,
      'urn': urn,
    };
  }

  factory GetMcpServerResult.fromMap(Map<String, dynamic> map) {
    return GetMcpServerResult(
      attributes: (map['attributes'] as Map).cast<String, String>(),
      createTime: map['createTime'] as String,
      description: map['description'] as String,
      displayName: map['displayName'] as String,
      filter: (() { final guardedValue = map['filter']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: map['id'] as String,
      interfaces: pulumi.Input.decodeList<GetMcpServerInterface>(map['interfaces']!, (value) => GetMcpServerInterface.fromMap((value as Map).cast<String, dynamic>())),
      location: map['location'] as String,
      mcpServerId: map['mcpServerId'] as String,
      project: map['project'] as String,
      tools: pulumi.Input.decodeList<GetMcpServerTool>(map['tools']!, (value) => GetMcpServerTool.fromMap((value as Map).cast<String, dynamic>())),
      updateTime: map['updateTime'] as String,
      urn: map['urn'] as String,
    );
  }
}
