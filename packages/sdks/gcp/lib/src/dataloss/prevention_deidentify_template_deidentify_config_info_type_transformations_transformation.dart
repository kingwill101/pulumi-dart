// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'prevention_deidentify_template_deidentify_config_info_type_transformations_transformation_info_type.dart';
import 'prevention_deidentify_template_deidentify_config_info_type_transformations_transformation_primitive_transformation.dart';

class PreventionDeidentifyTemplateDeidentifyConfigInfoTypeTransformationsTransformation {
  /// InfoTypes to apply the transformation to. Leaving this empty will apply the transformation to apply to
  /// all findings that correspond to infoTypes that were requested in InspectConfig.
  /// Structure is documented below.
  final pulumi.Input<
    List<
      PreventionDeidentifyTemplateDeidentifyConfigInfoTypeTransformationsTransformationInfoType
    >
  >?
  infoTypes;

  /// Apply the transformation to the entire field.
  /// The `primitive_transformation` block must only contain one argument, corresponding to the type of transformation.
  /// Structure is documented below.
  final pulumi.Input<
    PreventionDeidentifyTemplateDeidentifyConfigInfoTypeTransformationsTransformationPrimitiveTransformation
  >
  primitiveTransformation;

  /// Creates a new [PreventionDeidentifyTemplateDeidentifyConfigInfoTypeTransformationsTransformation].
  /// [infoTypes] InfoTypes to apply the transformation to. Leaving this empty will apply the transformation to apply to
  /// [primitiveTransformation] Apply the transformation to the entire field.
  PreventionDeidentifyTemplateDeidentifyConfigInfoTypeTransformationsTransformation({
    this.infoTypes,
    required this.primitiveTransformation,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'infoTypes':
          ?pulumi.Input.mapOptionalInputValue<
            List<
              PreventionDeidentifyTemplateDeidentifyConfigInfoTypeTransformationsTransformationInfoType
            >,
            List<Map<String, dynamic>>
          >(
            infoTypes,
            (value) =>
                pulumi.Input.encodeList<
                  PreventionDeidentifyTemplateDeidentifyConfigInfoTypeTransformationsTransformationInfoType,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'primitiveTransformation':
          pulumi.Input.mapInputValue<
            PreventionDeidentifyTemplateDeidentifyConfigInfoTypeTransformationsTransformationPrimitiveTransformation,
            Map<String, dynamic>
          >(primitiveTransformation, (value) => value.toMap()),
    };
  }

  factory PreventionDeidentifyTemplateDeidentifyConfigInfoTypeTransformationsTransformation.fromMap(
    Map<String, dynamic> map,
  ) {
    return PreventionDeidentifyTemplateDeidentifyConfigInfoTypeTransformationsTransformation(
      infoTypes: (() {
        final guardedValue = map['infoTypes'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<
            PreventionDeidentifyTemplateDeidentifyConfigInfoTypeTransformationsTransformationInfoType
          >(
            guardedValue,
            (value) =>
                PreventionDeidentifyTemplateDeidentifyConfigInfoTypeTransformationsTransformationInfoType.fromMap(
                  (value as Map).cast<String, dynamic>(),
                ),
          ),
        );
      })(),
      primitiveTransformation: pulumi.Input.fromValue(
        PreventionDeidentifyTemplateDeidentifyConfigInfoTypeTransformationsTransformationPrimitiveTransformation.fromMap(
          (map['primitiveTransformation']! as Map).cast<String, dynamic>(),
        ),
      ),
    );
  }
}
