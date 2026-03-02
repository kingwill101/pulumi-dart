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
  PluginConfigTemplateAdditionalConfigTemplateEnumOption({
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
      description: map['description'] == null ? null : (map['description']! as String).input(),
      displayName: (map['displayName'] as String).input(),
      id: (map['id'] as String).input(),
    );
  }
}

