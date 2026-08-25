// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_mcp_server_interface.dart';
import 'get_mcp_server_tool.dart';

/// Result data returned by getMcpServer.
class GetMcpServerResult {
  /// Attributes of the Agent.
  final Map<String, String>? attributes;
  /// Create time.
  final String? createTime;
  /// The description of the MCP Server.
  final String? description;
  /// The display name of the MCP Server.
  final String? displayName;
  final String? filter;
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  /// The connection details for the MCP Server.
  final List<GetMcpServerInterface>? interfaces;
  final String? location;
  final String? mcpServerId;
  final String? project;
  /// A list of tools available with the MCP Server.
  final List<GetMcpServerTool>? tools;
  /// Update time.
  final String? updateTime;
  /// The URN of the MCP Server.
  final String? urn;

  /// Creates a new [GetMcpServerResult].
  /// [attributes] Attributes of the Agent.
  /// [createTime] Create time.
  /// [description] The description of the MCP Server.
  /// [displayName] The display name of the MCP Server.
  /// [filter] Optional.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [interfaces] The connection details for the MCP Server.
  /// [location] Optional.
  /// [mcpServerId] Optional.
  /// [project] Optional.
  /// [tools] A list of tools available with the MCP Server.
  /// [updateTime] Update time.
  /// [urn] The URN of the MCP Server.
  const GetMcpServerResult({
    this.attributes,
    this.createTime,
    this.description,
    this.displayName,
    this.filter,
    this.id,
    this.interfaces,
    this.location,
    this.mcpServerId,
    this.project,
    this.tools,
    this.updateTime,
    this.urn,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'attributes': ?attributes,
      'createTime': ?createTime,
      'description': ?description,
      'displayName': ?displayName,
      'filter': ?filter,
      'id': ?id,
      'interfaces': ?(() { final guardedValue = interfaces; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetMcpServerInterface, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'location': ?location,
      'mcpServerId': ?mcpServerId,
      'project': ?project,
      'tools': ?(() { final guardedValue = tools; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetMcpServerTool, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'updateTime': ?updateTime,
      'urn': ?urn,
    };
  }

  factory GetMcpServerResult.fromMap(Map<String, dynamic> map) {
    return GetMcpServerResult(
      attributes: (() { final guardedValue = map['attributes']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      createTime: (() { final guardedValue = map['createTime']; if (guardedValue == null) return null; return guardedValue as String; })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return guardedValue as String; })(),
      displayName: (() { final guardedValue = map['displayName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      filter: (() { final guardedValue = map['filter']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      interfaces: (() { final guardedValue = map['interfaces']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetMcpServerInterface>(guardedValue, (value) => GetMcpServerInterface.fromMap((value as Map).cast<String, dynamic>())); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return guardedValue as String; })(),
      mcpServerId: (() { final guardedValue = map['mcpServerId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return guardedValue as String; })(),
      tools: (() { final guardedValue = map['tools']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetMcpServerTool>(guardedValue, (value) => GetMcpServerTool.fromMap((value as Map).cast<String, dynamic>())); })(),
      updateTime: (() { final guardedValue = map['updateTime']; if (guardedValue == null) return null; return guardedValue as String; })(),
      urn: (() { final guardedValue = map['urn']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
