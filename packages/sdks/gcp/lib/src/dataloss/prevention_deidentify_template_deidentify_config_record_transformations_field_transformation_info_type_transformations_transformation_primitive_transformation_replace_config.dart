// ignore_for_file: unused_element, unnecessary_cast

import 'prevention_deidentify_template_deidentify_config_record_transformations_field_transformation_info_type_transformations_transformation_primitive_transformation_replace_config_new_value.dart';

class PreventionDeidentifyTemplateDeidentifyConfigRecordTransformationsFieldTransformationInfoTypeTransformationsTransformationPrimitiveTransformationReplaceConfig {
  /// Replace each input value with a given value.
  /// The `new_value` block must only contain one argument. For example when replacing the contents of a string-type field, only `string_value` should be set.
  /// Structure is documented below.
  final PreventionDeidentifyTemplateDeidentifyConfigRecordTransformationsFieldTransformationInfoTypeTransformationsTransformationPrimitiveTransformationReplaceConfigNewValue newValue;

  /// Creates a new [PreventionDeidentifyTemplateDeidentifyConfigRecordTransformationsFieldTransformationInfoTypeTransformationsTransformationPrimitiveTransformationReplaceConfig].
  /// [newValue] Replace each input value with a given value.
  PreventionDeidentifyTemplateDeidentifyConfigRecordTransformationsFieldTransformationInfoTypeTransformationsTransformationPrimitiveTransformationReplaceConfig({
    required this.newValue,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'newValue': newValue.toMap(),
    };
  }

  factory PreventionDeidentifyTemplateDeidentifyConfigRecordTransformationsFieldTransformationInfoTypeTransformationsTransformationPrimitiveTransformationReplaceConfig.fromMap(Map<String, dynamic> map) {
    return PreventionDeidentifyTemplateDeidentifyConfigRecordTransformationsFieldTransformationInfoTypeTransformationsTransformationPrimitiveTransformationReplaceConfig(
      newValue: PreventionDeidentifyTemplateDeidentifyConfigRecordTransformationsFieldTransformationInfoTypeTransformationsTransformationPrimitiveTransformationReplaceConfigNewValue.fromMap((map['newValue'] as Map).cast<String, dynamic>()),
    );
  }
}

