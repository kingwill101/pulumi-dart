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
  final PreventionDeidentifyTemplateDeidentifyConfigRecordTransformationsFieldTransformationCondition? condition;
  /// Input field(s) to apply the transformation to. When you have columns that reference their position within a list, omit the index from the FieldId.
  /// FieldId name matching ignores the index. For example, instead of "contact.nums[0].type", use "contact.nums.type".
  /// Structure is documented below.
  final List<PreventionDeidentifyTemplateDeidentifyConfigRecordTransformationsFieldTransformationField> fields;
  /// Treat the contents of the field as free text, and selectively transform content that matches an InfoType.
  /// Only one of `primitive_transformation` or `info_type_transformations` must be specified.
  /// Structure is documented below.
  final PreventionDeidentifyTemplateDeidentifyConfigRecordTransformationsFieldTransformationInfoTypeTransformations? infoTypeTransformations;
  /// Apply the transformation to the entire field.
  /// The `primitive_transformation` block must only contain one argument, corresponding to the type of transformation.
  /// Only one of `primitive_transformation` or `info_type_transformations` must be specified.
  /// Structure is documented below.
  final PreventionDeidentifyTemplateDeidentifyConfigRecordTransformationsFieldTransformationPrimitiveTransformation? primitiveTransformation;

  /// Creates a new [PreventionDeidentifyTemplateDeidentifyConfigRecordTransformationsFieldTransformation].
  /// [condition] Only apply the transformation if the condition evaluates to true for the given RecordCondition. The conditions are allowed to reference fields that are not used in the actual transformation.
  /// [fields] Input field(s) to apply the transformation to. When you have columns that reference their position within a list, omit the index from the FieldId.
  /// [infoTypeTransformations] Treat the contents of the field as free text, and selectively transform content that matches an InfoType.
  /// [primitiveTransformation] Apply the transformation to the entire field.
  PreventionDeidentifyTemplateDeidentifyConfigRecordTransformationsFieldTransformation({
    this.condition,
    required this.fields,
    this.infoTypeTransformations,
    this.primitiveTransformation,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'condition': ?condition == null ? null : condition!.toMap(),
      'fields': pulumi.Input.encodeList<PreventionDeidentifyTemplateDeidentifyConfigRecordTransformationsFieldTransformationField, Map<String, dynamic>>(fields, (value) => value.toMap()),
      'infoTypeTransformations': ?infoTypeTransformations == null ? null : infoTypeTransformations!.toMap(),
      'primitiveTransformation': ?primitiveTransformation == null ? null : primitiveTransformation!.toMap(),
    };
  }

  factory PreventionDeidentifyTemplateDeidentifyConfigRecordTransformationsFieldTransformation.fromMap(Map<String, dynamic> map) {
    return PreventionDeidentifyTemplateDeidentifyConfigRecordTransformationsFieldTransformation(
      condition: map['condition'] == null ? null : PreventionDeidentifyTemplateDeidentifyConfigRecordTransformationsFieldTransformationCondition.fromMap((map['condition'] as Map).cast<String, dynamic>()),
      fields: pulumi.Input.decodeList<PreventionDeidentifyTemplateDeidentifyConfigRecordTransformationsFieldTransformationField>(map['fields'], (value) => PreventionDeidentifyTemplateDeidentifyConfigRecordTransformationsFieldTransformationField.fromMap((value as Map).cast<String, dynamic>())),
      infoTypeTransformations: map['infoTypeTransformations'] == null ? null : PreventionDeidentifyTemplateDeidentifyConfigRecordTransformationsFieldTransformationInfoTypeTransformations.fromMap((map['infoTypeTransformations'] as Map).cast<String, dynamic>()),
      primitiveTransformation: map['primitiveTransformation'] == null ? null : PreventionDeidentifyTemplateDeidentifyConfigRecordTransformationsFieldTransformationPrimitiveTransformation.fromMap((map['primitiveTransformation'] as Map).cast<String, dynamic>()),
    );
  }
}

