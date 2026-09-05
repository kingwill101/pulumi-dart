// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetZeroTrustAccessAiControlsMcpServersResultUpdatedPrompt {
  /// Custom name exposed for the capability.
  final pulumi.Input<String> alias;
  /// Custom description exposed for the capability.
  final pulumi.Input<String> description;
  /// Whether the capability is available through the MCP server.
  final pulumi.Input<bool> enabled;
  /// Name of the tool or prompt capability to override.
  final pulumi.Input<String> name;

  /// Creates a new [GetZeroTrustAccessAiControlsMcpServersResultUpdatedPrompt].
  /// [alias] Custom name exposed for the capability.
  /// [description] Custom description exposed for the capability.
  /// [enabled] Whether the capability is available through the MCP server.
  /// [name] Name of the tool or prompt capability to override.
  const GetZeroTrustAccessAiControlsMcpServersResultUpdatedPrompt({
    required this.alias,
    required this.description,
    required this.enabled,
    required this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'alias': alias,
      'description': description,
      'enabled': enabled,
      'name': name,
    };
  }

  factory GetZeroTrustAccessAiControlsMcpServersResultUpdatedPrompt.fromMap(Map<String, dynamic> map) {
    return GetZeroTrustAccessAiControlsMcpServersResultUpdatedPrompt(
      alias: pulumi.Input.fromValue(map['alias'] as String),
      description: pulumi.Input.fromValue(map['description'] as String),
      enabled: pulumi.Input.fromValue(map['enabled'] as bool),
      name: pulumi.Input.fromValue(map['name'] as String),
    );
  }
}
