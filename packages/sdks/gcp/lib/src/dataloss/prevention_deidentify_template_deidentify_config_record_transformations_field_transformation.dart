// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'prevention_deidentify_template_deidentify_config_record_transformations_field_transformation_condition.dart';
import 'prevention_deidentify_template_deidentify_config_record_transformations_field_transformation_field.dart';
import 'prevention_deidentify_template_deidentify_config_record_transformations_field_transformation_info_type_transformations.dart';
import 'prevention_deidentify_template_deidentify_config_record_transformations_field_transformation_primitive_transformation.dart';

class PreventionDeidentifyTemplateDeidentifyConfigRecordTransformationsFieldTransformation {
  /// Only apply the transformation if the condition evaluates to true for the given RecordCondition. The conditions are allowed to reference fields that are not used in the actual transformation.
  /// Example Use Cases:
  /// - Apply a different bucket transformation to an age column if the zip code column for the same record is within a specific range.
  /// - Redact a field if the date of birth field is greater than 85.
  /// Structure is documented below.
  final pulumi.Input<PreventionDeidentifyTemplateDeidentifyConfigRecordTransformationsFieldTransformationCondition>? condition;
  /// Input field(s) to apply the transformation to. When you have columns that reference their position within a list, omit the index from the FieldId.
  /// FieldId name matching ignores the index. For example, instead of "contact.nums[0].type", use "contact.nums.type".
  /// Structure is documented below.
  final pulumi.Input<List<PreventionDeidentifyTemplateDeidentifyConfigRecordTransformationsFieldTransformationField>> fields;
  /// Treat the contents of the field as free text, and selectively transform content that matches an InfoType.
  /// Only one of `primitiveTransformation` or `infoTypeTransformations` must be specified.
  /// Structure is documented below.
  final pulumi.Input<PreventionDeidentifyTemplateDeidentifyConfigRecordTransformationsFieldTransformationInfoTypeTransformations>? infoTypeTransformations;
  /// Apply the transformation to the entire field.
  /// The `primitiveTransformation` block must only contain one argument, corresponding to the type of transformation.
  /// Only one of `primitiveTransformation` or `infoTypeTransformations` must be specified.
  /// Structure is documented below.
  final pulumi.Input<PreventionDeidentifyTemplateDeidentifyConfigRecordTransformationsFieldTransformationPrimitiveTransformation>? primitiveTransformation;

  /// Creates a new [PreventionDeidentifyTemplateDeidentifyConfigRecordTransformationsFieldTransformation].
  /// [condition] Only apply the transformation if the condition evaluates to true for the given RecordCondition. The conditions are allowed to reference fields that are not used in the actual transformation.
  /// [fields] Input field(s) to apply the transformation to. When you have columns that reference their position within a list, omit the index from the FieldId.
  /// [infoTypeTransformations] Treat the contents of the field as free text, and selectively transform content that matches an InfoType.
  /// [primitiveTransformation] Apply the transformation to the entire field.
  const PreventionDeidentifyTemplateDeidentifyConfigRecordTransformationsFieldTransformation({
    this.condition,
    required this.fields,
    this.infoTypeTransformations,
    this.primitiveTransformation,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'condition': ?pulumi.Input.mapOptionalInputValue<PreventionDeidentifyTemplateDeidentifyConfigRecordTransformationsFieldTransformationCondition, Map<String, dynamic>>(condition, (value) => value.toMap()),
      'fields': pulumi.Input.mapInputValue<List<PreventionDeidentifyTemplateDeidentifyConfigRecordTransformationsFieldTransformationField>, List<Map<String, dynamic>>>(fields, (value) => pulumi.Input.encodeList<PreventionDeidentifyTemplateDeidentifyConfigRecordTransformationsFieldTransformationField, Map<String, dynamic>>(value, (value) => value.toMap())),
      'infoTypeTransformations': ?pulumi.Input.mapOptionalInputValue<PreventionDeidentifyTemplateDeidentifyConfigRecordTransformationsFieldTransformationInfoTypeTransformations, Map<String, dynamic>>(infoTypeTransformations, (value) => value.toMap()),
      'primitiveTransformation': ?pulumi.Input.mapOptionalInputValue<PreventionDeidentifyTemplateDeidentifyConfigRecordTransformationsFieldTransformationPrimitiveTransformation, Map<String, dynamic>>(primitiveTransformation, (value) => value.toMap()),
    };
  }

  factory PreventionDeidentifyTemplateDeidentifyConfigRecordTransformationsFieldTransformation.fromMap(Map<String, dynamic> map) {
    return PreventionDeidentifyTemplateDeidentifyConfigRecordTransformationsFieldTransformation(
      condition: (() { final guardedValue = map['condition']; if (guardedValue == null) return null; return pulumi.Input.fromValue(PreventionDeidentifyTemplateDeidentifyConfigRecordTransformationsFieldTransformationCondition.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      fields: pulumi.Input.fromValue(pulumi.Input.decodeList<PreventionDeidentifyTemplateDeidentifyConfigRecordTransformationsFieldTransformationField>(map['fields']!, (value) => PreventionDeidentifyTemplateDeidentifyConfigRecordTransformationsFieldTransformationField.fromMap((value as Map).cast<String, dynamic>()))),
      infoTypeTransformations: (() { final guardedValue = map['infoTypeTransformations']; if (guardedValue == null) return null; return pulumi.Input.fromValue(PreventionDeidentifyTemplateDeidentifyConfigRecordTransformationsFieldTransformationInfoTypeTransformations.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      primitiveTransformation: (() { final guardedValue = map['primitiveTransformation']; if (guardedValue == null) return null; return pulumi.Input.fromValue(PreventionDeidentifyTemplateDeidentifyConfigRecordTransformationsFieldTransformationPrimitiveTransformation.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
