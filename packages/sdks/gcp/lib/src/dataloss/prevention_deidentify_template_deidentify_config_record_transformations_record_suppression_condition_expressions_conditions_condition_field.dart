// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class PreventionDeidentifyTemplateDeidentifyConfigRecordTransformationsRecordSuppressionConditionExpressionsConditionsConditionField {
  /// Name describing the field.
  final pulumi.Input<String?>? name;

  /// Creates a new [PreventionDeidentifyTemplateDeidentifyConfigRecordTransformationsRecordSuppressionConditionExpressionsConditionsConditionField].
  /// [name] Name describing the field.
  const PreventionDeidentifyTemplateDeidentifyConfigRecordTransformationsRecordSuppressionConditionExpressionsConditionsConditionField({
    this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': ?name,
    };
  }

  factory PreventionDeidentifyTemplateDeidentifyConfigRecordTransformationsRecordSuppressionConditionExpressionsConditionsConditionField.fromMap(Map<String, dynamic> map) {
    return PreventionDeidentifyTemplateDeidentifyConfigRecordTransformationsRecordSuppressionConditionExpressionsConditionsConditionField(
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
