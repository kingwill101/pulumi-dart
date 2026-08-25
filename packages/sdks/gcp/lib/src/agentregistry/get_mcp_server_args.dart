// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_agentregistry_get_mcp_server_get_mcp_server_args_doc}
/// Arguments for getMcpServer.
/// {@endtemplate}
/// {@macro pulumi_agentregistry_get_mcp_server_get_mcp_server_args_doc}
class GetMcpServerArgs {
  /// A filter string that identifies a unique MCP server. This or `mcpServerId` must be set.
  final pulumi.Input<String?>? filter;
  /// The location of the resource.
  ///
  /// - - -
  final pulumi.Input<String> location;
  /// The unique identifier for the MCP Server. This or `filter` must be set.
  final pulumi.Input<String?>? mcpServerId;
  /// The project in which the resource belongs. If it
  /// is not provided, the provider project is used.
  final pulumi.Input<String?>? project;

  /// Creates a new [GetMcpServerArgs].
  /// [filter] A filter string that identifies a unique MCP server. This or `mcpServerId` must be set.
  /// [location] The location of the resource.
  /// [mcpServerId] The unique identifier for the MCP Server. This or `filter` must be set.
  /// [project] The project in which the resource belongs. If it
  const GetMcpServerArgs({
    this.filter,
    required this.location,
    this.mcpServerId,
    this.project,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'filter': ?filter,
      'location': location,
      'mcpServerId': ?mcpServerId,
      'project': ?project,
    };
  }

  factory GetMcpServerArgs.fromMap(Map<String, dynamic> map) {
    return GetMcpServerArgs(
      filter: (() { final guardedValue = map['filter']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      location: pulumi.Input.fromValue(map['location'] as String),
      mcpServerId: (() { final guardedValue = map['mcpServerId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
