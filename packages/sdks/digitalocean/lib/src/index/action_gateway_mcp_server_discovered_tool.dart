// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ActionGatewayMcpServerDiscoveredTool {
  /// The description shown on the server's catalog card, at most 1024 characters.
  final pulumi.Input<String?>? description;
  /// Whether the tool is enabled.
  final pulumi.Input<bool?>? enabled;
  /// The tool's name on the server.
  final pulumi.Input<String?>? name;
  /// Why the tool is quarantined.
  final pulumi.Input<String?>? quarantineReason;
  /// Whether the tool is quarantined.
  final pulumi.Input<bool?>? quarantined;
  /// The tool's catalog slug, used in `enabledTools`.
  final pulumi.Input<String?>? toolSlug;

  /// Creates a new [ActionGatewayMcpServerDiscoveredTool].
  /// [description] The description shown on the server's catalog card, at most 1024 characters.
  /// [enabled] Whether the tool is enabled.
  /// [name] The tool's name on the server.
  /// [quarantineReason] Why the tool is quarantined.
  /// [quarantined] Whether the tool is quarantined.
  /// [toolSlug] The tool's catalog slug, used in `enabledTools`.
  const ActionGatewayMcpServerDiscoveredTool({
    this.description,
    this.enabled,
    this.name,
    this.quarantineReason,
    this.quarantined,
    this.toolSlug,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'enabled': ?enabled,
      'name': ?name,
      'quarantineReason': ?quarantineReason,
      'quarantined': ?quarantined,
      'toolSlug': ?toolSlug,
    };
  }

  factory ActionGatewayMcpServerDiscoveredTool.fromMap(Map<String, dynamic> map) {
    return ActionGatewayMcpServerDiscoveredTool(
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      enabled: (() { final guardedValue = map['enabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      quarantineReason: (() { final guardedValue = map['quarantineReason']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      quarantined: (() { final guardedValue = map['quarantined']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      toolSlug: (() { final guardedValue = map['toolSlug']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
