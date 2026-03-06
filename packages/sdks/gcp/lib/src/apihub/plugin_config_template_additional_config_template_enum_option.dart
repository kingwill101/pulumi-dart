// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class PluginConfigTemplateAdditionalConfigTemplateEnumOption {
  /// Description of the option.
  final pulumi.Input<String>? description;
  /// Display name of the option.
  final pulumi.Input<String> displayName;
  /// Id of the option.
  final pulumi.Input<String> id;

  /// Creates a new [PluginConfigTemplateAdditionalConfigTemplateEnumOption].
  /// [description] Description of the option.
  /// [displayName] Display name of the option.
  /// [id] Id of the option.
  const PluginConfigTemplateAdditionalConfigTemplateEnumOption({
    this.description,
    required this.displayName,
    required this.id,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'displayName': displayName,
      'id': id,
    };
  }

  factory PluginConfigTemplateAdditionalConfigTemplateEnumOption.fromMap(Map<String, dynamic> map) {
    return PluginConfigTemplateAdditionalConfigTemplateEnumOption(
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      displayName: pulumi.Input.fromValue(map['displayName'] as String),
      id: pulumi.Input.fromValue(map['id'] as String),
    );
  }
}

