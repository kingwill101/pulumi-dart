// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_action_gateway_endpoint_insight.dart';
import 'get_action_gateway_endpoint_version.dart';

/// Result data returned by getActionGatewayEndpoint.
class GetActionGatewayEndpointResult {
  final String? actorId;
  /// When the endpoint was created.
  final String? createdAt;
  final String? id;
  final List<GetActionGatewayEndpointInsight>? insights;
  /// Whether this is the default endpoint that a generic `/mcp` request resolves to for your user.
  final bool? isDefault;
  /// The MCP URL that follows the endpoint's current head version.
  final String? mcpUrl;
  final String? name;
  /// When the endpoint was last modified.
  final String? updatedAt;
  /// The MCP URL pinned to the current head version.
  final String? versionMcpUrl;
  /// The head version the endpoint resolves to, with `actorId`, `tools`, `pinnedTools`, `policy`, `config`, `network`, `id`, `versionNumber`, and `promotedFromVersionNumber` as described on the `digitalocean.ActionGatewayEndpoint` resource page. An endpoint with no live version exports no `version` block.
  final List<GetActionGatewayEndpointVersion>? versions;

  /// Creates a new [GetActionGatewayEndpointResult].
  /// [actorId] Optional.
  /// [createdAt] When the endpoint was created.
  /// [id] Optional.
  /// [insights] Optional.
  /// [isDefault] Whether this is the default endpoint that a generic `/mcp` request resolves to for your user.
  /// [mcpUrl] The MCP URL that follows the endpoint's current head version.
  /// [name] Optional.
  /// [updatedAt] When the endpoint was last modified.
  /// [versionMcpUrl] The MCP URL pinned to the current head version.
  /// [versions] The head version the endpoint resolves to, with `actorId`, `tools`, `pinnedTools`, `policy`, `config`, `network`, `id`, `versionNumber`, and `promotedFromVersionNumber` as described on the `digitalocean.ActionGatewayEndpoint` resource page. An endpoint with no live version exports no `version` block.
  const GetActionGatewayEndpointResult({
    this.actorId,
    this.createdAt,
    this.id,
    this.insights,
    this.isDefault,
    this.mcpUrl,
    this.name,
    this.updatedAt,
    this.versionMcpUrl,
    this.versions,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'actorId': ?actorId,
      'createdAt': ?createdAt,
      'id': ?id,
      'insights': ?(() { final guardedValue = insights; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetActionGatewayEndpointInsight, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'isDefault': ?isDefault,
      'mcpUrl': ?mcpUrl,
      'name': ?name,
      'updatedAt': ?updatedAt,
      'versionMcpUrl': ?versionMcpUrl,
      'versions': ?(() { final guardedValue = versions; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetActionGatewayEndpointVersion, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
    };
  }

  factory GetActionGatewayEndpointResult.fromMap(Map<String, dynamic> map) {
    return GetActionGatewayEndpointResult(
      actorId: (() { final guardedValue = map['actorId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      createdAt: (() { final guardedValue = map['createdAt']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      insights: (() { final guardedValue = map['insights']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetActionGatewayEndpointInsight>(guardedValue, (value) => GetActionGatewayEndpointInsight.fromMap((value as Map).cast<String, dynamic>())); })(),
      isDefault: (() { final guardedValue = map['isDefault']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      mcpUrl: (() { final guardedValue = map['mcpUrl']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      updatedAt: (() { final guardedValue = map['updatedAt']; if (guardedValue == null) return null; return guardedValue as String; })(),
      versionMcpUrl: (() { final guardedValue = map['versionMcpUrl']; if (guardedValue == null) return null; return guardedValue as String; })(),
      versions: (() { final guardedValue = map['versions']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetActionGatewayEndpointVersion>(guardedValue, (value) => GetActionGatewayEndpointVersion.fromMap((value as Map).cast<String, dynamic>())); })(),
    );
  }
}
