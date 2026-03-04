// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'prevention_deidentify_template_deidentify_config_image_transformations.dart';
import 'prevention_deidentify_template_deidentify_config_info_type_transformations.dart';
import 'prevention_deidentify_template_deidentify_config_record_transformations.dart';

class PreventionDeidentifyTemplateDeidentifyConfig {
  /// Treat the dataset as an image and redact.
  /// Structure is documented below.
  final pulumi.Input<
    PreventionDeidentifyTemplateDeidentifyConfigImageTransformations
  >?
  imageTransformations;

  /// Treat the dataset as free-form text and apply the same free text transformation everywhere
  /// Structure is documented below.
  final pulumi.Input<
    PreventionDeidentifyTemplateDeidentifyConfigInfoTypeTransformations
  >?
  infoTypeTransformations;

  /// Treat the dataset as structured. Transformations can be applied to specific locations within structured datasets, such as transforming a column within a table.
  /// Structure is documented below.
  final pulumi.Input<
    PreventionDeidentifyTemplateDeidentifyConfigRecordTransformations
  >?
  recordTransformations;

  /// Creates a new [PreventionDeidentifyTemplateDeidentifyConfig].
  /// [imageTransformations] Treat the dataset as an image and redact.
  /// [infoTypeTransformations] Treat the dataset as free-form text and apply the same free text transformation everywhere
  /// [recordTransformations] Treat the dataset as structured. Transformations can be applied to specific locations within structured datasets, such as transforming a column within a table.
  PreventionDeidentifyTemplateDeidentifyConfig({
    this.imageTransformations,
    this.infoTypeTransformations,
    this.recordTransformations,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'imageTransformations':
          ?pulumi.Input.mapOptionalInputValue<
            PreventionDeidentifyTemplateDeidentifyConfigImageTransformations,
            Map<String, dynamic>
          >(imageTransformations, (value) => value.toMap()),
      'infoTypeTransformations':
          ?pulumi.Input.mapOptionalInputValue<
            PreventionDeidentifyTemplateDeidentifyConfigInfoTypeTransformations,
            Map<String, dynamic>
          >(infoTypeTransformations, (value) => value.toMap()),
      'recordTransformations':
          ?pulumi.Input.mapOptionalInputValue<
            PreventionDeidentifyTemplateDeidentifyConfigRecordTransformations,
            Map<String, dynamic>
          >(recordTransformations, (value) => value.toMap()),
    };
  }

  factory PreventionDeidentifyTemplateDeidentifyConfig.fromMap(
    Map<String, dynamic> map,
  ) {
    return PreventionDeidentifyTemplateDeidentifyConfig(
      imageTransformations: (() {
        final guardedValue = map['imageTransformations'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          PreventionDeidentifyTemplateDeidentifyConfigImageTransformations.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      infoTypeTransformations: (() {
        final guardedValue = map['infoTypeTransformations'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          PreventionDeidentifyTemplateDeidentifyConfigInfoTypeTransformations.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      recordTransformations: (() {
        final guardedValue = map['recordTransformations'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          PreventionDeidentifyTemplateDeidentifyConfigRecordTransformations.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
    );
  }
}
