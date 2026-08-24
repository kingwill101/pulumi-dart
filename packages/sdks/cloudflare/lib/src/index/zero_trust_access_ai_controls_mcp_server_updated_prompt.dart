// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ZeroTrustAccessAiControlsMcpServerUpdatedPrompt {
  final pulumi.Input<String?>? alias;
  final pulumi.Input<String?>? description;
  final pulumi.Input<bool?>? enabled;
  final pulumi.Input<String> name;

  /// Creates a new [ZeroTrustAccessAiControlsMcpServerUpdatedPrompt].
  /// [alias] Optional.
  /// [description] Optional.
  /// [enabled] Optional.
  /// [name] Required.
  const ZeroTrustAccessAiControlsMcpServerUpdatedPrompt({
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

  factory ZeroTrustAccessAiControlsMcpServerUpdatedPrompt.fromMap(Map<String, dynamic> map) {
    return ZeroTrustAccessAiControlsMcpServerUpdatedPrompt(
      alias: (() { final guardedValue = map['alias']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      enabled: (() { final guardedValue = map['enabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      name: pulumi.Input.fromValue(map['name'] as String),
    );
  }
}
