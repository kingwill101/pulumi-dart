// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class PluginConfigTemplateAdditionalConfigTemplateMultiSelectOption {
  /// Description of the option.
  final pulumi.Input<String?>? description;
  /// Display name of the option.
  final pulumi.Input<String> displayName;
  /// Id of the option.
  final pulumi.Input<String> id;

  /// Creates a new [PluginConfigTemplateAdditionalConfigTemplateMultiSelectOption].
  /// [description] Description of the option.
  /// [displayName] Display name of the option.
  /// [id] Id of the option.
  const PluginConfigTemplateAdditionalConfigTemplateMultiSelectOption({
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

  factory PluginConfigTemplateAdditionalConfigTemplateMultiSelectOption.fromMap(Map<String, dynamic> map) {
    return PluginConfigTemplateAdditionalConfigTemplateMultiSelectOption(
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      displayName: pulumi.Input.fromValue(map['displayName'] as String),
      id: pulumi.Input.fromValue(map['id'] as String),
    );
  }
}
