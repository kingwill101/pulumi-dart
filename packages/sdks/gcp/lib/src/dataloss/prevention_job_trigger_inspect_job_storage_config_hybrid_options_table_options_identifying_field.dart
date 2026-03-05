// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class PreventionJobTriggerInspectJobStorageConfigHybridOptionsTableOptionsIdentifyingField {
  /// Name describing the field.
  final pulumi.Input<String> name;

  /// Creates a new [PreventionJobTriggerInspectJobStorageConfigHybridOptionsTableOptionsIdentifyingField].
  /// [name] Name describing the field.
  PreventionJobTriggerInspectJobStorageConfigHybridOptionsTableOptionsIdentifyingField({
    required this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
    };
  }

  factory PreventionJobTriggerInspectJobStorageConfigHybridOptionsTableOptionsIdentifyingField.fromMap(Map<String, dynamic> map) {
    return PreventionJobTriggerInspectJobStorageConfigHybridOptionsTableOptionsIdentifyingField(
      name: pulumi.Input.fromValue(map['name'] as String),
    );
  }
}

