// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_zero_trust_access_ai_controls_mcp_portals_result_server.dart';

class GetZeroTrustAccessAiControlsMcpPortalsResult {
  /// Allow remote code execution in Dynamic Workers (beta)
  final pulumi.Input<bool> allowCodeMode;
  final pulumi.Input<String> createdAt;
  final pulumi.Input<String> createdBy;
  final pulumi.Input<String> description;
  final pulumi.Input<String> hostname;
  /// portal id
  final pulumi.Input<String> id;
  final pulumi.Input<String> modifiedAt;
  final pulumi.Input<String> modifiedBy;
  final pulumi.Input<String> name;
  /// Route outbound MCP traffic through Zero Trust Secure Web Gateway
  final pulumi.Input<bool> secureWebGateway;
  final pulumi.Input<List<GetZeroTrustAccessAiControlsMcpPortalsResultServer>> servers;

  /// Creates a new [GetZeroTrustAccessAiControlsMcpPortalsResult].
  /// [allowCodeMode] Allow remote code execution in Dynamic Workers (beta)
  /// [createdAt] Required.
  /// [createdBy] Required.
  /// [description] Required.
  /// [hostname] Required.
  /// [id] portal id
  /// [modifiedAt] Required.
  /// [modifiedBy] Required.
  /// [name] Required.
  /// [secureWebGateway] Route outbound MCP traffic through Zero Trust Secure Web Gateway
  /// [servers] Required.
  const GetZeroTrustAccessAiControlsMcpPortalsResult({
    required this.allowCodeMode,
    required this.createdAt,
    required this.createdBy,
    required this.description,
    required this.hostname,
    required this.id,
    required this.modifiedAt,
    required this.modifiedBy,
    required this.name,
    required this.secureWebGateway,
    required this.servers,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allowCodeMode': allowCodeMode,
      'createdAt': createdAt,
      'createdBy': createdBy,
      'description': description,
      'hostname': hostname,
      'id': id,
      'modifiedAt': modifiedAt,
      'modifiedBy': modifiedBy,
      'name': name,
      'secureWebGateway': secureWebGateway,
      'servers': pulumi.Input.mapInputValue<List<GetZeroTrustAccessAiControlsMcpPortalsResultServer>, List<Map<String, dynamic>>>(servers, (value) => pulumi.Input.encodeList<GetZeroTrustAccessAiControlsMcpPortalsResultServer, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory GetZeroTrustAccessAiControlsMcpPortalsResult.fromMap(Map<String, dynamic> map) {
    return GetZeroTrustAccessAiControlsMcpPortalsResult(
      allowCodeMode: pulumi.Input.fromValue(map['allowCodeMode'] as bool),
      createdAt: pulumi.Input.fromValue(map['createdAt'] as String),
      createdBy: pulumi.Input.fromValue(map['createdBy'] as String),
      description: pulumi.Input.fromValue(map['description'] as String),
      hostname: pulumi.Input.fromValue(map['hostname'] as String),
      id: pulumi.Input.fromValue(map['id'] as String),
      modifiedAt: pulumi.Input.fromValue(map['modifiedAt'] as String),
      modifiedBy: pulumi.Input.fromValue(map['modifiedBy'] as String),
      name: pulumi.Input.fromValue(map['name'] as String),
      secureWebGateway: pulumi.Input.fromValue(map['secureWebGateway'] as bool),
      servers: pulumi.Input.fromValue(pulumi.Input.decodeList<GetZeroTrustAccessAiControlsMcpPortalsResultServer>(map['servers']!, (value) => GetZeroTrustAccessAiControlsMcpPortalsResultServer.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}
