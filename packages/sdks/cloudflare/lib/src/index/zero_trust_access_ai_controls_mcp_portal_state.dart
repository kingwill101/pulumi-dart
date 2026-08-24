// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'zero_trust_access_ai_controls_mcp_portal_server.dart';

/// Input properties used for looking up and filtering ZeroTrustAccessAiControlsMcpPortal resources.
class ZeroTrustAccessAiControlsMcpPortalState {
  final pulumi.Input<String?>? accountId;
  /// Allow remote code execution in Dynamic Workers (beta)
  final pulumi.Input<bool?>? allowCodeMode;
  final pulumi.Input<String?>? createdAt;
  final pulumi.Input<String?>? createdBy;
  final pulumi.Input<String?>? description;
  final pulumi.Input<String?>? hostname;
  final pulumi.Input<String?>? modifiedAt;
  final pulumi.Input<String?>? modifiedBy;
  final pulumi.Input<String?>? name;
  /// Route outbound MCP traffic through Zero Trust Secure Web Gateway
  final pulumi.Input<bool?>? secureWebGateway;
  final pulumi.Input<List<ZeroTrustAccessAiControlsMcpPortalServer>?>? servers;
  /// portal id
  final pulumi.Input<String?>? zeroTrustAccessAiControlsMcpPortalId;

  /// Creates a new [ZeroTrustAccessAiControlsMcpPortalState].
  /// [accountId] Optional.
  /// [allowCodeMode] Allow remote code execution in Dynamic Workers (beta)
  /// [createdAt] Optional.
  /// [createdBy] Optional.
  /// [description] Optional.
  /// [hostname] Optional.
  /// [modifiedAt] Optional.
  /// [modifiedBy] Optional.
  /// [name] Optional.
  /// [secureWebGateway] Route outbound MCP traffic through Zero Trust Secure Web Gateway
  /// [servers] Optional.
  /// [zeroTrustAccessAiControlsMcpPortalId] portal id
  const ZeroTrustAccessAiControlsMcpPortalState({
    this.accountId,
    this.allowCodeMode,
    this.createdAt,
    this.createdBy,
    this.description,
    this.hostname,
    this.modifiedAt,
    this.modifiedBy,
    this.name,
    this.secureWebGateway,
    this.servers,
    this.zeroTrustAccessAiControlsMcpPortalId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': ?accountId,
      'allowCodeMode': ?allowCodeMode,
      'createdAt': ?createdAt,
      'createdBy': ?createdBy,
      'description': ?description,
      'hostname': ?hostname,
      'modifiedAt': ?modifiedAt,
      'modifiedBy': ?modifiedBy,
      'name': ?name,
      'secureWebGateway': ?secureWebGateway,
      'servers': ?pulumi.Input.mapOptionalInputValue<List<ZeroTrustAccessAiControlsMcpPortalServer>, List<Map<String, dynamic>>>(servers, (value) => pulumi.Input.encodeList<ZeroTrustAccessAiControlsMcpPortalServer, Map<String, dynamic>>(value, (value) => value.toMap())),
      'zeroTrustAccessAiControlsMcpPortalId': ?zeroTrustAccessAiControlsMcpPortalId,
    };
  }

  factory ZeroTrustAccessAiControlsMcpPortalState.fromMap(Map<String, dynamic> map) {
    return ZeroTrustAccessAiControlsMcpPortalState(
      accountId: (() { final guardedValue = map['accountId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      allowCodeMode: (() { final guardedValue = map['allowCodeMode']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      createdAt: (() { final guardedValue = map['createdAt']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      createdBy: (() { final guardedValue = map['createdBy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      hostname: (() { final guardedValue = map['hostname']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      modifiedAt: (() { final guardedValue = map['modifiedAt']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      modifiedBy: (() { final guardedValue = map['modifiedBy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      secureWebGateway: (() { final guardedValue = map['secureWebGateway']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      servers: (() { final guardedValue = map['servers']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ZeroTrustAccessAiControlsMcpPortalServer>(guardedValue, (value) => ZeroTrustAccessAiControlsMcpPortalServer.fromMap((value as Map).cast<String, dynamic>()))); })(),
      zeroTrustAccessAiControlsMcpPortalId: (() { final guardedValue = map['zeroTrustAccessAiControlsMcpPortalId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
