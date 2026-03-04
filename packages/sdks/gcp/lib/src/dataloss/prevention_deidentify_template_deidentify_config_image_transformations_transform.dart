// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'prevention_deidentify_template_deidentify_config_image_transformations_transform_redaction_color.dart';
import 'prevention_deidentify_template_deidentify_config_image_transformations_transform_selected_info_types.dart';

class PreventionDeidentifyTemplateDeidentifyConfigImageTransformationsTransform {
  /// Apply transformation to all findings not specified in other ImageTransformation's selectedInfoTypes.
  final pulumi.Input<Map<String, dynamic>>? allInfoTypes;

  /// Apply transformation to all text that doesn't match an infoType.
  final pulumi.Input<Map<String, dynamic>>? allText;

  /// The color to use when redacting content from an image. If not specified, the default is black.
  /// Structure is documented below.
  final pulumi.Input<
    PreventionDeidentifyTemplateDeidentifyConfigImageTransformationsTransformRedactionColor
  >?
  redactionColor;

  /// Apply transformation to the selected infoTypes.
  /// Structure is documented below.
  final pulumi.Input<
    PreventionDeidentifyTemplateDeidentifyConfigImageTransformationsTransformSelectedInfoTypes
  >?
  selectedInfoTypes;

  /// Creates a new [PreventionDeidentifyTemplateDeidentifyConfigImageTransformationsTransform].
  /// [allInfoTypes] Apply transformation to all findings not specified in other ImageTransformation's selectedInfoTypes.
  /// [allText] Apply transformation to all text that doesn't match an infoType.
  /// [redactionColor] The color to use when redacting content from an image. If not specified, the default is black.
  /// [selectedInfoTypes] Apply transformation to the selected infoTypes.
  PreventionDeidentifyTemplateDeidentifyConfigImageTransformationsTransform({
    this.allInfoTypes,
    this.allText,
    this.redactionColor,
    this.selectedInfoTypes,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allInfoTypes': ?allInfoTypes,
      'allText': ?allText,
      'redactionColor':
          ?pulumi.Input.mapOptionalInputValue<
            PreventionDeidentifyTemplateDeidentifyConfigImageTransformationsTransformRedactionColor,
            Map<String, dynamic>
          >(redactionColor, (value) => value.toMap()),
      'selectedInfoTypes':
          ?pulumi.Input.mapOptionalInputValue<
            PreventionDeidentifyTemplateDeidentifyConfigImageTransformationsTransformSelectedInfoTypes,
            Map<String, dynamic>
          >(selectedInfoTypes, (value) => value.toMap()),
    };
  }

  factory PreventionDeidentifyTemplateDeidentifyConfigImageTransformationsTransform.fromMap(
    Map<String, dynamic> map,
  ) {
    return PreventionDeidentifyTemplateDeidentifyConfigImageTransformationsTransform(
      allInfoTypes: (() {
        final guardedValue = map['allInfoTypes'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      })(),
      allText: (() {
        final guardedValue = map['allText'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      })(),
      redactionColor: (() {
        final guardedValue = map['redactionColor'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          PreventionDeidentifyTemplateDeidentifyConfigImageTransformationsTransformRedactionColor.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      selectedInfoTypes: (() {
        final guardedValue = map['selectedInfoTypes'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          PreventionDeidentifyTemplateDeidentifyConfigImageTransformationsTransformSelectedInfoTypes.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
    );
  }
}
