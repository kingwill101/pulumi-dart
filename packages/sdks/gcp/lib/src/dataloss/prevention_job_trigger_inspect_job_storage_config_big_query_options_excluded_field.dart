// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class PreventionJobTriggerInspectJobStorageConfigBigQueryOptionsExcludedField {
  /// Name describing the field excluded from scanning.
  final pulumi.Input<String> name;

  /// Creates a new [PreventionJobTriggerInspectJobStorageConfigBigQueryOptionsExcludedField].
  /// [name] Name describing the field excluded from scanning.
  PreventionJobTriggerInspectJobStorageConfigBigQueryOptionsExcludedField({
    required this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'name': name};
  }

  factory PreventionJobTriggerInspectJobStorageConfigBigQueryOptionsExcludedField.fromMap(
    Map<String, dynamic> map,
  ) {
    return PreventionJobTriggerInspectJobStorageConfigBigQueryOptionsExcludedField(
      name: pulumi.Input.fromValue(map['name'] as String),
    );
  }
}
