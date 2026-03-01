// ignore_for_file: unused_element, unnecessary_cast


class PreventionDeidentifyTemplateDeidentifyConfigRecordTransformationsRecordSuppressionConditionExpressionsConditionsConditionField {
  /// Name describing the field.
  final String? name;

  /// Creates a new [PreventionDeidentifyTemplateDeidentifyConfigRecordTransformationsRecordSuppressionConditionExpressionsConditionsConditionField].
  /// [name] Name describing the field.
  PreventionDeidentifyTemplateDeidentifyConfigRecordTransformationsRecordSuppressionConditionExpressionsConditionsConditionField({
    this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': ?name,
    };
  }

  factory PreventionDeidentifyTemplateDeidentifyConfigRecordTransformationsRecordSuppressionConditionExpressionsConditionsConditionField.fromMap(Map<String, dynamic> map) {
    return PreventionDeidentifyTemplateDeidentifyConfigRecordTransformationsRecordSuppressionConditionExpressionsConditionsConditionField(
      name: map['name'] == null ? null : map['name'] as String,
    );
  }
}

