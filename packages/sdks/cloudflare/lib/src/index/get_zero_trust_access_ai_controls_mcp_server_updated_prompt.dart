// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetZeroTrustAccessAiControlsMcpServerUpdatedPrompt {
  final pulumi.Input<String> alias;
  final pulumi.Input<String> description;
  final pulumi.Input<bool> enabled;
  final pulumi.Input<String> name;

  /// Creates a new [GetZeroTrustAccessAiControlsMcpServerUpdatedPrompt].
  /// [alias] Required.
  /// [description] Required.
  /// [enabled] Required.
  /// [name] Required.
  const GetZeroTrustAccessAiControlsMcpServerUpdatedPrompt({
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

  factory GetZeroTrustAccessAiControlsMcpServerUpdatedPrompt.fromMap(Map<String, dynamic> map) {
    return GetZeroTrustAccessAiControlsMcpServerUpdatedPrompt(
      alias: pulumi.Input.fromValue(map['alias'] as String),
      description: pulumi.Input.fromValue(map['description'] as String),
      enabled: pulumi.Input.fromValue(map['enabled'] as bool),
      name: pulumi.Input.fromValue(map['name'] as String),
    );
  }
}
