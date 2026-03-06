// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class PreventionJobTriggerInspectJobStorageConfigBigQueryOptionsIncludedField {
  /// Name describing the field to which scanning is limited.
  final pulumi.Input<String> name;

  /// Creates a new [PreventionJobTriggerInspectJobStorageConfigBigQueryOptionsIncludedField].
  /// [name] Name describing the field to which scanning is limited.
  const PreventionJobTriggerInspectJobStorageConfigBigQueryOptionsIncludedField({
    required this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
    };
  }

  factory PreventionJobTriggerInspectJobStorageConfigBigQueryOptionsIncludedField.fromMap(Map<String, dynamic> map) {
    return PreventionJobTriggerInspectJobStorageConfigBigQueryOptionsIncludedField(
      name: pulumi.Input.fromValue(map['name'] as String),
    );
  }
}

