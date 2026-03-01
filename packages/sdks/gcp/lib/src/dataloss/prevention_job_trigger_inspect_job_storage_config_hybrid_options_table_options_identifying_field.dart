// ignore_for_file: unused_element, unnecessary_cast


class PreventionJobTriggerInspectJobStorageConfigHybridOptionsTableOptionsIdentifyingField {
  /// Name describing the field.
  final String name;

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
      name: map['name'] as String,
    );
  }
}

