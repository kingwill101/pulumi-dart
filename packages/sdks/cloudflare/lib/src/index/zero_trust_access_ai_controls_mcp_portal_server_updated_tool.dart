// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ZeroTrustAccessAiControlsMcpPortalServerUpdatedTool {
  /// Custom name exposed for the capability.
  final pulumi.Input<String?>? alias;
  /// Custom description exposed for the capability.
  final pulumi.Input<String?>? description;
  /// Whether the capability is available through the MCP server.
  final pulumi.Input<bool?>? enabled;
  /// Name of the tool or prompt capability to override.
  final pulumi.Input<String> name;

  /// Creates a new [ZeroTrustAccessAiControlsMcpPortalServerUpdatedTool].
  /// [alias] Custom name exposed for the capability.
  /// [description] Custom description exposed for the capability.
  /// [enabled] Whether the capability is available through the MCP server.
  /// [name] Name of the tool or prompt capability to override.
  const ZeroTrustAccessAiControlsMcpPortalServerUpdatedTool({
    this.alias,
    this.description,
    this.enabled,
    required this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'alias': ?alias,
      'description': ?description,
      'enabled': ?enabled,
      'name': name,
    };
  }

  factory ZeroTrustAccessAiControlsMcpPortalServerUpdatedTool.fromMap(Map<String, dynamic> map) {
    return ZeroTrustAccessAiControlsMcpPortalServerUpdatedTool(
      alias: (() { final guardedValue = map['alias']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      enabled: (() { final guardedValue = map['enabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      name: pulumi.Input.fromValue(map['name'] as String),
    );
  }
}
