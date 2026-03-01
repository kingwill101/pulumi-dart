// ignore_for_file: unused_element, unnecessary_cast


class PreventionDeidentifyTemplateDeidentifyConfigRecordTransformationsFieldTransformationConditionExpressionsConditionsConditionField {
  /// Name describing the field.
  final String? name;

  /// Creates a new [PreventionDeidentifyTemplateDeidentifyConfigRecordTransformationsFieldTransformationConditionExpressionsConditionsConditionField].
  /// [name] Name describing the field.
  PreventionDeidentifyTemplateDeidentifyConfigRecordTransformationsFieldTransformationConditionExpressionsConditionsConditionField({
    this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': ?name,
    };
  }

  factory PreventionDeidentifyTemplateDeidentifyConfigRecordTransformationsFieldTransformationConditionExpressionsConditionsConditionField.fromMap(Map<String, dynamic> map) {
    return PreventionDeidentifyTemplateDeidentifyConfigRecordTransformationsFieldTransformationConditionExpressionsConditionsConditionField(
      name: map['name'] == null ? null : map['name'] as String,
    );
  }
}

