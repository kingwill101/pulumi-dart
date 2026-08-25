// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class PreventionDeidentifyTemplateDeidentifyConfigRecordTransformationsFieldTransformationConditionExpressionsConditionsConditionField {
  /// Name describing the field.
  final pulumi.Input<String?>? name;

  /// Creates a new [PreventionDeidentifyTemplateDeidentifyConfigRecordTransformationsFieldTransformationConditionExpressionsConditionsConditionField].
  /// [name] Name describing the field.
  const PreventionDeidentifyTemplateDeidentifyConfigRecordTransformationsFieldTransformationConditionExpressionsConditionsConditionField({
    this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': ?name,
    };
  }

  factory PreventionDeidentifyTemplateDeidentifyConfigRecordTransformationsFieldTransformationConditionExpressionsConditionsConditionField.fromMap(Map<String, dynamic> map) {
    return PreventionDeidentifyTemplateDeidentifyConfigRecordTransformationsFieldTransformationConditionExpressionsConditionsConditionField(
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
