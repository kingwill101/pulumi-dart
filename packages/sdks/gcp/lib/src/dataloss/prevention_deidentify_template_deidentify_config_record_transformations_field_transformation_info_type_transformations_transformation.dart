// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'prevention_deidentify_template_deidentify_config_record_transformations_field_transformation_info_type_transformations_transformation_info_type.dart';
import 'prevention_deidentify_template_deidentify_config_record_transformations_field_transformation_info_type_transformations_transformation_primitive_transformation.dart';

class PreventionDeidentifyTemplateDeidentifyConfigRecordTransformationsFieldTransformationInfoTypeTransformationsTransformation {
  /// InfoTypes to apply the transformation to. Leaving this empty will apply the transformation to apply to
  /// all findings that correspond to infoTypes that were requested in InspectConfig.
  /// Structure is documented below.
  final pulumi.Input<List<PreventionDeidentifyTemplateDeidentifyConfigRecordTransformationsFieldTransformationInfoTypeTransformationsTransformationInfoType>?>? infoTypes;
  /// Apply the transformation to the entire field.
  /// The `primitiveTransformation` block must only contain one argument, corresponding to the type of transformation.
  /// Structure is documented below.
  final pulumi.Input<PreventionDeidentifyTemplateDeidentifyConfigRecordTransformationsFieldTransformationInfoTypeTransformationsTransformationPrimitiveTransformation> primitiveTransformation;

  /// Creates a new [PreventionDeidentifyTemplateDeidentifyConfigRecordTransformationsFieldTransformationInfoTypeTransformationsTransformation].
  /// [infoTypes] InfoTypes to apply the transformation to. Leaving this empty will apply the transformation to apply to
  /// [primitiveTransformation] Apply the transformation to the entire field.
  const PreventionDeidentifyTemplateDeidentifyConfigRecordTransformationsFieldTransformationInfoTypeTransformationsTransformation({
    this.infoTypes,
    required this.primitiveTransformation,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'infoTypes': ?pulumi.Input.mapOptionalInputValue<List<PreventionDeidentifyTemplateDeidentifyConfigRecordTransformationsFieldTransformationInfoTypeTransformationsTransformationInfoType>, List<Map<String, dynamic>>>(infoTypes, (value) => pulumi.Input.encodeList<PreventionDeidentifyTemplateDeidentifyConfigRecordTransformationsFieldTransformationInfoTypeTransformationsTransformationInfoType, Map<String, dynamic>>(value, (value) => value.toMap())),
      'primitiveTransformation': pulumi.Input.mapInputValue<PreventionDeidentifyTemplateDeidentifyConfigRecordTransformationsFieldTransformationInfoTypeTransformationsTransformationPrimitiveTransformation, Map<String, dynamic>>(primitiveTransformation, (value) => value.toMap()),
    };
  }

  factory PreventionDeidentifyTemplateDeidentifyConfigRecordTransformationsFieldTransformationInfoTypeTransformationsTransformation.fromMap(Map<String, dynamic> map) {
    return PreventionDeidentifyTemplateDeidentifyConfigRecordTransformationsFieldTransformationInfoTypeTransformationsTransformation(
      infoTypes: (() { final guardedValue = map['infoTypes']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<PreventionDeidentifyTemplateDeidentifyConfigRecordTransformationsFieldTransformationInfoTypeTransformationsTransformationInfoType>(guardedValue, (value) => PreventionDeidentifyTemplateDeidentifyConfigRecordTransformationsFieldTransformationInfoTypeTransformationsTransformationInfoType.fromMap((value as Map).cast<String, dynamic>()))); })(),
      primitiveTransformation: pulumi.Input.fromValue(PreventionDeidentifyTemplateDeidentifyConfigRecordTransformationsFieldTransformationInfoTypeTransformationsTransformationPrimitiveTransformation.fromMap((map['primitiveTransformation']! as Map).cast<String, dynamic>())),
    );
  }
}
