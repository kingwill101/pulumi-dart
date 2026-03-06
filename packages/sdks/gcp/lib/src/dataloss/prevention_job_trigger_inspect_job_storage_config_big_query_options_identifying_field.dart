// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class PreventionJobTriggerInspectJobStorageConfigBigQueryOptionsIdentifyingField {
  /// Name describing the field.
  final pulumi.Input<String> name;

  /// Creates a new [PreventionJobTriggerInspectJobStorageConfigBigQueryOptionsIdentifyingField].
  /// [name] Name describing the field.
  const PreventionJobTriggerInspectJobStorageConfigBigQueryOptionsIdentifyingField({
    required this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
    };
  }

  factory PreventionJobTriggerInspectJobStorageConfigBigQueryOptionsIdentifyingField.fromMap(Map<String, dynamic> map) {
    return PreventionJobTriggerInspectJobStorageConfigBigQueryOptionsIdentifyingField(
      name: pulumi.Input.fromValue(map['name'] as String),
    );
  }
}

